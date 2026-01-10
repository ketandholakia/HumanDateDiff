unit HumanDateDiff.Lang.EN;

interface

uses HumanDateDiff.Lang, HumanDateDiff.Types;

function LangEN: TLang;

implementation

function EnglishPlural(AValue: Integer): TPluralForm;
begin
  if AValue = 1 then
    Result := pfOne
  else
    Result := pfOther;
end;

function LangEN: TLang;
begin
  Result := TLang.Create;

  Result.Before     := ' ago';
  Result.After      := ' from now';
  Result.NowText    := 'just now';
  Result.Yesterday  := 'yesterday';
  Result.Tomorrow   := 'tomorrow';
  Result.LastWeek   := 'last week';
  Result.NextWeek   := 'next week';
  Result.LastMonth  := 'last month';
  Result.NextMonth  := 'next month';
  Result.LastYear   := 'last year';
  Result.NextYear   := 'next year';

  Result.PluralRule := EnglishPlural;

  Result.UnitTexts[htuYear].Add(pfOne, 'year');
  Result.UnitTexts[htuYear].Add(pfOther, 'years');
  Result.UnitTexts[htuMonth].Add(pfOne, 'month');
  Result.UnitTexts[htuMonth].Add(pfOther, 'months');
  Result.UnitTexts[htuWeek].Add(pfOne, 'week');
  Result.UnitTexts[htuWeek].Add(pfOther, 'weeks');
  Result.UnitTexts[htuDay].Add(pfOne, 'day');
  Result.UnitTexts[htuDay].Add(pfOther, 'days');
  Result.UnitTexts[htuHour].Add(pfOne, 'hour');
  Result.UnitTexts[htuHour].Add(pfOther, 'hours');
  Result.UnitTexts[htuMinute].Add(pfOne, 'minute');
  Result.UnitTexts[htuMinute].Add(pfOther, 'minutes');
  Result.UnitTexts[htuSecond].Add(pfOne, 'second');
  Result.UnitTexts[htuSecond].Add(pfOther, 'seconds');
end;

end.
