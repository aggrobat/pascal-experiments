//  q: how do i run this program?
//  a: fpc hello.pas && ./hello

Program firststeps;
{$mode objfpc}{$H+}
// Where does the var section for a program go?
// 1. after the uses section
// 2. before the begin section  

Uses 
  {$IFDEF UNIX}
cthreads,
  {$ENDIF}
firststepsform,
forms,
Classes,
Interfaces,
StdCtrls;
// Add unit path for forms  (add to the uses section)

Var 
    Form1:   TFirstSteps;

Begin
    Application.Initialize;
    Application.CreateForm(TFirstSteps, Form1);
    Application.Run;
End.
