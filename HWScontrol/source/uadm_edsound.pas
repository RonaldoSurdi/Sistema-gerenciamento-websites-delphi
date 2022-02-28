{###############################################################################
Programa: HWScontrol
Módulo: Menu principal.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_edsound;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, yupack, Buttons, ExtCtrls, ToolWin, ComCtrls,
  OleCtrls, ShockwaveFlashObjects_TLB, DB, MPlayer;

type
  Tadm_edsound = class(TForm)
    pn_status: TPanel;
    Image4: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    Panel1: TPanel;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    bt_localiza1: TSpeedButton;
    bt_limpar1: TSpeedButton;
    bt_reproduzir1: TSpeedButton;
    bt_localiza2: TSpeedButton;
    bt_limpar2: TSpeedButton;
    bt_reproduzir2: TSpeedButton;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    chk_private: TCheckBox;
    lbcp3: TLabeledEdit;
    lbcp4: TLabeledEdit;
    pn_flash: TPanel;
    swf_logo: TShockwaveFlash;
    Panel4: TPanel;
    bt_closeflash: TSpeedButton;
    ProgresTimer: TTimer;
    pn_mp3player: TPanel;
    Progress: TProgressBar;
    bt_playmp3: TSpeedButton;
    bt_stopmp3: TSpeedButton;
    bt_closemp3: TSpeedButton;
    mp3player: TMediaPlayer;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox_upsk: TGroupBox;
    Label3: TLabel;
    rb_sk1: TRadioButton;
    rb_sk2: TRadioButton;
    procedure bt_sobreClick(Sender: TObject);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_newClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_limpar1Click(Sender: TObject);
    procedure bt_limpar2Click(Sender: TObject);
    procedure bt_localiza1Click(Sender: TObject);
    procedure bt_localiza2Click(Sender: TObject);
    procedure bt_reproduzir1Click(Sender: TObject);
    procedure bt_closeflashClick(Sender: TObject);
    procedure bt_reproduzir2Click(Sender: TObject);
    procedure bt_closemp3Click(Sender: TObject);
    procedure ProgresTimerTimer(Sender: TObject);
    procedure bt_stopmp3Click(Sender: TObject);
    procedure bt_playmp3Click(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    stream_mouseover,stream_mouseclick,stream_mousetmp: TMemoryStream;
    type_mouseover,type_mouseclick,type_mousetmp: Integer;
    procedure monta_player(xtipo,xfile:byte);
    procedure addreg;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse,xeditavel,xinitsn: bool;
    xcodigo,xcod_sk,xcod_sk_origem,xcod_web: Integer;
    { Public declarations }
  end;

var
  adm_edsound: Tadm_edsound;

implementation

uses hwsfunctions, udm, SqlExpr;

{$R *.dfm}

procedure Tadm_edsound.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_edsound.bt_fecharClick(Sender: TObject);
begin
      close;
end;

procedure Tadm_edsound.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_edsound.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_edsound.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      adm_edsound.Left:= adm_edsound.Left-(mv_mouse.x-x);
      adm_edsound.Top:= adm_edsound.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_edsound.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_edsound.Left := adm_edsound.Left - (mv_mouse.x -x);
      adm_edsound.Top := adm_edsound.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_edsound.bt_newClick(Sender: TObject);
begin
      addreg;
      lbcp2.SetFocus;
end;

procedure Tadm_edsound.addreg;
begin
      lbcp1.Text:='novo';
      lbcp2.Text:='';
      stream_mouseover.Clear;
      type_mouseover:=0;
      lbcp3.Text:='0';
      stream_mouseclick.Clear;
      type_mouseover:=0;
      lbcp4.Text:='0';
      chk_private.Checked:=true;
      bt_limpar1.Enabled:=false;
      bt_reproduzir1.Enabled:=false;
      bt_limpar2.Enabled:=false;
      bt_reproduzir2.Enabled:=false;
      GroupBox_upsk.Visible:=false;
end;

procedure Tadm_edsound.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;  
      Image3.Picture.Bitmap:= GetImg(1);
      Image4.Picture.Bitmap:= GetImg(1);
      stream_mouseover:= TMemoryStream.Create;
      stream_mouseclick:= TMemoryStream.Create;
      stream_mousetmp:= TMemoryStream.Create;
      type_mouseover:=0;
      type_mouseclick:=0;
      type_mousetmp:=0;
      Progress.Max:=0;
      xcodigo:=0;
      xcod_sk:=0;
      xcod_web:=0;
      xcod_sk_origem:=0;
      xinitsn:=true;
end;

procedure Tadm_edsound.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      stream_mouseover.Free;
      stream_mouseclick.Free;
      stream_mousetmp.Free;
      Action:=caFree;
end;

procedure Tadm_edsound.bt_limpar1Click(Sender: TObject);
begin
      lbcp3.Text:='0';
      stream_mouseover.Clear;
      bt_limpar1.Enabled:=false;
      bt_reproduzir1.Enabled:=false;
end;

procedure Tadm_edsound.bt_limpar2Click(Sender: TObject);
begin
      lbcp4.Text:='0';
      stream_mouseclick.Clear;
      bt_limpar2.Enabled:=false;
      bt_reproduzir2.Enabled:=false;
end;

procedure Tadm_edsound.bt_localiza1Click(Sender: TObject);
var ax_ext: string;
begin
      if OpenDialog1.Execute then begin
         ax_ext:=ExtractFileExt(OpenDialog1.FileName);
         if ax_ext='.swf' then type_mousetmp:=0
         else if ax_ext='.mp3' then type_mousetmp:=1
         else if ax_ext='.jpg' then type_mousetmp:=2
         else begin
            hwsf.BtMensagem('Extensão de arquivo inválida [swf/mp3/jpg].');
            exit;
         end;
         stream_mousetmp.LoadFromFile(OpenDialog1.FileName);
         stream_mousetmp.Seek(0,soFromBeginning);
         if stream_mousetmp.Size>700000 then begin
            hwsf.BtMensagem('Arquivo muito grande [Limite 700kb].');
         end else begin
            stream_mouseover.LoadFromStream(stream_mousetmp);
            stream_mouseover.Seek(0,soFromBeginning);
            lbcp3.Text:=IntToStr(stream_mouseover.Size);
            type_mouseover:=type_mousetmp;
            bt_limpar1.Enabled:=true;
            bt_reproduzir1.Enabled:=true;
         end;
         stream_mousetmp.Clear;
      end;
end;

procedure Tadm_edsound.bt_localiza2Click(Sender: TObject);
var ax_ext: string;
begin
      if OpenDialog1.Execute then begin
         ax_ext:=ExtractFileExt(OpenDialog1.FileName);
         if ax_ext='.swf' then type_mousetmp:=0
         else if ax_ext='.mp3' then type_mousetmp:=1
         else if ax_ext='.jpg' then type_mousetmp:=2
         else begin
            hwsf.BtMensagem('Extensão de arquivo inválida [swf/mp3/jpg].');
            exit;
         end;
         stream_mousetmp.LoadFromFile(OpenDialog1.FileName);
         stream_mousetmp.Seek(0,soFromBeginning);
         if stream_mousetmp.Size>700000 then begin
            hwsf.BtMensagem('Arquivo muito grande [Limite 700kb].');
         end else begin
            stream_mouseclick.LoadFromStream(stream_mousetmp);
            stream_mouseclick.Seek(0,soFromBeginning);
            lbcp4.Text:=IntToStr(stream_mouseclick.Size);
            type_mouseclick:=type_mousetmp;
            bt_limpar2.Enabled:=true;
            bt_reproduzir2.Enabled:=true;
         end;
         stream_mousetmp.Clear;
      end;
end;

procedure Tadm_edsound.bt_reproduzir1Click(Sender: TObject);
begin
      monta_player(0,type_mouseover);
end;

procedure Tadm_edsound.bt_reproduzir2Click(Sender: TObject);
begin
      monta_player(1,type_mouseclick);
end;

procedure Tadm_edsound.monta_player(xtipo,xfile:byte);
var erro: Boolean;
    ax_filenm: TFileName;
begin
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Carregando';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     Case xtipo of
        0: begin
           stream_mouseover.Seek(0,soFromBeginning);
           stream_mousetmp.LoadFromStream(stream_mouseover);
        end;
        1: begin
           stream_mouseclick.Seek(0,soFromBeginning);
           stream_mousetmp.LoadFromStream(stream_mouseclick);
        end;
     end;
     loadx.Progressloading.position:=25;
     stream_mousetmp.Seek(0,soFromBeginning);
     erro:= false;
     if stream_mousetmp.Size <= 0 then begin
        erro:= true;
     end;
     loadx.Progressloading.position:=50;
     if not erro then begin
        if pn_mp3player.Visible then begin
           mp3player.Close;
           pn_mp3player.Visible:=false;
           ProgresTimer.Enabled:=false;
        end;
        ax_filenm:= ExtractTempDir + 'tmpbtev.mp3';
        if FileExists(ax_filenm) then DeleteFile(ax_filenm);
        try
           stream_mousetmp.SaveToFile(ax_filenm);
           erro:= false;
        except
           erro:= true;
        end;
     end;
     loadx.Progressloading.position:=75;
     stream_mousetmp.Clear;
     if not erro then begin
        if xfile = 1 then begin
           pn_mp3player.Visible:=true;
           ProgresTimer.Enabled:=true;
           Progress.Max:=0;
           mp3player.Close;
           mp3player.FileName:=ax_filenm;
           mp3player.Open;
           Progress.Max := mp3player.Length;
           mp3player.Play;
        end else begin
            pn_flash.Visible:=true;
            try
              swf_logo.Visible:=true;
              swf_logo.LoadMovie(0,'lixo');
              swf_logo.LoadMovie(0,ax_filenm);
              erro:= false;
            except
              erro:= true;
            end;
        end;
     end;
     loadx.Progressloading.position:=100;
     if erro then begin
        if xfile = 1 then begin
           if pn_mp3player.Visible then pn_mp3player.Visible:=false;
           ProgresTimer.Enabled:=false;
        end else begin
           if pn_flash.Visible then pn_flash.Visible:=false;
        end;
        loadx.Close;
        hwsf.BtMensagem('Erro ao carregar arquivo.');
     end else loadx.Close;
end;

procedure Tadm_edsound.bt_closeflashClick(Sender: TObject);
begin
      pn_flash.Visible:=false;
end;

procedure Tadm_edsound.bt_closemp3Click(Sender: TObject);
var ax_filenm: string;
begin
      mp3player.Close;
      pn_mp3player.Visible:=false;
      ProgresTimer.Enabled:=false;
      ax_filenm:= ExtractTempDir + 'tmpbtev.mp3';
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
end;

procedure Tadm_edsound.ProgresTimerTimer(Sender: TObject);
begin
  if pn_mp3player.Visible then begin
     if Progress.Max<>0 then
        Progress.Position := mp3player.Position;
  end;
end;

procedure Tadm_edsound.bt_stopmp3Click(Sender: TObject);
begin
    mp3player.Stop;
end;

procedure Tadm_edsound.bt_playmp3Click(Sender: TObject);
begin
      mp3player.Play;
end;

procedure Tadm_edsound.bt_delClick(Sender: TObject);
begin
    if (lbcp1.Text<>'novo') then begin
        if pn_mp3player.Visible then begin
           mp3player.Close;
           pn_mp3player.Visible:=false;
           ProgresTimer.Enabled:=false;
        end;
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf47,37249),'codigo',lbcp1.Text,true) then begin
           addreg;
        end;
    end;
