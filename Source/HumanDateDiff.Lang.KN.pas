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

    FLangKN.Before := 'ಮೊದಲು';
    FLangKN.After  := 'ನಂತರ';

    FLangKN.AddUnit(htuDay, 'ದಿನ');
    FLangKN.AddUnit(htuHour, 'ಗಂಟೆ');
    FLangKN.AddUnit(htuMinute, 'ನಿಮಿಷ');
    FLangKN.AddUnit(htuSecond, 'ಸೆಕೆಂಡ್');
  end;
  Result := FLangKN;
end;

finalization
  FLangKN.Free;

end.
