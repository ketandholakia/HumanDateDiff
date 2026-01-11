unit HumanDateDiff.Lang.AS;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangAS: TLang;

implementation

var
  FLangAS: TLang;

function LangAS: TLang;
begin
  if FLangAS = nil then
  begin
    FLangAS := TLang.Create;
    FLangAS.PluralRule := IndianPluralRule;

    FLangAS.NowText   := 'এতিয়া';
    FLangAS.Yesterday := 'যোৱাকালি';
    FLangAS.Tomorrow  := 'অহাকালি';

    FLangAS.LastWeek  := 'যোৱা সপ্তাহ';
    FLangAS.NextWeek  := 'অহা সপ্তাহ';
    FLangAS.LastMonth := 'যোৱা মাহ';
    FLangAS.NextMonth := 'অহা মাহ';
    FLangAS.LastYear  := 'যোৱাবছৰ';
    FLangAS.NextYear  := 'অহা বছৰ';

    FLangAS.Before := 'আগতে';
    FLangAS.After  := 'পাছত';

    FLangAS.AddUnit(htuDay, 'দিন');
    FLangAS.AddUnit(htuHour, 'ঘণ্টা');
    FLangAS.AddUnit(htuMinute, 'মিনিট');
    FLangAS.AddUnit(htuSecond, 'ছেকেণ্ড');
  end;
  Result := FLangAS;
end;

finalization
  FLangAS.Free;

end.
