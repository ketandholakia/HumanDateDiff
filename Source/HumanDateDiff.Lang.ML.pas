unit HumanDateDiff.Lang.ML;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangML: TLang;

implementation

var
  FLangML: TLang;

function LangML: TLang;
begin
  if FLangML = nil then
  begin
    FLangML := TLang.Create;
    FLangML.PluralRule := IndianPluralRule;

    FLangML.NowText   := 'ഇപ്പോൾ';
    FLangML.Yesterday := 'ഇന്നലെ';
    FLangML.Tomorrow  := 'നാളെ';

    FLangML.LastWeek  := 'കഴിഞ്ഞ ആഴ്ച';
    FLangML.NextWeek  := 'അടുത്ത ആഴ്ച';
    FLangML.LastMonth := 'കഴിഞ്ഞ മാസം';
    FLangML.NextMonth := 'അടുത്ത മാസം';
    FLangML.LastYear  := 'കഴിഞ്ഞ വർഷം';
    FLangML.NextYear  := 'അടുത്ത വർഷം';

    FLangML.Before := ' മുൻപ്';
    FLangML.After  := ' ശേഷം';

    FLangML.UnitTexts[htuDay].Add(pfOne, 'ദിവസം');
    FLangML.UnitTexts[htuDay].Add(pfOther, 'ദിവസം');
    FLangML.UnitTexts[htuHour].Add(pfOne, 'മണിക്കൂർ');
    FLangML.UnitTexts[htuHour].Add(pfOther, 'മണിക്കൂർ');
    FLangML.UnitTexts[htuMinute].Add(pfOne, 'മിനിറ്റ്');
    FLangML.UnitTexts[htuMinute].Add(pfOther, 'മിനിറ്റ്');
    FLangML.UnitTexts[htuSecond].Add(pfOne, 'സെക്കൻഡ്');
    FLangML.UnitTexts[htuSecond].Add(pfOther, 'സെക്കൻഡ്');
  end;
  Result := FLangML;
end;

initialization

finalization
  FLangML.Free;

end.
