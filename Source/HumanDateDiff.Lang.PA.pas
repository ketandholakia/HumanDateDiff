unit HumanDateDiff.Lang.PA;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangPA: TLang;

implementation

var
  FLangPA: TLang;

function LangPA: TLang;
begin
  if FLangPA = nil then
  begin
    FLangPA := TLang.Create;
    FLangPA.PluralRule := IndianPluralRule;

    FLangPA.NowText   := 'ਹੁਣ';
    FLangPA.Yesterday := 'ਕੱਲ੍ਹ';
    FLangPA.Tomorrow  := 'ਕੱਲ੍ਹ';

    FLangPA.LastWeek  := 'ਪਿਛਲੇ ਹਫ਼ਤੇ';
    FLangPA.NextWeek  := 'ਅਗਲੇ ਹਫ਼ਤੇ';
    FLangPA.LastMonth := 'ਪਿਛਲੇ ਮਹੀਨੇ';
    FLangPA.NextMonth := 'ਅਗਲੇ ਮਹੀਨੇ';
    FLangPA.LastYear  := 'ਪਿਛਲੇ ਸਾਲ';
    FLangPA.NextYear  := 'ਅਗਲੇ ਸਾਲ';

    FLangPA.Before := ' ਪਹਿਲਾਂ';
    FLangPA.After  := ' ਬਾਅਦ';

    FLangPA.UnitTexts[htuDay].Add(pfOne, 'ਦਿਨ');
    FLangPA.UnitTexts[htuDay].Add(pfOther, 'ਦਿਨ');
    FLangPA.UnitTexts[htuHour].Add(pfOne, 'ਘੰਟਾ');
    FLangPA.UnitTexts[htuHour].Add(pfOther, 'ਘੰਟਾ');
    FLangPA.UnitTexts[htuMinute].Add(pfOne, 'ਮਿੰਟ');
    FLangPA.UnitTexts[htuMinute].Add(pfOther, 'ਮਿੰਟ');
    FLangPA.UnitTexts[htuSecond].Add(pfOne, 'ਸੈਕਿੰਡ');
    FLangPA.UnitTexts[htuSecond].Add(pfOther, 'ਸੈਕਿੰਡ');
  end;
  Result := FLangPA;
end;

initialization

finalization
  FLangPA.Free;

end.
