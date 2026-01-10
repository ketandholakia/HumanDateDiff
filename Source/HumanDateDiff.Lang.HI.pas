unit HumanDateDiff.Lang.HI;

interface

uses HumanDateDiff.Lang, HumanDateDiff.Types;

function LangHI: TLang;

implementation

function HindiPlural(AValue: Integer): TPluralForm;
begin
  if AValue = 1 then
    Result := pfOne
  else
    Result := pfOther;
end;

function LangHI: TLang;
begin
  Result := TLang.Create;

  Result.Before     := ' पहले';
  Result.After      := ' अब से';
  Result.NowText    := 'अभी';
  Result.Yesterday  := 'कल';
  Result.Tomorrow   := 'कल';
  Result.LastWeek   := 'पिछले हफ्ते';
  Result.NextWeek   := 'अगले हफ्ते';
  Result.LastMonth  := 'पिछले महीने';
  Result.NextMonth  := 'अगले महीने';
  Result.LastYear   := 'पिछले साल';
  Result.NextYear   := 'अगले साल';

  Result.PluralRule := HindiPlural;

  Result.UnitTexts[htuYear].Add(pfOne, 'वर्ष');
  Result.UnitTexts[htuYear].Add(pfOther, 'वर्ष');
  Result.UnitTexts[htuMonth].Add(pfOne, 'महीना');
  Result.UnitTexts[htuMonth].Add(pfOther, 'महीने');
  Result.UnitTexts[htuWeek].Add(pfOne, 'सप्ताह');
  Result.UnitTexts[htuWeek].Add(pfOther, 'सप्ताह');
  Result.UnitTexts[htuDay].Add(pfOne, 'दिन');
  Result.UnitTexts[htuDay].Add(pfOther, 'दिन');
  Result.UnitTexts[htuHour].Add(pfOne, 'घंटा');
  Result.UnitTexts[htuHour].Add(pfOther, 'घंटे');
  Result.UnitTexts[htuMinute].Add(pfOne, 'मिनट');
  Result.UnitTexts[htuMinute].Add(pfOther, 'मिनट');
  Result.UnitTexts[htuSecond].Add(pfOne, 'सेकंड');
  Result.UnitTexts[htuSecond].Add(pfOther, 'सेकंड');
end;

end.
