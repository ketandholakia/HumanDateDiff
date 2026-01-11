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

    FLangML.Before := 'മുൻപ്';
    FLangML.After  := 'ശേഷം';

    FLangML.AddUnit(htuDay, 'ദിവസം');
    FLangML.AddUnit(htuHour, 'മണിക്കൂർ');
    FLangML.AddUnit(htuMinute, 'മിനിറ്റ്');
    FLangML.AddUnit(htuSecond, 'സെക്കൻഡ്');
  end;
  Result := FLangML;
end;

finalization
  FLangML.Free;

end.
