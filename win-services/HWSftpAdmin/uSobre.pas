{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
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
    imgapplication: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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
  GlobalMemoryStatus(MS);
  PhysMem.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
  FreeRes.Caption := Format('%d %%', [MS.dwMemoryLoad]);
  cpuspeed:=Format('%f MHz', [GetCPUSpeed]);
  lb_cpu.caption := cpuspeed;
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
