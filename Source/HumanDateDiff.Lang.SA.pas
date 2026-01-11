unit HumanDateDiff.Lang.SA;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangSA: TLang;

implementation

var
  FLangSA: TLang;

function LangSA: TLang;
begin
  if FLangSA = nil then
  begin
    FLangSA := TLang.Create;
    FLangSA.PluralRule := IndianPluralRule;

    FLangSA.NowText   := 'अधुना';
    FLangSA.Yesterday := 'ह्यः';
    FLangSA.Tomorrow  := 'श्वः';

    FLangSA.LastWeek  := 'गतसप्ताहः';
    FLangSA.NextWeek  := 'आगामिसप्ताहः';
    FLangSA.LastMonth := 'गतमासः';
    FLangSA.NextMonth := 'आगामिमासः';
    FLangSA.LastYear  := 'गतवर्षः';
    FLangSA.NextYear  := 'आगामिवर्षः';

    FLangSA.Before := 'पूर्वम्';
    FLangSA.After  := 'पश्चात्';

    FLangSA.AddUnit(htuDay, 'दिनम्');
    FLangSA.AddUnit(htuHour, 'होरा');
    FLangSA.AddUnit(htuMinute, 'निमेषः');
    FLangSA.AddUnit(htuSecond, 'क्षणम्');
  end;
  Result := FLangSA;
end;

finalization
  FLangSA.Free;

end.
