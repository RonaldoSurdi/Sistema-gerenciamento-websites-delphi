{###############################################################################
Programa: HWShelpdesc
Módulo: Cadastro de usuários.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_hdusr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, XPMan;


type
  Tadm_hdusr = class(TForm)
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
    lbcp6: TLabeledEdit;
    lbcp3: TComboBox;
    Label1: TLabel;
    Panel3: TPanel;
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
    lbcp2: TLabeledEdit;
    lbcp5: TComboBox;
    Label2: TLabel;
    lbcp4: TLabeledEdit;
    swf_logo: TShockwaveFlash;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    XPManifest1: TXPManifest;
    bt_import: TSpeedButton;
    bt_clear: TSpeedButton;
    Label8: TLabel;
    chk_master: TCheckBox;
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
    procedure lbcp3Change(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure lbcp2KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp4KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp5Change(Sender: TObject);
    procedure lbcp2Change(Sender: TObject);
    procedure lbcp4Change(Sender: TObject);
    procedure bt_importClick(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
  private
    cv : string;
    xlogotmp : TMemoryStream;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
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
  adm_hdusr: Tadm_hdusr;

implementation
uses udm, hwsfunctions, DateUtils;

{$R *.dfm}

procedure Tadm_hdusr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     xlogotmp.Free;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.executa_int.Close;
     dm.executa5.Close;
     Action:=cafree;
end;

procedure Tadm_hdusr.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_hdusr.FormCreate(Sender: TObject);
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
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Usuário');
     cp_search[1]:= 'descricao';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=50;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='descricao';
     DBGrid1.Columns.Items[1].Title.Caption:='Usuário';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf01,37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=80;
     With dm.executa_int do begin
        CommandText:='SELECT stat,codigo,decode(usuario,'+#39+cv+#39+') FROM '+EnDecryptString(Serverconect.vrf19[1],37249)+
                  ' ORDER BY decode(usuario,'+#39+cv+#39+')';
        Open;
        First;
        lbcp3.Clear;
        While not Eof do begin
            lbcp3.Items.Add(fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=90;
     With dm.executa5 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Helpdesk.vrf02,37249)+' ORDER BY descricao';
        Open;
        First;
        lbcp5.Clear;
        While not Eof do begin
            lbcp5.Items.Add(fieldbyname('descricao').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_hdusr.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_hdusr.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_hdusr.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_hdusr.atualiza_grade;
begin
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql3 do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('cod_usr').AsString;
            lbcp4.Text:= fieldbyname('cod_set').AsString;
            lbcp6.Text:= fieldbyname('descricao').AsString;
            chk_master.Checked:=StrToBool(fieldbyname('xconf').AsString);
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      getLogo;
end;

procedure Tadm_hdusr.getLogo;
begin
     xlogotmp.Clear;
     With dm.executa6 do begin
        CommandText:='SELECT foto FROM '+EnDecryptString(Helpdesk.vrf01,37249)+'_ax WHERE codigo='+#39+lbcp1.Text+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('foto')).SaveToStream(xlogotmp);
        end;
        Close;
     end;
     abretmplogo;
end;

procedure Tadm_hdusr.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xlogotmp.Seek(0,soFromBeginning);
    if xlogotmp.Size <= 0 then begin
       swf_logo.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmplog.tmp';
    erro:= true;
    //Try
    //  Image_logo.Picture.Assign(nil);
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
   //Except End;
    try
        xlogotmp.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_logo.Visible:=true;
            swf_logo.LoadMovie(0,'lixo');
            swf_logo.LoadMovie(0,ax_filenm);
            //swf_logo.Movie:= ax_filenm;
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

procedure Tadm_hdusr.addreg;
begin
     lbcp1.Text:='novo';
     lbcp2.Text:= '0';
     lbcp3.Text:= '';
     lbcp4.Text:= '0';
     lbcp5.Text:= '';
     lbcp6.Text:= '';
     chk_master.Checked:=false;
     getLogo;
end;

procedure Tadm_hdusr.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_hdusr.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_hdusr.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_hdusr.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_hdusr.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_hdusr.Left:= adm_hdusr.Left-(mv_mouse.x-x);
      adm_hdusr.Top:= adm_hdusr.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_hdusr.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_hdusr.Left := adm_hdusr.Left - (mv_mouse.x -x);
      adm_hdusr.Top := adm_hdusr.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_hdusr.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_hdusr.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_hdusr.bt_maximizaClick(Sender: TObject);
begin
    if adm_hdusr.WindowState=wsMaximized then adm_hdusr.WindowState:=wsNormal
    else adm_hdusr.WindowState:=wsMaximized;
end;

procedure Tadm_hdusr.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_hdusr.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_hdusr.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Helpdesk.vrf01,37249),'codigo',lbcp1.Text,true) then begin
           dm.deleta_reg(EnDecryptString(Helpdesk.vrf01,37249)+'_ax','codigo',lbcp1.Text,false);
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_hdusr.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf01,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf01,37249)+' (codigo,cod_usr,cod_set,descricao,xconf) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4)';
            Params[0].AsInteger:=axcod;
            try
                Params[1].AsInteger:=StrToInt(lbcp2.Text);
            except
                Params[1].AsInteger:=0;
            end;
            try
                Params[2].AsInteger:=StrToInt(lbcp4.Text);
            except
                Params[2].AsInteger:=0;
            end;
            Params[3].AsString:=lbcp6.Text;
            Params[4].AsString:=BoolToStr(chk_master.Checked);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Helpdesk.vrf01,37249)+' SET cod_usr=:p0,cod_set=:p1,descricao=:p2,xconf=:p3 '+
                       'WHERE codigo=:p4';
            try
                Params[0].AsInteger:=StrToInt(lbcp2.Text);
            except
                Params[0].AsInteger:=0;
            end;
            try
                Params[1].AsInteger:=StrToInt(lbcp4.Text);
            except
                Params[1].AsInteger:=0;
            end;
            Params[2].AsString:=lbcp6.Text;
            Params[3].AsString:=BoolToStr(chk_master.Checked);
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
     if lbcp1.Text = 'novo' then begin
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf01,37249)+'_ax (codigo,foto) '+
                       'VALUES(:p0,:p1)';
            Params[0].AsInteger:=axcod;
            xlogotmp.Seek(0,soFromBeginning);
            Params[1].LoadFromStream(xlogotmp,ftblob);
        end;
     end else begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Helpdesk.vrf01,37249)+'_ax SET foto=:p0 '+
                       'WHERE codigo=:p1';
            xlogotmp.Seek(0,soFromBeginning);
            Params[0].LoadFromStream(xlogotmp,ftblob);
            Params[1].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     lbcp1.Text:=InttoStr(axcod);
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_hdusr.lbcp3Change(Sender: TObject);
var xlocusr : boolean;
begin
     xlocusr:=false;
     if lbcp3.Text<>'' then begin
        With dm.executa_int do begin
           First;
           While not Eof do begin
               if dm.executa_int.fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString=lbcp3.Text then begin
                  lbcp2.Text:=dm.executa_int.fieldbyname('codigo').AsString;
                  xlocusr:=true;
                  break;
               end;
               Next;
           end;
        end;
     end;
     if not xlocusr then lbcp2.Text:='';
