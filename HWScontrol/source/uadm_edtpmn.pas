{###############################################################################
Programa: HWScontrol
Módulo: Menu principal.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_edtpmn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, yupack, Buttons, ExtCtrls, ToolWin, ComCtrls,
  OleCtrls, ShockwaveFlashObjects_TLB, DB, MPlayer, ImgList, XPMan, Menus;

type
  Tadm_edtpmn = class(TForm)
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
    PageControl1: TPageControl;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    chk_private: TCheckBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lbcp3: TComboBox;
    lbcp4: TEdit;
    UpDown1: TUpDown;
    ToolBar4: TToolBar;
    corfonte: TToolButton;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    RichEdit1: TRichEdit;
    PopupMenu_texto: TPopupMenu;
    Negrito1: TMenuItem;
    Italico1: TMenuItem;
    Sublinhado1: TMenuItem;
    N1: TMenuItem;
    Cordafonte1: TMenuItem;
    XPManifest1: TXPManifest;
    ColorDialog1: TColorDialog;
    ToolbarImages: TImageList;
    corfundo: TToolButton;
    Cordofundo1: TMenuItem;
    Panel5: TPanel;
    pn_corfundo: TYusoftGradientButton;
    Panel6: TPanel;
    pn_corfont: TYusoftGradientButton;
    lbcp6: TMemo;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    Panel7: TPanel;
    pn_corfundo2: TYusoftGradientButton;
    lbcp5: TLabeledEdit;
    Label5: TLabel;
    bt_localiza1: TSpeedButton;
    bt_limpar1: TSpeedButton;
    bt_reproduzir1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    pn_flash: TPanel;
    swf_logo: TShockwaveFlash;
    Panel4: TPanel;
    bt_closeflash: TSpeedButton;
    GroupBox_upsk: TGroupBox;
    Label4: TLabel;
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
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
    procedure Negrito1Click(Sender: TObject);
    procedure Italico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure Cordafonte1Click(Sender: TObject);
    procedure Cordofundo1Click(Sender: TObject);
    procedure pn_corfontClick(Sender: TObject);
    procedure pn_corfundoClick(Sender: TObject);
    procedure lbcp4Change(Sender: TObject);
    procedure lbcp3Change(Sender: TObject);
    procedure pn_corfundo2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bt_localiza1Click(Sender: TObject);
    procedure bt_limpar1Click(Sender: TObject);
    procedure bt_reproduzir1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_closeflashClick(Sender: TObject);
  private
    stream_fnd,stream_fndtmp: TMemoryStream;
    type_fnd,type_fndtmp: Integer;
    procedure monta_player;
    procedure addreg;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse,xeditavel,xinitsn: bool;
    xcodigo,xcod_sk,xcod_sk_origem,xcod_web: Integer;
    { Public declarations }
  end;

var
  adm_edtpmn: Tadm_edtpmn;

implementation

uses hwsfunctions, udm, SqlExpr;

{$R *.dfm}

procedure Tadm_edtpmn.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_edtpmn.bt_fecharClick(Sender: TObject);
begin
      close;
end;

procedure Tadm_edtpmn.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_edtpmn.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_edtpmn.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      adm_edtpmn.Left:= adm_edtpmn.Left-(mv_mouse.x-x);
      adm_edtpmn.Top:= adm_edtpmn.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_edtpmn.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_edtpmn.Left := adm_edtpmn.Left - (mv_mouse.x -x);
      adm_edtpmn.Top := adm_edtpmn.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_edtpmn.bt_newClick(Sender: TObject);
begin
      addreg;
      lbcp2.SetFocus;
end;

procedure Tadm_edtpmn.addreg;
begin
      lbcp1.Text:='novo';
      lbcp2.Text:='';
      lbcp3.ItemIndex:=0;
      lbcp4.Text:='12';
      stream_fnd.Clear;
      type_fnd:=0;
      lbcp5.Text:='0';
      lbcp6.Clear;
      chk_private.Checked:=true;
      bt_limpar1.Enabled:=false;
      bt_reproduzir1.Enabled:=false;
      GroupBox_upsk.Visible:=false;
end;

procedure Tadm_edtpmn.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;  
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
      stream_fnd:= TMemoryStream.Create;
      stream_fndtmp:= TMemoryStream.Create;
      type_fnd:=0;
      type_fndtmp:=0;
      xcodigo:=0;
      xcod_sk:=0;
      xcod_sk_origem:=0;
      xcod_web:=0;
      xinitsn:=true;
end;

procedure Tadm_edtpmn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      stream_fnd.Free;
      stream_fndtmp.Free;
      Action:=caFree;
end;

procedure Tadm_edtpmn.bt_delClick(Sender: TObject);
begin
    if (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf44,37249),'codigo',lbcp1.Text,true) then begin
           addreg;
        end;
    end;
