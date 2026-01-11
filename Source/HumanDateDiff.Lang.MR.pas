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

    FLangMR.Before := ' पूर्वी';
    FLangMR.After  := ' नंतर';

    FLangMR.UnitTexts[htuDay].Add(pfOne, 'दिवस');
    FLangMR.UnitTexts[htuDay].Add(pfOther, 'दिवस');
    FLangMR.UnitTexts[htuHour].Add(pfOne, 'तास');
    FLangMR.UnitTexts[htuHour].Add(pfOther, 'तास');
    FLangMR.UnitTexts[htuMinute].Add(pfOne, 'मिनिट');
    FLangMR.UnitTexts[htuMinute].Add(pfOther, 'मिनिट');
    FLangMR.UnitTexts[htuSecond].Add(pfOne, 'सेकंद');
    FLangMR.UnitTexts[htuSecond].Add(pfOther, 'सेकंद');
  end;
  Result := FLangMR;
end;

initialization

finalization
  FLangMR.Free;

end.
