unit HumanDateDiff.Lang.TA;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangTA: TLang;

implementation

function LangTA: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'இப்போது';
  Result.Yesterday := 'நேற்று';
  Result.Tomorrow  := 'நாளை';

  Result.LastWeek  := 'கடந்த வாரம்';
  Result.NextWeek  := 'அடுத்த வாரம்';
  Result.LastMonth := 'கடந்த மாதம்';
  Result.NextMonth := 'அடுத்த மாதம்';
  Result.LastYear  := 'கடந்த ஆண்டு';
  Result.NextYear  := 'அடுத்த ஆண்டு';

  Result.Before := 'முன்பு';
  Result.After  := 'பிறகு';

  Result.AddUnit(htuDay, 'நாள்');
  Result.AddUnit(htuHour, 'மணி');
  Result.AddUnit(htuMinute, 'நிமிடம்');
  Result.AddUnit(htuSecond, 'விநாடி');
end;

end.
