{###############################################################################
Programa: HWSwebServer
M�dulo: Cadastro de cidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relat�rio de acessos:
27/09/2004 - Ronaldo Surdi //Codigica��o do m�dulo.
###############################################################################}

unit uadm_languagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan, ExtDlgs;


type
  Tadm_languagens = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    PageControl1: TPageControl;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    bt_maximiza: TSpeedButton;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel_search: TPanel;
    Edit_search: TEdit;
    ComboBox_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countreg: TLabel;
    bt_search: TSpeedButton;
    XPManifest1: TXPManifest;
    lbcp4: TLabeledEdit;
    ckb_padrao: TCheckBox;
    Panel3: TPanel;
    swf_logo: TShockwaveFlash;
    Label8: TLabel;
    bt_import: TSpeedButton;
    bt_clear: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    lbcp3: TComboBox;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_sobreClick(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure bt_importClick(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    cv : string;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    xlogotmp : TMemoryStream;
    languagemdefault: Bool;
    procedure atualiza_grade;
    procedure addreg;
    procedure filtrar_reg;
    procedure getLogo;
    procedure abretmplogo;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_languagens: Tadm_languagens;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_languagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     xlogotmp.Free;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     Action:=cafree;
end;

procedure Tadm_languagens.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_languagens.FormCreate(Sender: TObject);
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando ambiente';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando ambiente';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;  
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     xlogotmp:= TMemoryStream.Create;
     DBGrid1.DataSource:=dm.source_sql3;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('C�digo');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Descri��o');
     cp_search[1]:= 'descricao';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Sigla');
     cp_search[2]:= 'sigla';
     tp_search[2]:= 1;
     tm_search[2]:= 3;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=50;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='C�digo';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='sigla';
     DBGrid1.Columns.Items[1].Title.Caption:='Sigla';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='descricao';
     DBGrid1.Columns.Items[2].Title.Caption:='Descri��o';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT codigo,descricao,sigla,trd,pdr FROM '+EnDecryptString(Serverconect.vrf48,37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_languagens.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_languagens.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_languagens.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_languagens.atualiza_grade;
begin
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql3 do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('descricao').AsString;
            lbcp3.Text:= fieldbyname('trd').AsString;
            lbcp4.Text:= fieldbyname('sigla').AsString;
            ckb_padrao.Checked:=StrToBool(fieldbyname('pdr').AsString);
         end;
      end;
      languagemdefault:=ckb_padrao.Checked;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      getLogo;
end;

procedure Tadm_languagens.addreg;
begin
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp3.Text:= '';
     lbcp4.Text:= '';
     ckb_padrao.Checked:=false;
     getLogo;
end;

procedure Tadm_languagens.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_languagens.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_languagens.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_languagens.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_languagens.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_languagens.Left:= adm_languagens.Left-(mv_mouse.x-x);
      adm_languagens.Top:= adm_languagens.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_languagens.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_languagens.Left := adm_languagens.Left - (mv_mouse.x -x);
      adm_languagens.Top := adm_languagens.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_languagens.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_languagens.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  If not ((Screen.ActiveControl is TCustomMemo) or (Screen.ActiveControl is TCustomGrid) or
    (Screen.ActiveForm.ClassName = 'TMessageForm')) then begin
    If Msg.message = WM_KEYDOWN then begin
       Case Msg.wParam of
        VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
        VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
       end;
    end;
  end;
end;


procedure Tadm_languagens.bt_maximizaClick(Sender: TObject);
begin
    if adm_languagens.WindowState=wsMaximized then adm_languagens.WindowState:=wsNormal
    else adm_languagens.WindowState:=wsMaximized;
end;

procedure Tadm_languagens.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_languagens.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_languagens.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf48,37249),'codigo',lbcp1.Text,true) then begin
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_languagens.bt_saveClick(Sender: TObject);
var axcod : integer;
    xexecutaimg: Boolean;
begin
     if (not languagemdefault) and (ckb_padrao.Checked) then
     if hwsf.BtConfirma('Tornar linguagem padr�o para o sistema?') then begin
        try
           with dm.executa do begin
                CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf48,37249)+' SET pdr=:p0 ';
                Params[0].AsString:=BoolToStr(false);
                Execute;
           end;
        except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
        end;
     end else ckb_padrao.Checked:=false;
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf48,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf48,37249)+' (codigo,descricao,trd,sigla,pdr) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp2.Text;
            Params[2].AsString:=lbcp3.Text;
            Params[3].AsString:=lbcp4.Text;
            Params[4].AsString:=BoolToStr(ckb_padrao.Checked);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf48,37249)+' SET descricao=:p0,trd=:p1,sigla=:p2,pdr=:p3 '+
                       'WHERE codigo=:p4';
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsString:=lbcp3.Text;
            Params[2].AsString:=lbcp4.Text;
            Params[3].AsString:=BoolToStr(ckb_padrao.Checked);
            Params[4].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     //gravar logo
     Application.ProcessMessages;
     xlogotmp.Seek(0,soFromBeginning);
     xexecutaimg:=true;
     xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf48,37249),'UPDT','codigo','','img','','','',IntToStr(axcod),xlogotmp,nil);
     if not xexecutaimg then begin
        hwsf.BtMensagem('Erro ao gravar dados bin�rios.');
        exit;
     end;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     lbcp1.Text:=InttoStr(axcod);
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_languagens.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tadm_languagens.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tadm_languagens.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_languagens.filtrar_reg;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql3.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
        else dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tadm_languagens.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_languagens.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        if ComboBox_search.ItemIndex = 2 then Edit_search.CharCase:=ecUpperCase
        else Edit_search.CharCase:=ecNormal;
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_languagens.Edit_searchKeyPress(Sender: TObject;
  var Key: Char);
begin
      if tp_search[ComboBox_search.ItemIndex]=0 then begin
         Case key of
           '0'..'9' :;
           #13, #8, #27:
         else
           Key := #0;
         end;
      end;
end;

procedure Tadm_languagens.getLogo;
begin
     xlogotmp.Clear;
     With dm.executa6 do begin
        CommandText:='SELECT img FROM '+EnDecryptString(Serverconect.vrf48,37249)+' WHERE codigo='+#39+lbcp1.Text+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('img')).SaveToStream(xlogotmp);
        end;
        Close;
     end;
     abretmplogo;
end;

procedure Tadm_languagens.bt_importClick(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then begin
        try
           xlogotmp.Clear;
           xlogotmp.LoadFromFile(OpenPictureDialog1.FileName);
        finally
           abretmplogo;
        end;
     end;
end;

procedure Tadm_languagens.bt_clearClick(Sender: TObject);
begin
     Try
       xlogotmp.Clear;
       abretmplogo;
     Except End;
end;

procedure Tadm_languagens.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xlogotmp.Seek(0,soFromBeginning);
    if xlogotmp.Size <= 0 then begin
       swf_logo.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpbt.tmp';
    erro:= true;
    if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    try
        xlogotmp.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_logo.Visible:=true;
            swf_logo.LoadMovie(0,ax_filenm);
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_logo.Visible:=false;
        xlogotmp.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir logomarca.');
    end;
end;

procedure Tadm_languagens.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    With DBGrid1 do begin
      if dm.ds_sql3.fieldbyname('pdr').AsString= '-1' then
         Canvas.Font.Style:=Canvas.Font.Style+[fsBold]
      else Canvas.Font.Style:=Canvas.Font.Style-[fsBold];
      DefaultDrawDataCell(Rect, columns[datacol].field, State);
    end;
end;

end.