end;

procedure Tadm_edsound.bt_saveClick(Sender: TObject);
var axcod: integer;
begin
     if pn_mp3player.Visible then begin
        mp3player.Close;
        pn_mp3player.Visible:=false;
        ProgresTimer.Enabled:=false;
     end;
     if lbcp2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        lbcp2.SetFocus;
        exit;
     end;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     //insert or modify do cadatro principal
     loadx.Progressloading.position:=25;
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf47,37249),'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf47,37249)+' (codigo,cod_sk,cod_web,descricao,cp1,sz1,tp1,cp2,sz2,tp2,xconf1) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=xcod_sk;
            Params[2].AsInteger:=xcod_web;
            Params[3].AsString:=lbcp2.Text;
            stream_mouseover.Seek(0,soFromBeginning);
            Params[4].LoadFromStream(stream_mouseover,ftblob);
            Params[5].AsInteger:=StrtoInt(lbcp3.Text);
            Params[6].AsInteger:=type_mouseover;
            stream_mouseclick.Seek(0,soFromBeginning);
            Params[7].LoadFromStream(stream_mouseclick,ftblob);
            Params[8].AsInteger:=StrtoInt(lbcp4.Text);
            Params[9].AsInteger:=type_mouseclick;
            Params[10].AsString:= BoolToStr(chk_private.Checked);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf47,37249)+' SET cod_sk=:p0,descricao=:p1,cp1=:p2,sz1=:p3,tp1=:p4,cp2=:p5,sz2=:p6,tp2=:p7,xconf1=:p8 '+
                       'WHERE codigo=:p9';
            if rb_sk2.Checked then Params[0].AsInteger:=xcod_sk
            else Params[0].AsInteger:=xcod_sk_origem;
            Params[1].AsString:=lbcp2.Text;
            stream_mouseover.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(stream_mouseover,ftblob);
            Params[3].AsInteger:=StrtoInt(lbcp3.Text);
            Params[4].AsInteger:=type_mouseover;
            stream_mouseclick.Seek(0,soFromBeginning);
            Params[5].LoadFromStream(stream_mouseclick,ftblob);
            Params[6].AsInteger:=StrtoInt(lbcp4.Text);
            Params[7].AsInteger:=type_mouseclick;
            Params[8].AsString:= BoolToStr(chk_private.Checked);
            Params[9].AsInteger:=axcod;
        end;
     end;
     loadx.Progressloading.position:=50;
     try
          dm.executa.Execute;
     except
          loadx.Close;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     loadx.Progressloading.position:=100;
     loadx.Close;
     hwsf.BtMensagem('Dados gravados com sucesso.');
     Close;
