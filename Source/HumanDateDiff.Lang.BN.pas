unit HumanDateDiff.Lang.BN;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangBN: TLang;

implementation

var
  FLangBN: TLang;

function LangBN: TLang;
begin
  if FLangBN = nil then
  begin
    FLangBN := TLang.Create;
    FLangBN.PluralRule := IndianPluralRule;

    FLangBN.NowText   := 'এখন';
    FLangBN.Yesterday := 'গতকাল';
    FLangBN.Tomorrow  := 'আগামীকাল';

    FLangBN.LastWeek  := 'গত সপ্তাহ';
    FLangBN.NextWeek  := 'আগামী সপ্তাহ';
    FLangBN.LastMonth := 'গত মাস';
    FLangBN.NextMonth := 'আগামী মাস';
    FLangBN.LastYear  := 'গত বছর';
    FLangBN.NextYear  := 'আগামী বছর';

    FLangBN.Before := 'আগে';
    FLangBN.After  := 'পরে';

    FLangBN.AddUnit(htuDay, 'দিন');
    FLangBN.AddUnit(htuHour, 'ঘন্টা');
    FLangBN.AddUnit(htuMinute, 'মিনিট');
    FLangBN.AddUnit(htuSecond, 'সেকেন্ড');
  end;
  Result := FLangBN;
end;

finalization
  FLangBN.Free;

end.
