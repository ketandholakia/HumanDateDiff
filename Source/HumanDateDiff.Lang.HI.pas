unit HumanDateDiff.Lang.HI;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

function LangHI: TLang;

implementation

function LangHI: TLang;
begin
  Result := TLang.Create;
  Result.PluralRule := IndianPluralRule;

  Result.NowText   := 'अब';
  Result.Yesterday := 'कल';
  Result.Tomorrow  := 'कल';

  Result.LastWeek  := 'पिछले सप्ताह';
  Result.NextWeek  := 'अगले सप्ताह';
  Result.LastMonth := 'पिछला महीना';
  Result.NextMonth := 'अगले महीने';
  Result.LastYear  := 'पिछला साल';
  Result.NextYear  := 'अगला साल';

  Result.Before := 'पहले';
  Result.After  := 'बाद';

  Result.AddUnit(htuDay, 'दिन');
  Result.AddUnit(htuHour, 'घंटा');
  Result.AddUnit(htuMinute, 'मिनट');
  Result.AddUnit(htuSecond, 'सेकंड');
end;

end.