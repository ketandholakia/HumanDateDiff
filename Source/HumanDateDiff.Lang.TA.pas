unit HumanDateDiff.Lang.TA;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangTA: TLang;

implementation

var
  FLangTA: TLang;

function LangTA: TLang;
begin
  if FLangTA = nil then
  begin
    FLangTA := TLang.Create;
    FLangTA.PluralRule := IndianPluralRule;

    FLangTA.NowText   := 'இப்போது';
    FLangTA.Yesterday := 'நேற்று';
    FLangTA.Tomorrow  := 'நாளை';

    FLangTA.LastWeek  := 'கடந்த வாரம்';
    FLangTA.NextWeek  := 'அடுத்த வாரம்';
    FLangTA.LastMonth := 'கடந்த மாதம்';
    FLangTA.NextMonth := 'அடுத்த மாதம்';
    FLangTA.LastYear  := 'கடந்த ஆண்டு';
    FLangTA.NextYear  := 'அடுத்த ஆண்டு';

    FLangTA.Before := 'முன்பு';
    FLangTA.After  := 'பிறகு';

    FLangTA.AddUnit(htuDay, 'நாள்');
    FLangTA.AddUnit(htuHour, 'மணி');
    FLangTA.AddUnit(htuMinute, 'நிமிடம்');
    FLangTA.AddUnit(htuSecond, 'விநாடி');
  end;
  Result := FLangTA;
end;

finalization
  FLangTA.Free;

end.
