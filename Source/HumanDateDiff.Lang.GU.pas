unit HumanDateDiff.Lang.GU;

interface

uses HumanDateDiff.Lang, HumanDateDiff.Types;

function LangGU: TLang;

implementation

function GujaratiPlural(AValue: Integer): TPluralForm;
begin
  if AValue = 1 then
    Result := pfOne
  else
    Result := pfOther;
end;

function LangGU: TLang;
begin
  Result := TLang.Create;

  Result.Before     := ' પહેલા';
  Result.After      := ' હવેથી';
  Result.NowText    := 'હમણાં';
  Result.Yesterday  := 'ગઈકાલે';
  Result.Tomorrow   := 'આવતીકાલે';
  Result.LastWeek   := 'ગયા અઠવાડિયે';
  Result.NextWeek   := 'આવતા અઠવાડિયે';
  Result.LastMonth  := 'ગયા મહિને';
  Result.NextMonth  := 'આવતા મહિне';
  Result.LastYear   := 'ગયા વર્ષે';
  Result.NextYear   := 'આવતા વર્ષે';

  Result.PluralRule := GujaratiPlural;

  Result.UnitTexts[htuYear].Add(pfOne, 'વર્ષ');
  Result.UnitTexts[htuYear].Add(pfOther, 'વર્ષ');
  Result.UnitTexts[htuMonth].Add(pfOne, 'મહિનો');
  Result.UnitTexts[htuMonth].Add(pfOther, 'મહિના');
  Result.UnitTexts[htuWeek].Add(pfOne, 'અઠવાડિયું');
  Result.UnitTexts[htuWeek].Add(pfOther, 'અઠવાડિયા');
  Result.UnitTexts[htuDay].Add(pfOne, 'દિવસ');
  Result.UnitTexts[htuDay].Add(pfOther, 'દિવસ');
  Result.UnitTexts[htuHour].Add(pfOne, 'કલાક');
  Result.UnitTexts[htuHour].Add(pfOther, 'કલાક');
  Result.UnitTexts[htuMinute].Add(pfOne, 'મિનિટ');
  Result.UnitTexts[htuMinute].Add(pfOther, 'મિનિટ');
  Result.UnitTexts[htuSecond].Add(pfOne, 'સેકન્ડ');
  Result.UnitTexts[htuSecond].Add(pfOther, 'સેકન્ડ');
end;

end.
