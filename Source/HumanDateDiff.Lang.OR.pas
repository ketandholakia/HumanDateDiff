unit HumanDateDiff.Lang.&OR;

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

    FLangOR.Before := ' ପୂର୍ବରୁ';
    FLangOR.After  := ' ପରେ';

    FLangOR.UnitTexts[htuDay].Add(pfOne, 'ଦିନ');
    FLangOR.UnitTexts[htuDay].Add(pfOther, 'ଦିନ');
    FLangOR.UnitTexts[htuHour].Add(pfOne, 'ଘଣ୍ଟା');
    FLangOR.UnitTexts[htuHour].Add(pfOther, 'ଘଣ୍ଟା');
    FLangOR.UnitTexts[htuMinute].Add(pfOne, 'ମିନିଟ');
    FLangOR.UnitTexts[htuMinute].Add(pfOther, 'ମିନିଟ');
    FLangOR.UnitTexts[htuSecond].Add(pfOne, 'ସେକେଣ୍ଡ');
    FLangOR.UnitTexts[htuSecond].Add(pfOther, 'ସେକେଣ୍ଡ');
  end;
  Result := FLangOR;
end;

initialization

finalization
  FLangOR.Free;

end.
