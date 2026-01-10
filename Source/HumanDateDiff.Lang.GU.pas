unit HumanDateDiff.Lang.GU;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangGU: TLang;

implementation

function LangGU: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'હવે';
  Result.Yesterday := 'ગઈકાલે';
  Result.Tomorrow  := 'આવતીકાલે';

  Result.LastWeek  := 'ગત સપ્તાહ';
  Result.NextWeek  := 'આવતા સપ્તાહ';
  Result.LastMonth := 'ગયો મહિનો';
  Result.NextMonth := 'આવતા મહિના';
  Result.LastYear  := 'ગયા વર્ષે';
  Result.NextYear  := 'આવતા વર્ષ';

  Result.Before := 'પહેલાં';
  Result.After  := 'પછી';

  Result.AddUnit(htuDay, 'દિવસ');
  Result.AddUnit(htuHour, 'કલાક');
  Result.AddUnit(htuMinute, 'મિનિટ');
  Result.AddUnit(htuSecond, 'સેકન્ડ');
end;

end.