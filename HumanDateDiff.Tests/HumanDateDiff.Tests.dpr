program HumanDateDiff.Tests;

{$APPTYPE CONSOLE}

uses
  DUnitX.Loggers.Console,
  DUnitX.Loggers.XML.NUnit,
  DUnitX.TestFramework;

begin
  TDUnitX.CheckCommandLine;
  TDUnitX.Run;
end.
