unit HumanDateDiff.Lang.&AS;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangAS: TLang;

implementation

var
  FLangAS: TLang;

function LangAS: TLang;
begin
  if FLangAS = nil then
  begin
    FLangAS := TLang.Create;
    FLangAS.PluralRule := IndianPluralRule;

    FLangAS.NowText   := 'এতিয়া';
    FLangAS.Yesterday := 'যোৱাকালি';
    FLangAS.Tomorrow  := 'অহাকালি';

    FLangAS.LastWeek  := 'যোৱা সপ্তাহ';
    FLangAS.NextWeek  := 'অহা সপ্তাহ';
    FLangAS.LastMonth := 'যোৱা মাহ';
    FLangAS.NextMonth := 'অহা মাহ';
    FLangAS.LastYear  := 'যোৱাবছৰ';
    FLangAS.NextYear  := 'অহা বছৰ';

    FLangAS.Before := ' আগতে';
    FLangAS.After  := ' পাছত';

    FLangAS.UnitTexts[htuDay].Add(pfOne, 'দিন');
    FLangAS.UnitTexts[htuDay].Add(pfOther, 'দিন');
    FLangAS.UnitTexts[htuHour].Add(pfOne, 'ঘণ্টা');
    FLangAS.UnitTexts[htuHour].Add(pfOther, 'ঘণ্টা');
    FLangAS.UnitTexts[htuMinute].Add(pfOne, 'মিনিট');
    FLangAS.UnitTexts[htuMinute].Add(pfOther, 'মিনিট');
    FLangAS.UnitTexts[htuSecond].Add(pfOne, 'ছেকেণ্ড');
    FLangAS.UnitTexts[htuSecond].Add(pfOther, 'ছেকেণ্ড');
  end;
  Result := FLangAS;
end;

initialization

finalization
  FLangAS.Free;

end.
