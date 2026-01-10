unit HumanDateDiff.Lang.BR;

interface

uses HumanDateDiff.Lang, HumanDateDiff.Types;

function LangBR: TLang;

implementation

function BrazilianPlural(AValue: Integer): TPluralForm;
begin
  if AValue = 1 then
    Result := pfOne
  else
    Result := pfOther;
end;

function LangBR: TLang;
begin
  Result := TLang.Create;

  Result.Before     := ' atrás';
  Result.After      := ' a partir de agora';
  Result.NowText    := 'agora mesmo';
  Result.Yesterday  := 'ontem';
  Result.Tomorrow   := 'amanhã';
  Result.LastWeek   := 'semana passada';
  Result.NextWeek   := 'próxima semana';
  Result.LastMonth  := 'mês passado';
  Result.NextMonth  := 'próximo mês';
  Result.LastYear   := 'ano passado';
  Result.NextYear   := 'próximo ano';

  Result.PluralRule := BrazilianPlural;

  Result.UnitTexts[htuYear].Add(pfOne, 'ano');
  Result.UnitTexts[htuYear].Add(pfOther, 'anos');
  Result.UnitTexts[htuMonth].Add(pfOne, 'mês');
  Result.UnitTexts[htuMonth].Add(pfOther, 'meses');
  Result.UnitTexts[htuWeek].Add(pfOne, 'semana');
  Result.UnitTexts[htuWeek].Add(pfOther, 'semanas');
  Result.UnitTexts[htuDay].Add(pfOne, 'dia');
  Result.UnitTexts[htuDay].Add(pfOther, 'dias');
  Result.UnitTexts[htuHour].Add(pfOne, 'hora');
  Result.UnitTexts[htuHour].Add(pfOther, 'horas');
  Result.UnitTexts[htuMinute].Add(pfOne, 'minuto');
  Result.UnitTexts[htuMinute].Add(pfOther, 'minutos');
  Result.UnitTexts[htuSecond].Add(pfOne, 'segundo');
  Result.UnitTexts[htuSecond].Add(pfOther, 'segundos');
end;

end.
