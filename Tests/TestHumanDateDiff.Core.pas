unit TestHumanDateDiff.Core;

interface

uses
  DUnitX.TestFramework,
  System.SysUtils,
  HumanDateDiff,
  HumanDateDiff.Lang.EN;

type
  [TestFixture]
  THumanDateDiffCoreTests = class
  public
    [Test] procedure Now_Test;
    [Test] procedure Seconds_Test;
    [Test] procedure Composite_Test;
  end;

implementation

uses
  HumanDateDiff.Lang;

procedure THumanDateDiffCoreTests.Now_Test;
var
  S: string;
begin
  DefaultLang := LangEN;
  S := THumanDateDiff.New
    .Diff(Now, Now);

  Assert.AreEqual('just now', S);
end;

procedure THumanDateDiffCoreTests.Seconds_Test;
var
  S: string;
begin
  DefaultLang := LangEN;
  S := THumanDateDiff.New
    .Diff(Now - EncodeTime(0,0,10,0), Now);

  Assert.IsTrue(S.Contains('seconds'));
end;

procedure THumanDateDiffCoreTests.Composite_Test;
var
  S: string;
begin
  DefaultLang := LangEN;
  S := THumanDateDiff.New
    .MaxUnits(2)
    .Diff(Now - 2 - EncodeTime(3,0,0,0), Now);

  Assert.AreEqual('2 days, 3 hours ago', S);
end;

initialization
  TDUnitX.RegisterTestFixture(THumanDateDiffCoreTests);

end.
