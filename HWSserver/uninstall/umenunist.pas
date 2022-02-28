unit umenunist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, ToolWin,
  Shellapi, filectrl, ShlObj, ActiveX, Registry, ComObj, jpeg;

type
  Tmenuinst = class(TForm)
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    ToolBar1: TToolBar;
    bt_iniciar: TSpeedButton;
    bt_cancelar: TSpeedButton;
    Label1: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_iniciarClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    inexecut: Boolean;
    { Public declarations }
  end;

var
  menuinst: Tmenuinst;

implementation

{$R *.dfm}

procedure Tmenuinst.bt_cancelarClick(Sender: TObject);
begin
      Close;
end;

procedure Tmenuinst.bt_iniciarClick(Sender: TObject);
var HprevHist: HWND;
    xtempfile,xparams: string;

    function ExtractTempDir : String;
    var Buffer : Array[0..144] of Char;
        xdirtmp: String;
    begin
        GetTempPath(144,Buffer);
        xdirtmp:= StrPas(Buffer);
        if (copy(xdirtmp,Length(xdirtmp),1)<>'\') and
           (copy(xdirtmp,Length(xdirtmp),1)<>'/') then
           xdirtmp:=xdirtmp+'\';
        Result:=xdirtmp;
    end;

    procedure Exectmpfile; // procedure to delete the current program
      function GetTmpFileName(ext: string): string;
      var pc: PChar;
      begin
          pc := StrAlloc(MAX_PATH + 1);
          GetTempFileName(PChar(ExtractTempDir), 'EZC', 0, pc);
          Result := string(pc);
          Result := ChangeFileExt(Result, ext);
          StrDispose(pc);
      end;
    var batchfile: TStringList;
        batchname: string;
        apagarexe : string;
    begin
        apagarexe :=ExtractFilePath(Application.ExeName);
        if (TDRiveType(GetDriveType(PChar('C:\'))) = dtFloppy) or (TDRiveType(GetDriveType(PChar('C:\'))) = dtFixed) then begin
          batchname := GetTmpFileName('.bat');
          FileSetAttr(ParamStr(0), 0);
          batchfile := TStringList.Create;
          with batchfile do begin
            try
              Add(':Label1');
              Add(xtempfile+xparams);
              Add('del ' + batchname);
              SaveToFile(batchname);
              ChDir(ExtractTempDir);
              WinExec(PChar(batchname), SW_HIDE);
            finally
              batchfile.Free;
            end;
            Halt;
          end;
        end; //else with Owner as TForm do Close;
    end;

begin
      if (not CheckBox1.Checked) and
         (not CheckBox2.Checked) and
         (not CheckBox3.Checked) and
         (not CheckBox4.Checked) then begin
         ShowMessage('Nenhum item selecionado.');
         exit;
      end;
      HprevHist := FindWindow(Nil, PChar('HWS Web Server'));
      if HprevHist <> 0 then begin
         ShowMessage('HWSwebserver está ativo, feche todos os programas HWS e tente novamente.');
         exit;
      end;
      inexecut:=true;
      Panel1.Enabled:=false;
      xtempfile:=ExtractTempDir+ExtractFileName(Application.ExeName);
      if FileExists(xtempfile) then DeleteFile(xtempfile);
      CopyFile(PChar(Application.ExeName),PChar(xtempfile),true);
      if not FileExists(xtempfile) then begin
         ShowMessage('Ocorreu algum erro tente novamente.');
         Panel1.Enabled:=true;
         inexecut:=false;
         exit;
      end;
      xparams:=' ';
      if CheckBox1.Checked then xparams:=xparams+'/sys=1'
      else xparams:=xparams+'/sys=0';
      xparams:=xparams+' ';
      if CheckBox2.Checked then xparams:=xparams+'/ico=1'
      else xparams:=xparams+'/ico=0';
      xparams:=xparams+' ';
      if CheckBox3.Checked then xparams:=xparams+'/lib=1'
      else xparams:=xparams+'/lib=0';
      xparams:=xparams+' ';
      if CheckBox4.Checked then xparams:=xparams+'/cfg=1'
      else xparams:=xparams+'/cfg=0';
      xparams:=xparams+' /pth='+ExtractFilePath(Application.ExeName);
      //finalizando
      Panel1.Enabled:=true;
      inexecut:=false;
      Application.ProcessMessages;
      Exectmpfile;
      Close;
end;

procedure Tmenuinst.CheckBox1Click(Sender: TObject);
begin
      if CheckBox1.Checked then begin
         CheckBox2.Checked:=true;
         CheckBox2.Enabled:=false;
      end else CheckBox2.Enabled:=true;
end;

procedure Tmenuinst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if inexecut then Action:=caNone
      else Action:=caFree;
end;

procedure Tmenuinst.FormCreate(Sender: TObject);
begin
      inexecut:=false;
end;

end.
