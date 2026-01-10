unit HumanDateDiff.Lang.BN;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangBN: TLang;

implementation

function LangBN: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'এখন';
  Result.Yesterday := 'গতকাল';
  Result.Tomorrow  := 'আগামীকাল';

  Result.LastWeek  := 'গত সপ্তাহ';
  Result.NextWeek  := 'আগামী সপ্তাহ';
  Result.LastMonth := 'গত মাস';
  Result.NextMonth := 'আগামী মাস';
  Result.LastYear  := 'গত বছর';
  Result.NextYear  := 'আগামী বছর';

  Result.Before := 'আগে';
  Result.After  := 'পরে';

  Result.AddUnit(htuDay, 'দিন');
  Result.AddUnit(htuHour, 'ঘন্টা');
  Result.AddUnit(htuMinute, 'মিনিট');
  Result.AddUnit(htuSecond, 'সেকেন্ড');
end;

end.
