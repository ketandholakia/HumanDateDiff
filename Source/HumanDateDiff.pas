unit HumanDateDiff;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  System.Math,
  DateUtils,
  HumanDateDiff.Types,
  HumanDateDiff.Lang;

var
  DefaultLang: TLang;
  DefaultPrintAfterBefore: Boolean = True;

type
  ['{BC58395B-419C-4282-BA12-17A68BEF0822}']
  IHumanDateDiff = interface
    function Lang(ALang: TLang): IHumanDateDiff;
    function PrintAfterBefore(AValue: Boolean): IHumanDateDiff;
    function MaxUnits(AValue: Integer): IHumanDateDiff;
    function Diff(FromDate, ToDate: TDateTime): string;
  end;

  THumanDateDiff = class(TInterfacedObject, IHumanDateDiff)
  private
    FLang: TLang;
    FPrintAB: Boolean;
    FMaxUnits: Integer;
    FThresholds: THumanThresholds;
    procedure AddPart(var ASeconds: Int64; AUnitSeconds: Int64; AUnit: THumanTimeUnit; var AList: TArray<THumanDiffPart>);
    function BuildCompositeDiff(FromDate, ToDate: TDateTime): string;
    function DaysDiff(AFrom, ATo: TDateTime): Integer;
    function IsWithinWeekThreshold(Days: Integer): Boolean;
    function IsWithinMonthThreshold(Days: Integer): Boolean;
    function IsWithinYearThreshold(Days: Integer): Boolean;
  public
    class function New: IHumanDateDiff;
    function Lang(ALang: TLang): IHumanDateDiff;
    function PrintAfterBefore(AValue: Boolean): IHumanDateDiff;
    function MaxUnits(AValue: Integer): IHumanDateDiff;
    function Diff(FromDate, ToDate: TDateTime): string;
  end;

function IsYesterday(AFrom, ATo: TDateTime): Boolean;

function IsTomorrow(AFrom, ATo: TDateTime): Boolean;

implementation

function IsYesterday(AFrom, ATo: TDateTime): Boolean;
begin
  Result :=
    (Trunc(AFrom) = Trunc(ATo - 1)) and
    (Trunc(ATo) <> Trunc(AFrom));
end;

function IsTomorrow(AFrom, ATo: TDateTime): Boolean;
begin
  Result :=
    (Trunc(AFrom) = Trunc(ATo + 1)) and
    (Trunc(ATo) <> Trunc(AFrom));
end;

const
  SEC_MINUTE = 60;
  SEC_HOUR   = 60 * SEC_MINUTE;
  SEC_DAY    = 24 * SEC_HOUR;
  SEC_WEEK   = 7 * SEC_DAY;
  SEC_MONTH  = 30 * SEC_DAY;
  SEC_YEAR   = 365 * SEC_DAY;

{ THumanDateDiff }

class function THumanDateDiff.New: IHumanDateDiff;
var
  Obj: THumanDateDiff;
begin
  Obj := THumanDateDiff.Create;
  Obj.FLang := DefaultLang;
  Obj.FPrintAB := DefaultPrintAfterBefore;
  Obj.FMaxUnits := 2; // DEFAULT
  Obj.FThresholds := THumanThresholds.Default;
  Result := Obj;
end;

function THumanDateDiff.Lang(ALang: TLang): IHumanDateDiff;
begin
  FLang := ALang;
  Result := Self;
end;

function THumanDateDiff.PrintAfterBefore(AValue: Boolean): IHumanDateDiff;
begin
  FPrintAB := AValue;
  Result := Self;
end;

function THumanDateDiff.MaxUnits(AValue: Integer): IHumanDateDiff;
begin
  FMaxUnits := Max(1, AValue);
  Result := Self;
end;

procedure THumanDateDiff.AddPart(var ASeconds: Int64; AUnitSeconds: Int64;
  AUnit: THumanTimeUnit; var AList: TArray<THumanDiffPart>);
var
  Count: Integer;
begin
  Count := ASeconds div AUnitSeconds;
  if Count <= 0 then
    Exit;

  ASeconds := ASeconds mod AUnitSeconds;
  AList := AList + [THumanDiffPart.Create(AUnit, Count)];
end;

function THumanDateDiff.DaysDiff(AFrom, ATo: TDateTime): Integer;
begin
  Result := Abs(DaysBetween(AFrom, ATo));
end;

function THumanDateDiff.IsWithinWeekThreshold(Days: Integer): Boolean;
begin
  Result := (Days >= FThresholds.WeekStartDays) and (Days <= 13);
end;

function THumanDateDiff.IsWithinMonthThreshold(Days: Integer): Boolean;
begin
  Result := (Days >= FThresholds.MonthStartDays) and (Days <= 45);
end;

function THumanDateDiff.IsWithinYearThreshold(Days: Integer): Boolean;
begin
  Result := (Days >= FThresholds.YearStartDays) and (Days <= 545);
end;

function THumanDateDiff.Diff(FromDate, ToDate: TDateTime): string;
var
  Days: Integer;
begin
  Days := DaysDiff(FromDate, ToDate);

  { NOW }
  if Abs(SecondsBetween(FromDate, ToDate)) < 5 then
    Exit(FLang.NowText);

  { DAY }
  if IsYesterday(FromDate, ToDate) then
    Exit(FLang.Yesterday);

  if IsTomorrow(FromDate, ToDate) then
    Exit(FLang.Tomorrow);

  { SMART WEEK }
  if IsWithinWeekThreshold(Days) then
  begin
    if FromDate < ToDate then
      Exit(FLang.LastWeek)
    else
      Exit(FLang.NextWeek);
  end;

  { SMART MONTH }
  if IsWithinMonthThreshold(Days) then
  begin
    if FromDate < ToDate then
      Exit(FLang.LastMonth)
    else
      Exit(FLang.NextMonth);
  end;

  { SMART YEAR }
  if IsWithinYearThreshold(Days) then
  begin
    if FromDate < ToDate then
      Exit(FLang.LastYear)
    else
      Exit(FLang.NextYear);
  end;

  { FALLBACK }
  Result := BuildCompositeDiff(FromDate, ToDate);
end;

function THumanDateDiff.BuildCompositeDiff(FromDate, ToDate: TDateTime): string;
var
  Seconds: Int64;
  Parts: TArray<THumanDiffPart>;
  IsPast: Boolean;
  I: Integer;
begin
  Seconds := Abs(SecondsBetween(FromDate, ToDate));
  IsPast := FromDate < ToDate;

  Parts := [];

  AddPart(Seconds, SEC_YEAR,   htuYear,   Parts);
  AddPart(Seconds, SEC_MONTH,  htuMonth,  Parts);
  AddPart(Seconds, SEC_WEEK,   htuWeek,   Parts);
  AddPart(Seconds, SEC_DAY,    htuDay,    Parts);
  AddPart(Seconds, SEC_HOUR,   htuHour,   Parts);
  AddPart(Seconds, SEC_MINUTE, htuMinute, Parts);
  AddPart(Seconds, 1,          htuSecond, Parts);

  SetLength(Parts, Min(Length(Parts), FMaxUnits));

  Result := '';
  for I := 0 to High(Parts) do
  begin
    if I > 0 then
      Result := Result + ', ';

    Result := Result + Format('%d %s', [
      Parts[I].Value,
      FLang.UnitText(Parts[I].UnitType, Parts[I].Value)
    ]);
  end;

  if FPrintAB then
  begin
    if IsPast then
      Result := Result + FLang.Before
    else
      Result := Result + FLang.After;
  end;
end;


end.