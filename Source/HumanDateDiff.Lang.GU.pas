unit HumanDateDiff.Lang.GU;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangGU: TLang;

implementation

var
  FLangGU: TLang;

function LangGU: TLang;
begin
  if FLangGU = nil then
  begin
    FLangGU := TLang.Create;
    FLangGU.PluralRule := IndianPluralRule;

    FLangGU.NowText   := 'હવે';
    FLangGU.Yesterday := 'ગઈકાલે';
    FLangGU.Tomorrow  := 'આવતીકાલે';

    FLangGU.LastWeek  := 'ગત સપ્તાહ';
    FLangGU.NextWeek  := 'આવતા સપ્તાહ';
    FLangGU.LastMonth := 'ગયો મહિનો';
    FLangGU.NextMonth := 'આવતા મહિના';
    FLangGU.LastYear  := 'ગયા વર્ષે';
    FLangGU.NextYear  := 'આવતા વર્ષ';

    FLangGU.Before := ' પહેલાં';
    FLangGU.After  := ' પછી';

    FLangGU.UnitTexts[htuDay].Add(pfOne, 'દિવસ');
    FLangGU.UnitTexts[htuDay].Add(pfOther, 'દિવસ');
    FLangGU.UnitTexts[htuHour].Add(pfOne, 'કલાક');
    FLangGU.UnitTexts[htuHour].Add(pfOther, 'કલાક');
    FLangGU.UnitTexts[htuMinute].Add(pfOne, 'મિનિટ');
    FLangGU.UnitTexts[htuMinute].Add(pfOther, 'મિનિટ');
    FLangGU.UnitTexts[htuSecond].Add(pfOne, 'સેકન્ડ');
    FLangGU.UnitTexts[htuSecond].Add(pfOther, 'સેકન્ડ');
  end;
  Result := FLangGU;
end;

initialization

finalization
  FLangGU.Free;

end.