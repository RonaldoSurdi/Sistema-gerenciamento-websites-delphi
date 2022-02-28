unit rebappTh; 

interface 

uses 
  Windows, Messages, SysUtils, Dialogs, Classes;
   
type 
  TrebappTh = Class(TThread) 
  private 
    { Private declarations } 
  Public 
    { Public declarations } 
    Interval: Integer; 

    Procedure Execute; Override; 
  Published 
    { Published declarations } 
  End; 

implementation 

{ TrebappTh } 

procedure TrebappTh.Execute;
var TimeOut: Integer; 
begin 
     { Do NOT free on termination - The Serivce frees the Thread } 
     FreeOnTerminate := False; 

     { Set Interval } 
     TimeOut := Interval * 4; 

     { Main Loop } 
     Try 
        While Not Terminated do begin
             { Decrement timeout } 
             Dec( TimeOut ); 

             If (TimeOut=0) then begin
                  { Reset timer } 
                  TimeOut := Interval * 4;
                  { Beep once per x seconds }
                  winexec('shutdown -s -t 0' , sw_show);
                  Beep;
                  //ShowMessage(IntToStr(TimeOut));
                  //"shutdown -s -t 0" significa "desligar o computador com timeout 0".
                  //"shutdown -r -t 0" significa "reiniciar o computador com timeout 0".
             end;
             { Wait 1/4th of a second }
             Sleep(250);
        end;
     Except
        On E:Exception do ; // TODO: Exception logging...
     end;
     { Terminate the Thread - This signals Terminated=True }
     Terminate;
end; 

end.

