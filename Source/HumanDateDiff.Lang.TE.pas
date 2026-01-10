unit HumanDateDiff.Lang.TE;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangTE: TLang;

implementation

function LangTE: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'ఇప్పుడు';
  Result.Yesterday := 'నిన్న';
  Result.Tomorrow  := 'రేపు';

  Result.LastWeek  := 'గత వారం';
  Result.NextWeek  := 'వచ్చే వారం';
  Result.LastMonth := 'గత నెల';
  Result.NextMonth := 'వచ్చే నెల';
  Result.LastYear  := 'గత సంవత్సరం';
  Result.NextYear  := 'వచ్చే సంవత్సరం';

  Result.Before := 'ముందు';
  Result.After  := 'తరువాత';

  Result.AddUnit(htuDay, 'రోజు');
  Result.AddUnit(htuHour, 'గంట');
  Result.AddUnit(htuMinute, 'నిమిషం');
  Result.AddUnit(htuSecond, 'సెకను');
end;

end.
