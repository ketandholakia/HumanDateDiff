unit HumanDateDiff.Lang.KN;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangKN: TLang;

implementation

var
  FLangKN: TLang;

function LangKN: TLang;
begin
  if FLangKN = nil then
  begin
    FLangKN := TLang.Create;
    FLangKN.PluralRule := IndianPluralRule;

    FLangKN.NowText   := 'ಈಗ';
    FLangKN.Yesterday := 'ನಿನ್ನೆ';
    FLangKN.Tomorrow  := 'ನಾಳೆ';

    FLangKN.LastWeek  := 'ಕಳೆದ ವಾರ';
    FLangKN.NextWeek  := 'ಮುಂದಿನ ವಾರ';
    FLangKN.LastMonth := 'ಕಳೆದ ತಿಂಗಳು';
    FLangKN.NextMonth := 'ಮುಂದಿನ ತಿಂಗಳು';
    FLangKN.LastYear  := 'ಕಳೆದ ವರ್ಷ';
    FLangKN.NextYear  := 'ಮುಂದಿನ ವರ್ಷ';

    FLangKN.Before := ' ಮೊದಲು';
    FLangKN.After  := ' ನಂತರ';

    FLangKN.UnitTexts[htuDay].Add(pfOne, 'ದಿನ');
    FLangKN.UnitTexts[htuDay].Add(pfOther, 'ದಿನ');
    FLangKN.UnitTexts[htuHour].Add(pfOne, 'ಗಂಟೆ');
    FLangKN.UnitTexts[htuHour].Add(pfOther, 'ಗಂಟೆ');
    FLangKN.UnitTexts[htuMinute].Add(pfOne, 'ನಿಮಿಷ');
    FLangKN.UnitTexts[htuMinute].Add(pfOther, 'ನಿಮಿಷ');
    FLangKN.UnitTexts[htuSecond].Add(pfOne, 'ಸೆಕೆಂಡ್');
    FLangKN.UnitTexts[htuSecond].Add(pfOther, 'ಸೆಕೆಂಡ್');
  end;
  Result := FLangKN;
end;

initialization

finalization
  FLangKN.Free;

end.
