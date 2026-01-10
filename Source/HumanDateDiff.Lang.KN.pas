unit HumanDateDiff.Lang.KN;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangKN: TLang;

implementation

function LangKN: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'ಈಗ';
  Result.Yesterday := 'ನಿನ್ನೆ';
  Result.Tomorrow  := 'ನಾಳೆ';

  Result.LastWeek  := 'ಕಳೆದ ವಾರ';
  Result.NextWeek  := 'ಮುಂದಿನ ವಾರ';
  Result.LastMonth := 'ಕಳೆದ ತಿಂಗಳು';
  Result.NextMonth := 'ಮುಂದಿನ ತಿಂಗಳು';
  Result.LastYear  := 'ಕಳೆದ ವರ್ಷ';
  Result.NextYear  := 'ಮುಂದಿನ ವರ್ಷ';

  Result.Before := 'ಮೊದಲು';
  Result.After  := 'ನಂತರ';

  Result.AddUnit(htuDay, 'ದಿನ');
  Result.AddUnit(htuHour, 'ಗಂಟೆ');
  Result.AddUnit(htuMinute, 'ನಿಮಿಷ');
  Result.AddUnit(htuSecond, 'ಸೆಕೆಂಡ್');
end;

end.
