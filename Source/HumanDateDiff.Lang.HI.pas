unit HumanDateDiff.Lang.HI;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangHI: TLang;

implementation

var
  FLangHI: TLang;

function LangHI: TLang;
begin
  if FLangHI = nil then
  begin
    FLangHI := TLang.Create;
    FLangHI.PluralRule := IndianPluralRule;

    FLangHI.NowText   := 'अब';
    FLangHI.Yesterday := 'कल';
    FLangHI.Tomorrow  := 'कल';

    FLangHI.LastWeek  := 'पिछले सप्ताह';
    FLangHI.NextWeek  := 'अगले सप्ताह';
    FLangHI.LastMonth := 'पिछला महीना';
    FLangHI.NextMonth := 'अगले महीने';
    FLangHI.LastYear  := 'पिछला साल';
    FLangHI.NextYear  := 'अगला साल';

    FLangHI.Before := ' पहले';
    FLangHI.After  := ' बाद';

    FLangHI.UnitTexts[htuDay].Add(pfOne, 'दिन');
    FLangHI.UnitTexts[htuDay].Add(pfOther, 'दिन');
    FLangHI.UnitTexts[htuHour].Add(pfOne, 'घंटा');
    FLangHI.UnitTexts[htuHour].Add(pfOther, 'घंटा');
    FLangHI.UnitTexts[htuMinute].Add(pfOne, 'मिनट');
    FLangHI.UnitTexts[htuMinute].Add(pfOther, 'मिनट');
    FLangHI.UnitTexts[htuSecond].Add(pfOne, 'सेकंड');
    FLangHI.UnitTexts[htuSecond].Add(pfOther, 'सेकंड');
  end;
  Result := FLangHI;
end;

initialization

finalization
  FLangHI.Free;

end.