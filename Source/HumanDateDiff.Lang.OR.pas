unit HumanDateDiff.Lang.OR;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangOR: TLang;

implementation

function LangOR: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'ଏବେ';
  Result.Yesterday := 'ଗତକାଲି';
  Result.Tomorrow  := 'ଆସନ୍ତା କାଲି';

  Result.LastWeek  := 'ଗତ ସପ୍ତାହ';
  Result.NextWeek  := 'ଆସନ୍ତା ସପ୍ତାହ';
  Result.LastMonth := 'ଗତ ମାସ';
  Result.NextMonth := 'ଆସନ୍ତା ମାସ';
  Result.LastYear  := 'ଗତ ବର୍ଷ';
  Result.NextYear  := 'ଆସନ୍ତା ବର୍ଷ';

  Result.Before := 'ପୂର୍ବରୁ';
  Result.After  := 'ପରେ';

  Result.AddUnit(htuDay, 'ଦିନ');
  Result.AddUnit(htuHour, 'ଘଣ୍ଟା');
  Result.AddUnit(htuMinute, 'ମିନିଟ');
  Result.AddUnit(htuSecond, 'ସେକେଣ୍ଡ');
end;

end.
