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

    FLangTA.Before := ' முன்பு';
    FLangTA.After  := ' பிறகு';

    FLangTA.UnitTexts[htuDay].Add(pfOne, 'நாள்');
    FLangTA.UnitTexts[htuDay].Add(pfOther, 'நாள்');
    FLangTA.UnitTexts[htuHour].Add(pfOne, 'மணி');
    FLangTA.UnitTexts[htuHour].Add(pfOther, 'மணி');
    FLangTA.UnitTexts[htuMinute].Add(pfOne, 'நிமிடம்');
    FLangTA.UnitTexts[htuMinute].Add(pfOther, 'நிமிடம்');
    FLangTA.UnitTexts[htuSecond].Add(pfOne, 'விநாடி');
    FLangTA.UnitTexts[htuSecond].Add(pfOther, 'விநாடி');
  end;
  Result := FLangTA;
end;

initialization

finalization
  FLangTA.Free;

end.
