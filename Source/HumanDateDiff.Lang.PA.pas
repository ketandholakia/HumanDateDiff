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

    FLangPA.Before := 'ਪਹਿਲਾਂ';
    FLangPA.After  := 'ਬਾਅਦ';

    FLangPA.AddUnit(htuDay, 'ਦਿਨ');
    FLangPA.AddUnit(htuHour, 'ਘੰਟਾ');
    FLangPA.AddUnit(htuMinute, 'ਮਿੰਟ');
    FLangPA.AddUnit(htuSecond, 'ਸੈਕਿੰਡ');
  end;
  Result := FLangPA;
end;

finalization
  FLangPA.Free;

end.
