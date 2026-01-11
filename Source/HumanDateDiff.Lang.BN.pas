unit HumanDateDiff.Lang.BN;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangBN: TLang;

implementation

var
  FLangBN: TLang;

function LangBN: TLang;
begin
  if FLangBN = nil then
  begin
    FLangBN := TLang.Create;
    FLangBN.PluralRule := IndianPluralRule;

    FLangBN.NowText   := 'এখন';
    FLangBN.Yesterday := 'গতকাল';
    FLangBN.Tomorrow  := 'আগামীকাল';

    FLangBN.LastWeek  := 'গত সপ্তাহ';
    FLangBN.NextWeek  := 'আগামী সপ্তাহ';
    FLangBN.LastMonth := 'গত মাস';
    FLangBN.NextMonth := 'আগামী মাস';
    FLangBN.LastYear  := 'গত বছর';
    FLangBN.NextYear  := 'আগামী বছর';

    FLangBN.Before := ' আগে';
    FLangBN.After  := ' পরে';

    FLangBN.UnitTexts[htuDay].Add(pfOne, 'দিন');
    FLangBN.UnitTexts[htuDay].Add(pfOther, 'দিন');
    FLangBN.UnitTexts[htuHour].Add(pfOne, 'ঘন্টা');
    FLangBN.UnitTexts[htuHour].Add(pfOther, 'ঘন্টা');
    FLangBN.UnitTexts[htuMinute].Add(pfOne, 'মিনিট');
    FLangBN.UnitTexts[htuMinute].Add(pfOther, 'মিনিট');
    FLangBN.UnitTexts[htuSecond].Add(pfOne, 'সেকেন্ড');
    FLangBN.UnitTexts[htuSecond].Add(pfOther, 'সেকেন্ড');
  end;
  Result := FLangBN;
end;

initialization

finalization
  FLangBN.Free;

end.