end;

procedure Tadm_hdusr.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tadm_hdusr.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tadm_hdusr.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_hdusr.filtrar_reg;
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

procedure Tadm_hdusr.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_hdusr.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_hdusr.Edit_searchKeyPress(Sender: TObject;
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

procedure Tadm_hdusr.lbcp2KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_hdusr.lbcp4KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_hdusr.lbcp5Change(Sender: TObject);
begin
     if dm.executa5.Locate('descricao',lbcp5.Text,[]) then begin
        lbcp4.Text:=dm.executa5.fieldbyname('codigo').AsString;
     end else lbcp4.Text:='';
end;

procedure Tadm_hdusr.lbcp2Change(Sender: TObject);
begin
     if lbcp2.Text <> '' then
     if dm.executa_int.Locate('codigo',lbcp2.Text,[]) then begin
        lbcp3.Text:=dm.executa_int.fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString;
     end else lbcp3.Text:='';
end;

procedure Tadm_hdusr.lbcp4Change(Sender: TObject);
begin
     if lbcp4.Text <> '' then
     if dm.executa5.Locate('codigo',lbcp4.Text,[]) then begin
        lbcp5.Text:=dm.executa5.fieldbyname('descricao').AsString;
     end else lbcp5.Text:='';
end;

procedure Tadm_hdusr.bt_importClick(Sender: TObject);
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

procedure Tadm_hdusr.bt_clearClick(Sender: TObject);
begin
     Try
       xlogotmp.Clear;
       abretmplogo;
     Except End;
end;

end.
