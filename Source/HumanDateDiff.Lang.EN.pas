unit HumanDateDiff.Lang.EN;

interface

uses HumanDateDiff.Lang, HumanDateDiff.Types;

function LangEN: TLang;

implementation

var
  FLangEN: TLang;

function EnglishPlural(AValue: Integer): TPluralForm;
begin
  if AValue = 1 then
    Result := pfOne
  else
    Result := pfOther;
end;

function LangEN: TLang;
begin
  if FLangEN = nil then
  begin
    FLangEN := TLang.Create;

    FLangEN.Before     := ' ago';
    FLangEN.After      := ' from now';
    FLangEN.NowText    := 'just now';
    FLangEN.Yesterday  := 'yesterday';
    FLangEN.Tomorrow   := 'tomorrow';
    FLangEN.LastWeek   := 'last week';
    FLangEN.NextWeek   := 'next week';
    FLangEN.LastMonth  := 'last month';
    FLangEN.NextMonth  := 'next month';
    FLangEN.LastYear   := 'last year';
    FLangEN.NextYear   := 'next year';

    FLangEN.PluralRule := EnglishPlural;

    FLangEN.UnitTexts[htuYear].Add(pfOne, 'year');
    FLangEN.UnitTexts[htuYear].Add(pfOther, 'years');
    FLangEN.UnitTexts[htuMonth].Add(pfOne, 'month');
    FLangEN.UnitTexts[htuMonth].Add(pfOther, 'months');
    FLangEN.UnitTexts[htuWeek].Add(pfOne, 'week');
    FLangEN.UnitTexts[htuWeek].Add(pfOther, 'weeks');
    FLangEN.UnitTexts[htuDay].Add(pfOne, 'day');
    FLangEN.UnitTexts[htuDay].Add(pfOther, 'days');
    FLangEN.UnitTexts[htuHour].Add(pfOne, 'hour');
    FLangEN.UnitTexts[htuHour].Add(pfOther, 'hours');
    FLangEN.UnitTexts[htuMinute].Add(pfOne, 'minute');
    FLangEN.UnitTexts[htuMinute].Add(pfOther, 'minutes');
    FLangEN.UnitTexts[htuSecond].Add(pfOne, 'second');
    FLangEN.UnitTexts[htuSecond].Add(pfOther, 'seconds');
  end;
  Result := FLangEN;
end;

finalization
  FLangEN.Free;

end.
