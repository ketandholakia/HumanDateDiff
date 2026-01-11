unit TestHumanDateDiff.Locales;

interface

uses
  DUnitX.TestFramework,
  System.SysUtils,
  HumanDateDiff,
  HumanDateDiff.Lang.HI,
  HumanDateDiff.Lang.GU,
  HumanDateDiff.Lang.MR,
  HumanDateDiff.Lang.TA,
  HumanDateDiff.Lang.BN,
  HumanDateDiff.Lang.TE,
  HumanDateDiff.Lang.KN,
  HumanDateDiff.Lang.ML,
  HumanDateDiff.Lang.PA,
  HumanDateDiff.Lang.&OR,
  HumanDateDiff.Lang.&AS,
  HumanDateDiff.Lang.SA;

type
  [TestFixture]
  THumanDateDiffLocaleTests = class
  public
    [Test] procedure Hindi_Plural_Test;
    [Test] procedure Gujarati_Plural_Test;
    [Test] procedure Marathi_Test;
    [Test] procedure Tamil_Test;
    [Test] procedure Bengali_Test;
    [Test] procedure Telugu_Test;
    [Test] procedure Kannada_Test;
    [Test] procedure Malayalam_Test;
    [Test] procedure Punjabi_Test;
    [Test] procedure Odia_Test;
    [Test] procedure Assamese_Test;
    [Test] procedure Sanskrit_Test;
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

  Assert.AreEqual('5 દિવસ પહેલાં', S);
end;

procedure THumanDateDiffLocaleTests.Marathi_Test;
begin
  Assert.AreEqual(
    '3 दिवस पूर्वी',
    THumanDateDiff.New.Lang(LangMR).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Tamil_Test;
begin
  Assert.AreEqual(
    '3 நாள் முன்பு',
    THumanDateDiff.New.Lang(LangTA).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Bengali_Test;
begin
  Assert.AreEqual(
    '3 দিন আগে',
    THumanDateDiff.New.Lang(LangBN).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Telugu_Test;
begin
  Assert.AreEqual(
    '3 రోజు ముందు',
    THumanDateDiff.New.Lang(LangTE).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Kannada_Test;
begin
  Assert.AreEqual(
    '3 ದಿನ ಮೊದಲು',
    THumanDateDiff.New.Lang(LangKN).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Malayalam_Test;
begin
  Assert.AreEqual(
    '3 ദിവസം മുൻപ്',
    THumanDateDiff.New.Lang(LangML).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Punjabi_Test;
begin
  Assert.AreEqual(
    '3 ਦਿਨ ਪਹਿਲਾਂ',
    THumanDateDiff.New.Lang(LangPA).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Odia_Test;
begin
  Assert.AreEqual(
    '3 ଦିନ ପୂର୍ବରୁ',
    THumanDateDiff.New.Lang(LangOR).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Assamese_Test;
begin
  Assert.AreEqual(
    '3 দিন আগতে',
    THumanDateDiff.New.Lang(LangAS).Diff(Now - 3, Now)
  );
end;

procedure THumanDateDiffLocaleTests.Sanskrit_Test;
begin
  Assert.AreEqual(
    '3 दिनम् पूर्वम्',
    THumanDateDiff.New.Lang(LangSA).Diff(Now - 3, Now)
  );
end;

initialization
  TDUnitX.RegisterTestFixture(THumanDateDiffLocaleTests);

end.
