program HumanDateDiff.Tests;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  DUnitX.TestFramework,
  DUnitX.Loggers.Console,
  DUnitX.Loggers.XML.NUnit,

  // 👇 THIS IS REQUIRED
  TestHumanDateDiff.Core,
  TestHumanDateDiff.Rules,
  TestHumanDateDiff.Locales;

var
  Runner: ITestRunner;
  Results: IRunResults;
begin
  try
    TDUnitX.CheckCommandLine;

    Runner := TDUnitX.CreateRunner;
    Runner.UseRTTI := True;

    Runner.AddLogger(TDUnitXConsoleLogger.Create(True));
    Runner.AddLogger(TDUnitXXMLNUnitFileLogger.Create);

    Results := Runner.Execute;

    if not Results.AllPassed then
      ExitCode := 1;
  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      ExitCode := 1;
    end;
  end;
end.