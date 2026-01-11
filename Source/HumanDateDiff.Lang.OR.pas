unit HumanDateDiff.Lang.OR;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangOR: TLang;

implementation

var
  FLangOR: TLang;

function LangOR: TLang;
begin
  if FLangOR = nil then
  begin
    FLangOR := TLang.Create;
    FLangOR.PluralRule := IndianPluralRule;

    FLangOR.NowText   := 'ଏବେ';
    FLangOR.Yesterday := 'ଗତକାଲି';
    FLangOR.Tomorrow  := 'ଆସନ୍ତା କାଲି';

    FLangOR.LastWeek  := 'ଗତ ସପ୍ତାହ';
    FLangOR.NextWeek  := 'ଆସନ୍ତା ସପ୍ତାହ';
    FLangOR.LastMonth := 'ଗତ ମାସ';
    FLangOR.NextMonth := 'ଆସନ୍ତା ମାସ';
    FLangOR.LastYear  := 'ଗତ ବର୍ଷ';
    FLangOR.NextYear  := 'ଆସନ୍ତା ବର୍ଷ';

    FLangOR.Before := 'ପୂର୍ବରୁ';
    FLangOR.After  := 'ପରେ';

    FLangOR.AddUnit(htuDay, 'ଦିନ');
    FLangOR.AddUnit(htuHour, 'ଘଣ୍ଟା');
    FLangOR.AddUnit(htuMinute, 'ମିନିଟ');
    FLangOR.AddUnit(htuSecond, 'ସେକେଣ୍ଡ');
  end;
  Result := FLangOR;
end;

finalization
  FLangOR.Free;

end.
