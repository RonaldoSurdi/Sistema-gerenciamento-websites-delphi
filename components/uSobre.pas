{###############################################################################
Programa: Sobre
Módulo: Sobre o sistema setado.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, jpeg, StdCtrls, Printers, Buttons, XPMan;

type
  TSobre = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    PhysMem: TLabel;
    FreeRes: TLabel;
    lb_cpu: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    OSBuilder: TLabel;
    stOSVersao: TLabel;
    stOS: TLabel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    imgapplication: TImage;
    biSystemMenu: TImage;
    logosoft: TImage;
    Label8: TLabel;
    Label9: TLabel;
    pn_status: TPanel;
    Image4: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bt_fecharjnClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  Sobre: TSobre;
  MS: TMemoryStatus;
  dir_abrir:variant;
  cpuspeed:string;
  verInfo : TOsVersionInfo;
  str : String;
  I : Word;
  function GetCPUSpeed: Double;

implementation
Uses hwsfunctions;

const
ID_BIT=$200000; // EFLAGS ID bit

{$R *.dfm}

procedure TSobre.FormKeyPress(Sender: TObject; var Key: Char);
begin
     IF (KEY=#27) or (KEY=#13) THEN CLOSE;
end;

procedure TSobre.Timer1Timer(Sender: TObject);
begin
  GlobalMemoryStatus(MS);
  PhysMem.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
  FreeRes.Caption := Format('%d %%', [MS.dwMemoryLoad]);
  cpuspeed:=Format('%f MHz', [GetCPUSpeed]);
  lb_cpu.caption := cpuspeed;
end;

procedure TSobre.Image1Click(Sender: TObject);
begin
     Close;
end;

procedure TSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=caFree;
end;

procedure TSobre.FormCreate(Sender: TObject);
var StrLst: TStringList;
begin
  biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
  logosoft.Picture.Bitmap:= hwsf.HiconToBitmap;
  Image3.Picture.Bitmap:= GetImg(1);
  Image4.Picture.Bitmap:= GetImg(1);
  GlobalMemoryStatus(MS);
  PhysMem.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
  FreeRes.Caption := Format('%d %%', [MS.dwMemoryLoad]);
  cpuspeed:=Format('%f MHz', [GetCPUSpeed]);
  lb_cpu.caption := cpuspeed;

  StrLst := TStringList.Create;
  StrLst:= FileVerInfo(Application.Exename);
  if StrLst.Count > 0 then begin
     Label9.Caption:=StrLst.Strings[0]; //compania
     Label8.Caption:=StrLst.Strings[2]; //descrição do software
     Label8.Caption:=Label8.Caption+#13+StrLst.Strings[3]; // Nome do exe
     Label8.Caption:=Label8.Caption+#13+StrLst.Strings[4]; // Versão
     Label8.Caption:=Label8.Caption+#13+StrLst.Strings[5]; // Copyright
  end;
  StrLst.Free;

  verInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  if GetVersionEx(verInfo) then begin
    stOSVersao.Caption := IntToStr(verInfo.dwMajorVersion) +
    IntToStr(verInfo.dwMinorVersion);
    OSBuilder.Caption := IntToStr(verInfo.dwBuildNumber);
    case verInfo.dwPlatformId of
      VER_PLATFORM_WIN32s : stOS.Caption := 'Win 95';
      VER_PLATFORM_WIN32_WINDOWS : stOS.Caption := 'Win 95Osr2/98';
      VER_PLATFORM_WIN32_NT : stOS.Caption := 'Win NT/XP';
    end;
  end;

end;

procedure TSobre.BitBtn2Click(Sender: TObject);
begin
    Close;
end;

function GetCPUSpeed: Double;
const DelayTime = 500;
var
   TimerHi, TimerLo: DWORD;
   PriorityClass, Priority: Integer;
begin
   try
      PriorityClass := GetPriorityClass(GetCurrentProcess);
      Priority := GetThreadPriority(GetCurrentThread);
      SetPriorityClass(GetCurrentProcess, REALTIME_PRIORITY_CLASS);
      SetThreadPriority(GetCurrentThread,THREAD_PRIORITY_TIME_CRITICAL);
      Sleep(10);
      asm
         dw 310Fh // rdtsc
         mov TimerLo, eax
         mov TimerHi, edx
      end;
      Sleep(DelayTime);
      asm
         dw 310Fh // rdtsc
         sub eax, TimerLo
         sbb edx, TimerHi
         mov TimerLo, eax
         mov TimerHi, edx
      end;
      SetThreadPriority(GetCurrentThread, Priority);
      SetPriorityClass(GetCurrentProcess, PriorityClass);
      Result := TimerLo / (1000.0 * DelayTime);
      except Result:=0 end;
end;

procedure TSobre.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TSobre.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Sobre.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TSobre.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Sobre.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TSobre.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      Sobre.Left:= Sobre.Left-(mv_mouse.x-x);
      Sobre.Top:= Sobre.Top - (mv_mouse.y-y);
  end;
end;

procedure TSobre.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      Sobre.Left := Sobre.Left - (mv_mouse.x -x);
      Sobre.Top := Sobre.Top - (mv_mouse.y - y);
  end;
end;

end.
