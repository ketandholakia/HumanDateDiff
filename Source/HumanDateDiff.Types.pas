unit HumanDateDiff.Types;

interface

type
  THumanTimeUnit = (
    htuYear,
    htuMonth,
    htuWeek,
    htuDay,
    htuHour,
    htuMinute,
    htuSecond
  );

  TPluralForm = (pfZero, pfOne, pfOther);

  TPluralRule = reference to function(AValue: Integer): TPluralForm;

  THumanDiffPart = record
    UnitType: THumanTimeUnit;
    Value: Integer;
    constructor Create(AUnit: THumanTimeUnit; AValue: Integer);
  end;

  THumanThresholds = record
    WeekStartDays: Integer;   // default 7
    MonthStartDays: Integer;  // default 28
    YearStartDays: Integer;   // default 331
    class function Default: THumanThresholds; static;
  end;

implementation

{ THumanDiffPart }

constructor THumanDiffPart.Create(AUnit: THumanTimeUnit; AValue: Integer);
begin
  UnitType := AUnit;
  Value := AValue;
end;

{ THumanThresholds }

class function THumanThresholds.Default: THumanThresholds;
begin
  Result.WeekStartDays  := 7;
  Result.MonthStartDays := 28;
  Result.YearStartDays  := 331;
end;

end.