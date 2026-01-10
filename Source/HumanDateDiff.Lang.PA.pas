unit HumanDateDiff.Lang.PA;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangPA: TLang;

implementation

function LangPA: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'ਹੁਣ';
  Result.Yesterday := 'ਕੱਲ੍ਹ';
  Result.Tomorrow  := 'ਕੱਲ੍ਹ';

  Result.LastWeek  := 'ਪਿਛਲੇ ਹਫ਼ਤੇ';
  Result.NextWeek  := 'ਅਗਲੇ ਹਫ਼ਤੇ';
  Result.LastMonth := 'ਪਿਛਲੇ ਮਹੀਨੇ';
  Result.NextMonth := 'ਅਗਲੇ ਮਹੀਨੇ';
  Result.LastYear  := 'ਪਿਛਲੇ ਸਾਲ';
  Result.NextYear  := 'ਅਗਲੇ ਸਾਲ';

  Result.Before := 'ਪਹਿਲਾਂ';
  Result.After  := 'ਬਾਅਦ';

  Result.AddUnit(htuDay, 'ਦਿਨ');
  Result.AddUnit(htuHour, 'ਘੰਟਾ');
  Result.AddUnit(htuMinute, 'ਮਿੰਟ');
  Result.AddUnit(htuSecond, 'ਸੈਕਿੰਡ');
end;

end.
