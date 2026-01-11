unit HumanDateDiff.Lang.HI;

interface

uses
  HumanDateDiff.Lang,
  HumanDateDiff.Types,
  HumanDateDiff.Plural.Indian;

var
  LangHI: TLang;

implementation

initialization
  LangHI := TLang.Create;
  LangHI.PluralRule := IndianPluralRule;

  LangHI.NowText   := 'अब';
  LangHI.Yesterday := 'कल';
  LangHI.Tomorrow  := 'कल';

  LangHI.LastWeek  := 'पिछले सप्ताह';
  LangHI.NextWeek  := 'अगले सप्ताह';
  LangHI.LastMonth := 'पिछला महीना';
  LangHI.NextMonth := 'अगले महीने';
  LangHI.LastYear  := 'पिछला साल';
  LangHI.NextYear  := 'अगला साल';

  LangHI.Before := 'पहले';
  LangHI.After  := 'बाद';

  LangHI.AddUnit(htuDay, 'दिन');
  LangHI.AddUnit(htuHour, 'घंटा');
  LangHI.AddUnit(htuMinute, 'मिनट');
  LangHI.AddUnit(htuSecond, 'सेकंड');

finalization
  LangHI.Free;

end.