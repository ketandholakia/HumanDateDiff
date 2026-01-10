unit HumanDateDiff.Lang.MR;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangMR: TLang;

implementation

function LangMR: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'आत्ताच';
  Result.Yesterday := 'काल';
  Result.Tomorrow  := 'उद्या';

  Result.LastWeek  := 'मागील आठवडा';
  Result.NextWeek  := 'पुढील आठवडा';
  Result.LastMonth := 'मागील महिना';
  Result.NextMonth := 'पुढील महिना';
  Result.LastYear  := 'मागील वर्ष';
  Result.NextYear  := 'पुढील वर्ष';

  Result.Before := 'पूर्वी';
  Result.After  := 'नंतर';

  Result.AddUnit(htuDay, 'दिवस');
  Result.AddUnit(htuHour, 'तास');
  Result.AddUnit(htuMinute, 'मिनिट');
  Result.AddUnit(htuSecond, 'सेकंद');
end;

end.
