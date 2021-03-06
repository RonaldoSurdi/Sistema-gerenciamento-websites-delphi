{###############################################################################
Programa: HWShelpdesk
M?dulo: Cadastro de aplicativos.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relat?rio de acessos:
27/09/2004 - Ronaldo Surdi //Codigica??o do m?dulo.
###############################################################################}

unit uadm_skmdl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan;


type
  Tadm_skmdl = class(TForm)
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
    Label2: TLabel;
    lbcp3: TMemo;
    XPManifest1: TXPManifest;
    lbcp4: TLabeledEdit;
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
  private
    cv : string;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade;
    procedure addreg;
    procedure filtrar_reg;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_skmdl: Tadm_skmdl;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_skmdl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     Action:=cafree;
end;

procedure Tadm_skmdl.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_skmdl.FormCreate(Sender: TObject);
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
     DBGrid1.DataSource:=dm.source_sql3;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('C?digo');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Descri??o');
     cp_search[1]:= 'descricao';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Link padr?o');
     cp_search[2]:= 'pth';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=50;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='C?digo';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='descricao';
     DBGrid1.Columns.Items[1].Title.Caption:='Descri??o';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='pth';
     DBGrid1.Columns.Items[2].Title.Caption:='Link padr?o';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf46,37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_skmdl.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_skmdl.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_skmdl.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_skmdl.atualiza_grade;
begin
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql3 do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('descricao').AsString;
            lbcp4.Text:= fieldbyname('pth').AsString;
            lbcp3.Lines.Assign(fieldbyname('obs'));
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
end;

procedure Tadm_skmdl.addreg;
begin
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp4.Text:= '';
     lbcp3.Clear;
end;

procedure Tadm_skmdl.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_skmdl.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_skmdl.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_skmdl.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_skmdl.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_skmdl.Left:= adm_skmdl.Left-(mv_mouse.x-x);
      adm_skmdl.Top:= adm_skmdl.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_skmdl.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_skmdl.Left := adm_skmdl.Left - (mv_mouse.x -x);
      adm_skmdl.Top := adm_skmdl.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_skmdl.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_skmdl.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_skmdl.bt_maximizaClick(Sender: TObject);
begin
    if adm_skmdl.WindowState=wsMaximized then adm_skmdl.WindowState:=wsNormal
    else adm_skmdl.WindowState:=wsMaximized;
end;

procedure Tadm_skmdl.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_skmdl.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_skmdl.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf46,37249),'codigo',lbcp1.Text,true) then begin
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_skmdl.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf46,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf46,37249)+' (codigo,descricao,pth,obs) '+
                       'VALUES(:p0,:p1,:p2,:p3)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp2.Text;
            Params[2].AsString:=lbcp4.Text;
            Params[3].Assign(lbcp3.Lines);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf46,37249)+' SET descricao=:p0,pth=:p1,obs=:p2 '+
                       'WHERE codigo=:p3';
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsString:=lbcp4.Text;
            Params[2].Assign(lbcp3.Lines);
            Params[3].AsInteger:=axcod;
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

procedure Tadm_skmdl.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tadm_skmdl.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tadm_skmdl.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_skmdl.filtrar_reg;
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

procedure Tadm_skmdl.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_skmdl.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_skmdl.Edit_searchKeyPress(Sender: TObject;
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

end.