end;

procedure Tadm_edsound.FormActivate(Sender: TObject);
begin
     if not xinitsn then exit;
     xinitsn:=false;
     if not xeditavel then begin
        Panel3.Visible:=false;
        bt_localiza1.Enabled:=false;
        bt_localiza2.Enabled:=false;
        lbcp2.ReadOnly:=true;
        lbcp2.Color:=$00F5F5F5;
     end;
     if xcodigo=0 then addreg
     else begin
          loadx := Tloadx.Create(Application);
          loadx.lbloading.Caption:='Carregando';
          loadx.Show;
          loadx.Update;
          loadx.Progressloading.position:=0;
          With dm.executa do begin
               loadx.Progressloading.position:=25;
               CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf47,37249)+
                          ' WHERE codigo='+#39+IntToStr(xcodigo)+#39;
               Open;
               xcod_sk_origem:=fieldbyname('cod_sk').AsInteger;
               loadx.Progressloading.position:=50;
               lbcp1.Text:=IntToStr(xcodigo);
               lbcp2.Text:=fieldbyname('descricao').AsString;
               TBlobField(FieldByName('cp1')).SaveToStream(stream_mouseover);
               loadx.Progressloading.position:=65;
               lbcp3.Text:=fieldbyname('sz1').AsString;
               type_mouseover:=fieldbyname('tp1').AsInteger;
               TBlobField(FieldByName('cp2')).SaveToStream(stream_mouseclick);
               loadx.Progressloading.position:=75;
               lbcp4.Text:=fieldbyname('sz2').AsString;
               type_mouseclick:=fieldbyname('tp2').AsInteger;
               chk_private.Checked:=StrToBool(fieldbyname('xconf1').AsString);
               loadx.Progressloading.position:=85;
               if lbcp3.Text='0' then begin
                  bt_limpar1.Enabled:=false;
                  bt_reproduzir1.Enabled:=false;
               end;
               loadx.Progressloading.position:=95;
               if lbcp4.Text='0' then begin
                  bt_limpar2.Enabled:=false;
                  bt_reproduzir2.Enabled:=false;
               end;
               if not xeditavel then begin
                  bt_limpar1.Enabled:=false;
                  bt_limpar2.Enabled:=false;
               end;
               if xcod_sk<>xcod_sk_origem then begin
                  GroupBox_upsk.Visible:=true;
               end;
               loadx.Progressloading.position:=100;
               Close;
               loadx.Close;
          end;
     end;
end;

end.
