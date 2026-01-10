unit TestHumanDateDiff.Locales;

interface

uses
  DUnitX.TestFramework,
  System.SysUtils,
  HumanDateDiff,
  HumanDateDiff.Lang.HI,
  HumanDateDiff.Lang.GU;

type
  [TestFixture]
  THumanDateDiffLocaleTests = class
  public
    [Test] procedure Hindi_Plural_Test;
    [Test] procedure Gujarati_Plural_Test;
  end;

implementation

uses
  HumanDateDiff.Lang;

procedure THumanDateDiffLocaleTests.Hindi_Plural_Test;
var
  S: string;
begin
  DefaultLang := LangHI;
  S := THumanDateDiff.New
    .Diff(Now - 3, Now);

  Assert.AreEqual('3 दिन पहले', S);
end;

procedure THumanDateDiffLocaleTests.Gujarati_Plural_Test;
var
  S: string;
begin
  DefaultLang := LangGU;
  S := THumanDateDiff.New
    .Diff(Now - 5, Now);

  Assert.AreEqual('5 દિવસ પહેલા', S);
end;

initialization
  TDUnitX.RegisterTestFixture(THumanDateDiffLocaleTests);

end.
