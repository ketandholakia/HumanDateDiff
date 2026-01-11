unit HumanDateDiff.Lang.GU;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

var
  LangGU: TLang;

implementation

initialization
  LangGU := TLang.Create;
  LangGU.PluralRule := IndianPluralRule;

  LangGU.NowText   := 'હવે';
  LangGU.Yesterday := 'ગઈકાલે';
  LangGU.Tomorrow  := 'આવતીકાલે';

  LangGU.LastWeek  := 'ગત સપ્તાહ';
  LangGU.NextWeek  := 'આવતા સપ્તાહ';
  LangGU.LastMonth := 'ગયો મહિનો';
  LangGU.NextMonth := 'આવતા મહિના';
  LangGU.LastYear  := 'ગયા વર્ષે';
  LangGU.NextYear  := 'આવતા વર્ષ';

  LangGU.Before := 'પહેલાં';
  LangGU.After  := 'પછી';

  LangGU.AddUnit(htuDay, 'દિવસ');
  LangGU.AddUnit(htuHour, 'કલાક');
  LangGU.AddUnit(htuMinute, 'મિનિટ');
  LangGU.AddUnit(htuSecond, 'સેકન્ડ');

finalization
  LangGU.Free;

end.