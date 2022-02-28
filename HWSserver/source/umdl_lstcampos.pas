{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de cidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_lstcampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan, Spin;


type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  Tmdl_lstcampos = class(TForm)
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
    lbcp3: TLabeledEdit;
    lbcp5: TSpinEdit;
    Label1: TLabel;
    lbcp4: TComboBox;
    Label2: TLabel;
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
    LstTables: TLstTables;
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
  mdl_lstcampos: Tmdl_lstcampos;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tmdl_lstcampos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     Action:=cafree;
end;

procedure Tmdl_lstcampos.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tmdl_lstcampos.FormCreate(Sender: TObject);
var axshowing: Boolean;
    axstr_filtro_stream: TMemoryStream;
    axstr_col,axstr_row,axstr_lin,axstr_rowcount: Integer;
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
     //Busca tabelas
     axstr_filtro_stream:= TMemoryStream.Create;
     loadx.Progressloading.position:=30;
     LstTables.Count:=0;
     With dm.ds_int5 do begin
          CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
                                EnDecryptString(Serverconect.vrf24[1],37249)+' A, '+ //modulos
                                EnDecryptString(Serverconect.vrf25[1],37249)+' B '+ //tabelas
                                'WHERE B.cod_grp=A.codigo AND A.mdl='+#39+ExtractFileName(Application.ExeName)+#39+
                                ' ORDER BY B.codigo';
          Open;
          if RecordCount>0 then begin
             First;
             While not Eof do begin
                LstTables.codigo[LstTables.Count]:=fieldbyname('codigo_1').AsInteger;
                LstTables.Table[LstTables.Count]:=fieldbyname('cp2').AsString;
                //stringgrind Filtro
                LstTables.Tipo[LstTables.Count]:= TStringList.Create;
                LstTables.Tipo[LstTables.Count].Clear;
                LstTables.Tipo[LstTables.Count].Assign(fieldbyname('cp1'));
                LstTables.Tipo[LstTables.Count].SaveToStream(axstr_filtro_stream);
                axstr_filtro_stream.Seek(0,soFromBeginning);
                axstr_filtro_stream:=EnDecryptStream(axstr_filtro_stream,4932);
                axstr_filtro_stream.Seek(0,soFromBeginning);
                LstTables.Tipo[LstTables.Count].LoadFromStream(axstr_filtro_stream);
                Inc(LstTables.Count);
                Next;
             end;
          end else begin
             Close;
             hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
             Application.Terminate;
             exit;
          end;
          Close;
     end;
     axstr_filtro_stream.Free;
     loadx.Progressloading.position:=40;
     //monta filtro e cabeçalho
     ComboBox_search.Clear;
     if LstTables.Tipo[0].Count>0 then begin
        axstr_rowcount:=StrtoInt(LstTables.Tipo[0].Strings[0]);
        axstr_lin:=1;
        for axstr_col:=0 to 3 do begin
            for axstr_row:=1 to axstr_rowcount-1 do begin
                Case axstr_col of
                     0: ComboBox_search.Items.Add(LstTables.Tipo[0].Strings[axstr_lin]);
                     1: cp_search[axstr_row-1]:=LstTables.Tipo[0].Strings[axstr_lin];
                     2: tp_search[axstr_row-1]:=StrtoInt(LstTables.Tipo[0].Strings[axstr_lin]);
                     3: tm_search[axstr_row-1]:=StrtoInt(LstTables.Tipo[0].Strings[axstr_lin]);
                End;
                With DBGrid1.Columns do begin
                     Case axstr_col of
                          0: begin
                             Add;
                             Items[axstr_row-1].Title.Caption:=LstTables.Tipo[0].Strings[axstr_lin];
                          end;
                          1: Items[axstr_row-1].FieldName:=LstTables.Tipo[0].Strings[axstr_lin];
                     end;
                end;
                Inc(axstr_lin);
            end;
        end;
     end;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=50;
     DBGrid1.DataSource:=dm.source_sql3;
     loadx.Progressloading.position:=60;
     cv := 'B2d7485d9N';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT * FROM '+LstTables.Table[0]+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;

     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tmdl_lstcampos.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tmdl_lstcampos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_lstcampos.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_lstcampos.atualiza_grade;
begin
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql3 do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('cp1').AsString;
            lbcp3.Text:= fieldbyname('cp2').AsString;
            lbcp4.ItemIndex:= fieldbyname('cp3').AsInteger;
            lbcp5.Value:= fieldbyname('cp4').AsInteger;
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
end;

procedure Tmdl_lstcampos.addreg;
begin
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp3.Text:= '';
     lbcp4.ItemIndex:=0;
     lbcp5.Value:=0;
end;

procedure Tmdl_lstcampos.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_lstcampos.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tmdl_lstcampos.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(mdl_lstcampos.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tmdl_lstcampos.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      mdl_lstcampos.Left:= mdl_lstcampos.Left-(mv_mouse.x-x);
      mdl_lstcampos.Top:= mdl_lstcampos.Top - (mv_mouse.y-y);
  end;
end;

procedure Tmdl_lstcampos.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      mdl_lstcampos.Left := mdl_lstcampos.Left - (mv_mouse.x -x);
      mdl_lstcampos.Top := mdl_lstcampos.Top - (mv_mouse.y - y);
  end;
end;

procedure Tmdl_lstcampos.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tmdl_lstcampos.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tmdl_lstcampos.bt_maximizaClick(Sender: TObject);
begin
    if mdl_lstcampos.WindowState=wsMaximized then mdl_lstcampos.WindowState:=wsNormal
    else mdl_lstcampos.WindowState:=wsMaximized;
end;

procedure Tmdl_lstcampos.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_lstcampos.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tmdl_lstcampos.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[0],'codigo',lbcp1.Text,true) then begin
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tmdl_lstcampos.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[0],1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cp1,cp2,cp3,cp4) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp2.Text;
            Params[2].AsString:=lbcp3.Text;
            Params[3].AsInteger:=lbcp4.ItemIndex;
            Params[4].AsInteger:=lbcp5.Value;
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cp1=:p0,cp2=:p1,cp3=:p2,cp4=:p3 '+
                       'WHERE codigo=:p4';
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsString:=lbcp3.Text;
            Params[2].AsInteger:=lbcp4.ItemIndex;
            Params[3].AsInteger:=lbcp5.Value;
            Params[4].AsInteger:=axcod;
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

procedure Tmdl_lstcampos.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tmdl_lstcampos.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tmdl_lstcampos.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_lstcampos.filtrar_reg;
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

procedure Tmdl_lstcampos.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_lstcampos.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        if ComboBox_search.ItemIndex = 2 then Edit_search.CharCase:=ecUpperCase
        else Edit_search.CharCase:=ecNormal;
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tmdl_lstcampos.Edit_searchKeyPress(Sender: TObject;
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
