unit HumanDateDiff.Lang.AS;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangAS: TLang;

implementation

function LangAS: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'এতিয়া';
  Result.Yesterday := 'যোৱাকালি';
  Result.Tomorrow  := 'অহাকালি';

  Result.LastWeek  := 'যোৱা সপ্তাহ';
  Result.NextWeek  := 'অহা সপ্তাহ';
  Result.LastMonth := 'যোৱা মাহ';
  Result.NextMonth := 'অহা মাহ';
  Result.LastYear  := 'যোৱাবছৰ';
  Result.NextYear  := 'অহা বছৰ';

  Result.Before := 'আগতে';
  Result.After  := 'পাছত';

  Result.AddUnit(htuDay, 'দিন');
  Result.AddUnit(htuHour, 'ঘণ্টা');
  Result.AddUnit(htuMinute, 'মিনিট');
  Result.AddUnit(htuSecond, 'ছেকেণ্ড');
end;

end.
