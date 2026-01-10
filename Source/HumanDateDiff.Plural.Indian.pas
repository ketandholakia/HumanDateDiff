unit HumanDateDiff.Plural.Indian;

interface

uses HumanDateDiff.Types;

function IndianPluralRule(AValue: Integer): TPluralForm;

implementation

function IndianPluralRule(AValue: Integer): TPluralForm;
begin
  Result := pfOther; // invariant plural
end;

end.