end;

procedure Tadm_edtpmn.bt_saveClick(Sender: TObject);
var axcod,axrgb_r,axrgb_g,axrgb_b: integer;
begin
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
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf44,37249),'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf44,37249)+' (codigo,cod_sk,cod_web,descricao,fnt,fnt_size,fnt_b,fnt_i,fnt_s,fnt_cor,fnt_cor2,fnd,fnd_sz,fnd_tp,fnd_cor,fnd_cor2,obs,xconf1) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=xcod_sk;
            Params[2].AsInteger:=xcod_web;
            Params[3].AsString:=lbcp2.Text;
            Params[4].AsString:=lbcp3.Text;
            Params[5].AsInteger:=UpDown1.Position;
            Params[6].AsString:= BoolToStr(BoldButton.Down);
            Params[7].AsString:= BoolToStr(ItalicButton.Down);
            Params[8].AsString:= BoolToStr(UnderlineButton.Down);
            Params[9].AsString:= ColorToHTML(pn_corfont.LightColor);
            ExtractRGB(ColorToRGB(pn_corfont.LightColor),axrgb_r,axrgb_g,axrgb_b);
            Params[10].AsString:=FormatFloat('000',axrgb_r)+FormatFloat('000',axrgb_g)+FormatFloat('000',axrgb_b);
            stream_fnd.Seek(0,soFromBeginning);
            Params[11].LoadFromStream(stream_fnd,ftblob);
            Params[12].AsInteger:=StrtoInt(lbcp5.Text);
            Params[13].AsInteger:=type_fnd;
            Params[14].AsString:= ColorToHTML(pn_corfundo.LightColor);
            ExtractRGB(ColorToRGB(pn_corfundo.LightColor),axrgb_r,axrgb_g,axrgb_b);
            Params[15].AsString:=FormatFloat('000',axrgb_r)+FormatFloat('000',axrgb_g)+FormatFloat('000',axrgb_b);
            Params[16].Assign(lbcp6.Lines);
            Params[17].AsString:= BoolToStr(chk_private.Checked);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf44,37249)+' SET cod_sk=:p0,descricao=:p1,fnt=:p2,fnt_size=:p3,fnt_b=:p4,fnt_i=:p5,fnt_s=:p6,fnt_cor=:p7,fnt_cor2=:p8,fnd=:p9,fnd_sz=:p10,fnd_tp=:p11,fnd_cor=:p12,fnd_cor2=:p13,obs=:p14,xconf1=:p15 '+
                       'WHERE codigo=:p16';
            if rb_sk2.Checked then Params[0].AsInteger:=xcod_sk
            else Params[0].AsInteger:=xcod_sk_origem;
            Params[1].AsString:=lbcp2.Text;
            Params[2].AsString:=lbcp3.Text;
            Params[3].AsInteger:=UpDown1.Position;
            Params[4].AsString:= BoolToStr(BoldButton.Down);
            Params[5].AsString:= BoolToStr(ItalicButton.Down);
            Params[6].AsString:= BoolToStr(UnderlineButton.Down);
            Params[7].AsString:= ColorToHTML(pn_corfont.LightColor);
            ExtractRGB(ColorToRGB(pn_corfont.LightColor),axrgb_r,axrgb_g,axrgb_b);
            Params[8].AsString:=FormatFloat('000',axrgb_r)+FormatFloat('000',axrgb_g)+FormatFloat('000',axrgb_b);
            stream_fnd.Seek(0,soFromBeginning);
            Params[9].LoadFromStream(stream_fnd,ftblob);
            Params[10].AsInteger:=StrtoInt(lbcp5.Text);
            Params[11].AsInteger:=type_fnd;
            Params[12].AsString:= ColorToHTML(pn_corfundo.LightColor);
            ExtractRGB(ColorToRGB(pn_corfundo.LightColor),axrgb_r,axrgb_g,axrgb_b);
            Params[13].AsString:=FormatFloat('000',axrgb_r)+FormatFloat('000',axrgb_g)+FormatFloat('000',axrgb_b);
            Params[14].Assign(lbcp6.Lines);
            Params[15].AsString:= BoolToStr(chk_private.Checked);
            Params[16].AsInteger:=axcod;
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

procedure Tadm_edtpmn.NumKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_edtpmn.Negrito1Click(Sender: TObject);
begin
     if not BoldButton.Down then RichEdit1.Font.Style:=RichEdit1.Font.Style+[fsBold]
     else RichEdit1.Font.Style:=RichEdit1.Font.Style-[fsBold];
