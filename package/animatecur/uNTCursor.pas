unit uNTCursor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TNTCursor = class(TDataModule)
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure start(enabled: boolean);
    procedure DataModule2Create(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  NTCursor: TNTCursor;
  Curs:     Integer;
  StopCurs: Boolean;

implementation

{$R *.DFM}
{$R NTCursor.res}

procedure TNTCursor.DataModule2Create(Sender: TObject);
begin
  screen.cursors[1] := LoadCursor(hInstance, pChar('CURSOR_1'));
  screen.cursors[2] := LoadCursor(hInstance, pChar('CURSOR_2'));
  screen.cursors[3] := LoadCursor(hInstance, pChar('CURSOR_3'));
  screen.cursors[4] := LoadCursor(hInstance, pChar('CURSOR_4'));
  screen.cursors[5] := LoadCursor(hInstance, pChar('CURSOR_5'));
  screen.cursors[6] := LoadCursor(hInstance, pChar('CURSOR_6'));
  screen.cursors[7] := LoadCursor(hInstance, pChar('CURSOR_7'));
  screen.cursors[8] := LoadCursor(hInstance, pChar('CURSOR_8'));
  screen.cursors[9] := LoadCursor(hInstance, pChar('CURSOR_9'));
  screen.cursors[10]:= LoadCursor(hInstance, pChar('CURSOR_10'));
  screen.cursors[11]:= LoadCursor(hInstance, pChar('CURSOR_11'));
  screen.cursors[12]:= LoadCursor(hInstance, pChar('CURSOR_12'));
  Curs := 0;

end;
procedure TNTCursor.TimerTimer(Sender: TObject);
begin
     inc(Curs);
     if Curs > 12 then
     begin
          Curs := 1;
          if StopCurs then timer.enabled := false;
          if StopCurs then Curs := crDefault;
     end;
     screen.cursor:= Curs;
end;
procedure TNTCursor.start(enabled: boolean);
begin
     StopCurs := not enabled;
     if not timer.enabled then timer.enabled := enabled;
end;

end.
