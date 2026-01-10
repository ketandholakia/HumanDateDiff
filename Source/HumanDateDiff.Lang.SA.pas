unit HumanDateDiff.Lang.SA;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangSA: TLang;

implementation

function LangSA: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'अधुना';
  Result.Yesterday := 'ह्यः';
  Result.Tomorrow  := 'श्वः';

  Result.LastWeek  := 'गतसप्ताहः';
  Result.NextWeek  := 'आगामिसप्ताहः';
  Result.LastMonth := 'गतमासः';
  Result.NextMonth := 'आगामिमासः';
  Result.LastYear  := 'गतवर्षः';
  Result.NextYear  := 'आगामिवर्षः';

  Result.Before := 'पूर्वम्';
  Result.After  := 'पश्चात्';

  Result.AddUnit(htuDay, 'दिनम्');
  Result.AddUnit(htuHour, 'होरा');
  Result.AddUnit(htuMinute, 'निमेषः');
  Result.AddUnit(htuSecond, 'क्षणम्');
end;

end.