end;

procedure Tadm_edtpmn.Italico1Click(Sender: TObject);
begin
     if not ItalicButton.Down then RichEdit1.Font.Style:=RichEdit1.Font.Style+[fsItalic]
     else RichEdit1.Font.Style:=RichEdit1.Font.Style-[fsItalic];
end;

procedure Tadm_edtpmn.Sublinhado1Click(Sender: TObject);
begin
     if not UnderlineButton.Down then RichEdit1.Font.Style:=RichEdit1.Font.Style+[fsUnderline]
     else RichEdit1.Font.Style:=RichEdit1.Font.Style-[fsUnderline];
end;

procedure Tadm_edtpmn.Cordafonte1Click(Sender: TObject);
begin
     if ColorDialog1.Execute then begin
        RichEdit1.Font.Color:= ColorDialog1.Color;
        pn_corfont.LightColor:= ColorDialog1.Color;
        pn_corfont.ShadowColor:= ColorDialog1.Color;
     end;
end;

procedure Tadm_edtpmn.Cordofundo1Click(Sender: TObject);
begin
     if ColorDialog1.Execute then begin
        RichEdit1.Color:= ColorDialog1.Color;
        pn_corfundo.LightColor:= ColorDialog1.Color;
        pn_corfundo.ShadowColor:= ColorDialog1.Color;
        pn_corfundo2.LightColor:= ColorDialog1.Color;
        pn_corfundo2.ShadowColor:= ColorDialog1.Color;
     end;
end;

procedure Tadm_edtpmn.pn_corfontClick(Sender: TObject);
begin
      Cordafonte1.Click;
end;

procedure Tadm_edtpmn.pn_corfundoClick(Sender: TObject);
begin
      Cordofundo1.Click;
end;

procedure Tadm_edtpmn.lbcp4Change(Sender: TObject);
begin
      RichEdit1.Font.Size:=UpDown1.Position;
end;

procedure Tadm_edtpmn.lbcp3Change(Sender: TObject);
begin
      if lbcp3.ItemIndex>-1 then RichEdit1.Font.Name:=lbcp3.Text;
end;

procedure Tadm_edtpmn.pn_corfundo2Click(Sender: TObject);
begin
      Cordofundo1.Click;
end;

procedure Tadm_edtpmn.SpeedButton1Click(Sender: TObject);
begin
      Cordofundo1.Click;
end;

procedure Tadm_edtpmn.monta_player;
var erro: Boolean;
    ax_filenm: TFileName;
begin
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Carregando';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     stream_fndtmp.Seek(0,soFromBeginning);
     stream_fndtmp.LoadFromStream(stream_fnd);
     loadx.Progressloading.position:=25;
     stream_fndtmp.Seek(0,soFromBeginning);
     erro:= false;
     if stream_fndtmp.Size <= 0 then begin
        erro:= true;
     end;
     loadx.Progressloading.position:=50;
     if not erro then begin
        ax_filenm:= ExtractTempDir + 'tmpbtfnd.tmp';
        if FileExists(ax_filenm) then DeleteFile(ax_filenm);
        try
           stream_fndtmp.SaveToFile(ax_filenm);
           erro:= false;
        except
           erro:= true;
        end;
     end;
     loadx.Progressloading.position:=75;
     stream_fndtmp.Clear;
     if not erro then begin
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
     loadx.Progressloading.position:=100;
     if erro then begin
        if pn_flash.Visible then pn_flash.Visible:=false;
        loadx.Close;
        hwsf.BtMensagem('Erro ao carregar arquivo.');
     end else loadx.Close;
end;


procedure Tadm_edtpmn.bt_localiza1Click(Sender: TObject);
var ax_ext: string;
begin
      if OpenDialog1.Execute then begin
         ax_ext:=ExtractFileExt(OpenDialog1.FileName);
         if ax_ext='.swf' then type_fndtmp:=0
         else if ax_ext='.jpg' then type_fndtmp:=1
         else begin
            hwsf.BtMensagem('Extensão de arquivo inválida [swf/jpg].');
            exit;
         end;
         stream_fndtmp.LoadFromFile(OpenDialog1.FileName);
         stream_fndtmp.Seek(0,soFromBeginning);
         if stream_fndtmp.Size>700000 then begin
            hwsf.BtMensagem('Arquivo muito grande [Limite 700kb].');
         end else begin
            stream_fnd.LoadFromStream(stream_fndtmp);
            stream_fnd.Seek(0,soFromBeginning);
            lbcp5.Text:=IntToStr(stream_fnd.Size);
            type_fnd:=type_fndtmp;
            bt_limpar1.Enabled:=true;
            bt_reproduzir1.Enabled:=true;
         end;
         stream_fndtmp.Clear;
      end;
