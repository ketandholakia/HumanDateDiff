unit HumanDateDiff.Lang.ML;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangML: TLang;

implementation

function LangML: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'ഇപ്പോൾ';
  Result.Yesterday := 'ഇന്നലെ';
  Result.Tomorrow  := 'നാളെ';

  Result.LastWeek  := 'കഴിഞ്ഞ ആഴ്ച';
  Result.NextWeek  := 'അടുത്ത ആഴ്ച';
  Result.LastMonth := 'കഴിഞ്ഞ മാസം';
  Result.NextMonth := 'അടുത്ത മാസം';
  Result.LastYear  := 'കഴിഞ്ഞ വർഷം';
  Result.NextYear  := 'അടുത്ത വർഷം';

  Result.Before := 'മുൻപ്';
  Result.After  := 'ശേഷം';

  Result.AddUnit(htuDay, 'ദിവസം');
  Result.AddUnit(htuHour, 'മണിക്കൂർ');
  Result.AddUnit(htuMinute, 'മിനിറ്റ്');
  Result.AddUnit(htuSecond, 'സെക്കൻഡ്');
end;

end.
