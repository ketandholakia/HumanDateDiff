unit HumanDateDiff.Lang;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  System.Generics.Defaults,
  HumanDateDiff.Types;

type
  TLang = class
  private
    FUnitText: TDictionary<THumanTimeUnit, TDictionary<TPluralForm, string>>;
    FPluralRule: TPluralRule;
    FBefore: string;
    FAfter: string;
    FNow: string;
    FYesterday: string;
    FTomorrow: string;
    FLastWeek: string;
    FNextWeek: string;
    FLastMonth: string;
    FNextMonth: string;
    FLastYear: string;
    FNextYear: string;
  public
    constructor Create;
    destructor Destroy; override;

    function UnitText(AUnit: THumanTimeUnit; AValue: Integer): string;

    property Before: string read FBefore write FBefore;
    property After: string read FAfter write FAfter;
    property NowText: string read FNow write FNow;
    property Yesterday: string read FYesterday write FYesterday;
    property Tomorrow: string read FTomorrow write FTomorrow;
    property LastWeek: string read FLastWeek write FLastWeek;
    property NextWeek: string read FNextWeek write FNextWeek;
    property LastMonth: string read FLastMonth write FLastMonth;
    property NextMonth: string read FNextMonth write FNextMonth;
    property LastYear: string read FLastYear write FLastYear;
    property NextYear: string read FNextYear write FNextYear;
    property PluralRule: TPluralRule read FPluralRule write FPluralRule;
    property UnitTexts: TDictionary<THumanTimeUnit, TDictionary<TPluralForm, string>> read FUnitText write FUnitText;
  end;

implementation

constructor TLang.Create;
var
  LUnit: THumanTimeUnit;
begin
  FUnitText := TObjectDictionary<THumanTimeUnit, TDictionary<TPluralForm, string>>.Create([doOwnsValues]);
  for LUnit in THumanTimeUnit do
    FUnitText.Add(LUnit, TDictionary<TPluralForm, string>.Create);
end;

destructor TLang.Destroy;
begin
  FUnitText.Free;
  inherited;
end;

function TLang.UnitText(AUnit: THumanTimeUnit; AValue: Integer): string;
var
  Form: TPluralForm;
begin
  if Assigned(FPluralRule) then
    Form := FPluralRule(AValue)
  else
    Form := pfOther;

  if FUnitText[AUnit].ContainsKey(Form) then
    Result := FUnitText[AUnit][Form]
  else
    Result := FUnitText[AUnit][pfOther];
end;

end.