end;

procedure Tadm_edtpmn.bt_limpar1Click(Sender: TObject);
begin
      lbcp5.Text:='0';
      stream_fnd.Clear;
      bt_limpar1.Enabled:=false;
      bt_reproduzir1.Enabled:=false;
end;

procedure Tadm_edtpmn.bt_reproduzir1Click(Sender: TObject);
begin
      monta_player;
end;

procedure Tadm_edtpmn.FormActivate(Sender: TObject);
var xindfnt: Integer;
    xcolor: TColor;
begin
  if not xinitsn then exit;
     xinitsn:=false;
     if not xeditavel then begin
        Panel3.Visible:=false;
        bt_localiza1.Enabled:=false;
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
               CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf44,37249)+
                          ' WHERE codigo='+#39+IntToStr(xcodigo)+#39;
               Open;
               xcod_sk_origem:=fieldbyname('cod_sk').AsInteger;
               loadx.Progressloading.position:=50;
               lbcp1.Text:=IntToStr(xcodigo);
               lbcp2.Text:=fieldbyname('descricao').AsString;
               lbcp3.Text:=fieldbyname('fnt').AsString;
               RichEdit1.Font.Name:=lbcp3.Text;
               lbcp4.Text:=fieldbyname('fnt_size').AsString;
               RichEdit1.Font.Size:=UpDown1.Position;
               if StrToBool(fieldbyname('fnt_b').AsString) then begin
                  BoldButton.Down:=true;
                  RichEdit1.Font.Style:=RichEdit1.Font.Style+[fsBold];
               end else begin
                  BoldButton.Down:=false;
                  RichEdit1.Font.Style:=RichEdit1.Font.Style-[fsBold];
               end;
               if StrToBool(fieldbyname('fnt_i').AsString) then begin
                  ItalicButton.Down:=true;
                  RichEdit1.Font.Style:=RichEdit1.Font.Style+[fsItalic];
               end else begin
                  ItalicButton.Down:=false;
                  RichEdit1.Font.Style:=RichEdit1.Font.Style-[fsItalic];
               end;
               if StrToBool(fieldbyname('fnt_s').AsString) then begin
                  UnderlineButton.Down:=true;
                  RichEdit1.Font.Style:=RichEdit1.Font.Style+[fsUnderline];
               end else begin
                  UnderlineButton.Down:=false;
                  RichEdit1.Font.Style:=RichEdit1.Font.Style-[fsUnderline];
               end;
               try
                    xcolor:=RGB(StrtoInt(copy(fieldbyname('fnt_cor2').AsString,1,3)),
                                StrtoInt(copy(fieldbyname('fnt_cor2').AsString,4,3)),
                                StrtoInt(copy(fieldbyname('fnt_cor2').AsString,7,3)));
               except
                    xcolor:=clBlack;
               end;
               RichEdit1.Font.Color:= xcolor;
               pn_corfont.LightColor:= xcolor;
               pn_corfont.ShadowColor:= xcolor;
               TBlobField(FieldByName('fnd')).SaveToStream(stream_fnd);
               loadx.Progressloading.position:=65;
               lbcp5.Text:=fieldbyname('fnd_sz').AsString;
               type_fnd:=fieldbyname('fnd_tp').AsInteger;
               loadx.Progressloading.position:=75;
               try
                    xcolor:=RGB(StrtoInt(copy(fieldbyname('fnd_cor2').AsString,1,3)),
                                StrtoInt(copy(fieldbyname('fnd_cor2').AsString,4,3)),
                                StrtoInt(copy(fieldbyname('fnd_cor2').AsString,7,3)));
               except
                    xcolor:=clWhite;
               end;
               RichEdit1.Color:= xcolor;
               pn_corfundo.LightColor:= xcolor;
               pn_corfundo.ShadowColor:= xcolor;
               pn_corfundo2.LightColor:= xcolor;
               pn_corfundo2.ShadowColor:= xcolor;
               loadx.Progressloading.position:=85;
               lbcp6.Lines.Assign(fieldbyname('obs'));
               chk_private.Checked:=StrToBool(fieldbyname('xconf1').AsString);
               if lbcp5.Text='0' then begin
                  bt_limpar1.Enabled:=false;
                  bt_reproduzir1.Enabled:=false;
               end;
               loadx.Progressloading.position:=95;
               if not xeditavel then begin
                  bt_limpar1.Enabled:=false;
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

procedure Tadm_edtpmn.bt_closeflashClick(Sender: TObject);
begin
      pn_flash.Visible:=false;
end;

end.
