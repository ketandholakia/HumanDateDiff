unit TestHumanDateDiff.Rules;

interface

uses
  DUnitX.TestFramework,
  System.SysUtils,
  DateUtils,
  HumanDateDiff,
  HumanDateDiff.Lang.EN;

type
  [TestFixture]
  THumanDateDiffRuleTests = class
  public
    [Test] procedure Yesterday_Test;
    [Test] procedure Tomorrow_Test;
    [Test] procedure LastWeek_Test;
    [Test] procedure LastMonth_Test;
    [Test] procedure LastYear_Test;
  end;

implementation

uses
  HumanDateDiff.Lang;

procedure THumanDateDiffRuleTests.Yesterday_Test;
begin
  DefaultLang := LangEN;
  Assert.AreEqual(
    'yesterday',
    THumanDateDiff.New
      .Diff(Now - 1, Now)
  );
end;

procedure THumanDateDiffRuleTests.Tomorrow_Test;
begin
  DefaultLang := LangEN;
  Assert.AreEqual(
    'tomorrow',
    THumanDateDiff.New
      .Diff(Now + 1, Now)
  );
end;

procedure THumanDateDiffRuleTests.LastWeek_Test;
begin
  DefaultLang := LangEN;
  Assert.AreEqual(
    'last week',
    THumanDateDiff.New
      .Diff(Now - 7, Now)
  );
end;

procedure THumanDateDiffRuleTests.LastMonth_Test;
begin
  DefaultLang := LangEN;
  Assert.AreEqual(
    'last month',
    THumanDateDiff.New
      .Diff(IncMonth(Now, -1), Now)
  );
end;

procedure THumanDateDiffRuleTests.LastYear_Test;
begin
  DefaultLang := LangEN;
  Assert.AreEqual(
    'last year',
    THumanDateDiff.New
      .Diff(IncYear(Now, -1), Now)
  );
end;

initialization
  TDUnitX.RegisterTestFixture(THumanDateDiffRuleTests);

end.
