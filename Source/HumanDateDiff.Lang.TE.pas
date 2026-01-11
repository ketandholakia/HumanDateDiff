unit HumanDateDiff.Lang.TE;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangTE: TLang;

implementation

var
  FLangTE: TLang;

function LangTE: TLang;
begin
  if FLangTE = nil then
  begin
    FLangTE := TLang.Create;
    FLangTE.PluralRule := IndianPluralRule;

    FLangTE.NowText   := 'ఇప్పుడు';
    FLangTE.Yesterday := 'నిన్న';
    FLangTE.Tomorrow  := 'రేపు';

    FLangTE.LastWeek  := 'గత వారం';
    FLangTE.NextWeek  := 'వచ్చే వారం';
    FLangTE.LastMonth := 'గత నెల';
    FLangTE.NextMonth := 'వచ్చే నెల';
    FLangTE.LastYear  := 'గత సంవత్సరం';
    FLangTE.NextYear  := 'వచ్చే సంవత్సరం';

    FLangTE.Before := 'ముందు';
    FLangTE.After  := 'తరువాత';

    FLangTE.AddUnit(htuDay, 'రోజు');
    FLangTE.AddUnit(htuHour, 'గంట');
    FLangTE.AddUnit(htuMinute, 'నిమిషం');
    FLangTE.AddUnit(htuSecond, 'సెకను');
  end;
  Result := FLangTE;
end;

finalization
  FLangTE.Free;

end.
