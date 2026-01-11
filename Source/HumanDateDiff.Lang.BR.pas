unit HumanDateDiff.Lang.BR;

interface

uses HumanDateDiff.Lang, HumanDateDiff.Types;

function LangBR: TLang;

implementation

var
  FLangBR: TLang;

function BrazilianPlural(AValue: Integer): TPluralForm;
begin
  if AValue = 1 then
    Result := pfOne
  else
    Result := pfOther;
end;

function LangBR: TLang;
begin
  if FLangBR = nil then
  begin
    FLangBR := TLang.Create;

    FLangBR.Before     := ' atrás';
    FLangBR.After      := ' a partir de agora';
    FLangBR.NowText    := 'agora mesmo';
    FLangBR.Yesterday  := 'ontem';
    FLangBR.Tomorrow   := 'amanhã';
    FLangBR.LastWeek   := 'semana passada';
    FLangBR.NextWeek   := 'próxima semana';
    FLangBR.LastMonth  := 'mês passado';
    FLangBR.NextMonth  := 'próximo mês';
    FLangBR.LastYear   := 'ano passado';
    FLangBR.NextYear   := 'próximo ano';

    FLangBR.PluralRule := BrazilianPlural;

    FLangBR.UnitTexts[htuYear].Add(pfOne, 'ano');
    FLangBR.UnitTexts[htuYear].Add(pfOther, 'anos');
    FLangBR.UnitTexts[htuMonth].Add(pfOne, 'mês');
    FLangBR.UnitTexts[htuMonth].Add(pfOther, 'meses');
    FLangBR.UnitTexts[htuWeek].Add(pfOne, 'semana');
    FLangBR.UnitTexts[htuWeek].Add(pfOther, 'semanas');
    FLangBR.UnitTexts[htuDay].Add(pfOne, 'dia');
    FLangBR.UnitTexts[htuDay].Add(pfOther, 'dias');
    FLangBR.UnitTexts[htuHour].Add(pfOne, 'hora');
    FLangBR.UnitTexts[htuHour].Add(pfOther, 'horas');
    FLangBR.UnitTexts[htuMinute].Add(pfOne, 'minuto');
    FLangBR.UnitTexts[htuMinute].Add(pfOther, 'minutos');
    FLangBR.UnitTexts[htuSecond].Add(pfOne, 'segundo');
    FLangBR.UnitTexts[htuSecond].Add(pfOther, 'segundos');
  end;
  Result := FLangBR;
end;

finalization
  FLangBR.Free;

end.
