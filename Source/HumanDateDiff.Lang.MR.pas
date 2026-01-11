unit HumanDateDiff.Lang.MR;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangMR: TLang;

implementation

var
  FLangMR: TLang;

function LangMR: TLang;
begin
  if FLangMR = nil then
  begin
    FLangMR := TLang.Create;
    FLangMR.PluralRule := IndianPluralRule;

    FLangMR.NowText   := 'आत्ताच';
    FLangMR.Yesterday := 'काल';
    FLangMR.Tomorrow  := 'उद्या';

    FLangMR.LastWeek  := 'मागील आठवडा';
    FLangMR.NextWeek  := 'पुढील आठवडा';
    FLangMR.LastMonth := 'मागील महिना';
    FLangMR.NextMonth := 'पुढील महिना';
    FLangMR.LastYear  := 'मागील वर्ष';
    FLangMR.NextYear  := 'पुढील वर्ष';

    FLangMR.Before := 'पूर्वी';
    FLangMR.After  := 'नंतर';

    FLangMR.AddUnit(htuDay, 'दिवस');
    FLangMR.AddUnit(htuHour, 'तास');
    FLangMR.AddUnit(htuMinute, 'मिनिट');
    FLangMR.AddUnit(htuSecond, 'सेकंद');
  end;
  Result := FLangMR;
end;

finalization
  FLangMR.Free;

end.
