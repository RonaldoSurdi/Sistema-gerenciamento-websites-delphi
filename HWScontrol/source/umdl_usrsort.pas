{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para website.
Data: 17 de outubro de 2005.
By HWS Web Solutions

Relatório de acessos:
17/10/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}
unit umdl_usrsort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  XPMan, RxRichEd, Menus, ImgList, Spin, AppEvnts;


type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  Tmdl_usrsort = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    GroupBox2: TGroupBox;
    Panel_search: TPanel;
    ComboBox_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countreg2: TLabel;
    bt_search: TSpeedButton;
    PageControl2: TPageControl;
    Edit_search: TComboBox;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    XPManifest1: TXPManifest;
    ComboBox_web: TComboBox;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    ScrollBox3: TScrollBox;
    Panel5: TPanel;
    ToolBar4: TToolBar;
    Panel6: TPanel;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_del2: TSpeedButton;
    bt_save2: TSpeedButton;
    StatusBar1: TStatusBar;
    DBGrid2: TDBGrid;
    TabSheet1: TTabSheet;
    GroupBox5: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    Panel15: TPanel;
    bt_prior3: TSpeedButton;
    bt_next3: TSpeedButton;
    bt_new3: TSpeedButton;
    bt_del3: TSpeedButton;
    bt_save3: TSpeedButton;
    Lb_countreg3: TLabel;
    Label8: TLabel;
    TabSheet3: TTabSheet;
    Splitter1: TSplitter;
    ColorDialog1: TColorDialog;
    ToolbarImages: TImageList;
    PopupMenu_editor: TPopupMenu;
    Desfazer1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Importar1: TMenuItem;
    N2: TMenuItem;
    Fontemenu: TMenuItem;
    Negrito1: TMenuItem;
    Italico1: TMenuItem;
    Sublinhado1: TMenuItem;
    N3: TMenuItem;
    Cor1: TMenuItem;
    Formatarpargrafo1: TMenuItem;
    esquerdo1: TMenuItem;
    centro1: TMenuItem;
    direita1: TMenuItem;
    justificado1: TMenuItem;
    Marcador1: TMenuItem;
    Cordefundo1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Panel3: TPanel;
    xcpw5: TDateTimePicker;
    xcpw3: TDateTimePicker;
    Label13: TLabel;
    Label6: TLabel;
    xcpw2: TLabeledEdit;
    xcodigo2: TLabeledEdit;
    lbcp_dtcad2: TLabel;
    Label27: TLabel;
    xcpw4: TDateTimePicker;
    xcpw6: TDateTimePicker;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    xcpw7: TRichEdit;
    xcpw8: TRichEdit;
    Panel4: TPanel;
    lbcp_dtcad3: TLabel;
    Label9: TLabel;
    xcodigo3: TLabeledEdit;
    xcpy1: TSpinEdit;
    Label2: TLabel;
    xcpy2: TLabeledEdit;
    GroupBox3: TGroupBox;
    xcpy3: TRichEdit;
    result_label: TGroupBox;
    GroupBox7: TGroupBox;
    Label7: TLabel;
    bt_iniciarsort: TSpeedButton;
    result_text: TRichEdit;
    ToolBar3: TToolBar;
    Panel7: TPanel;
    bt_printresult: TSpeedButton;
    bt_saveresult: TSpeedButton;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    ProgressBar_result: TProgressBar;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    bt_sendresult: TSpeedButton;
    ToolBar5: TToolBar;
    Panel8: TPanel;
    btmaster: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_searchChange(Sender: TObject);
    procedure edKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_webChange(Sender: TObject);
    procedure bt_prior2Click(Sender: TObject);
    procedure bt_next2Click(Sender: TObject);
    procedure bt_new2Click(Sender: TObject);
    procedure bt_del2Click(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure bt_prior3Click(Sender: TObject);
    procedure bt_next3Click(Sender: TObject);
    procedure bt_new3Click(Sender: TObject);
    procedure bt_del3Click(Sender: TObject);
    procedure bt_save3Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_printresultClick(Sender: TObject);
    procedure bt_saveresultClick(Sender: TObject);
    procedure bt_iniciarsortClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_sendresultClick(Sender: TObject);
    procedure btmasterClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    xlogotmp : TMemoryStream;
    LstTables: TLstTables;
    xinit, xinitAUX, xRDNstart : Boolean;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade2;
    procedure atualiza_grade3;
    procedure addreg2;
    procedure addreg3;
    procedure filtrar_reg;
    procedure monta_table2;
    procedure monta_table3(xcod:String);
    procedure xmensatrnsblb(axmensa:String);
    procedure blockWindow(xblok:Boolean);
    procedure enablebts(xenable:Boolean);
    {function enviaMailHWS(xmHost,xmUser,xmPass,xmNome,xmMail,xmSubject,xmRcpNome,xmRcpMail:string; xmPort:Integer;
                          xmMsgLst: TStringList; xmSendBann: Boolean; xmWeb: String): Boolean;}
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  mdl_usrsort: Tmdl_usrsort;

implementation
uses udm, hwsfunctions, DateUtils, Math, U_Cipher;

{$R *.dfm}

procedure Tmdl_usrsort.FormClose(Sender: TObject; var Action: TCloseAction);
var axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Finalizando...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Finalizando...';
         loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=25;
     xlogotmp.Free;
     loadx.Progressloading.position:=50;
     dm.ds_sql4.Filter:='';
     dm.ds_sql4.Filtered:=false;
     dm.ds_sql4.Close;
     if (dm.ds_sql5.Active) then begin
        dm.ds_sql5.Filter:='';
        dm.ds_sql5.Filtered:=false;
        dm.ds_sql5.Close;
     end;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_usrsort.FormCreate(Sender: TObject);
var axshowing: Boolean;
    axstr_filtro_stream: TMemoryStream;
    axid_web,axid_web2,xforcps,xtotperc: integer;
    xtotperc2: Real;
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
      xinitAUX:= (StrToInt(ParamStr(4)) > 1000);
      loadx.Progressloading.position:=5;
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     mdl_usrsort.Caption := AxDadosUsr.axtitle;
     DBGrid2.DataSource:=dm.source_sql4;
     DBGrid3.DataSource:=dm.source_sql5;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Descrição');
     cp_search[1]:= 'cp1';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.ItemIndex:=1;
     ComboBox_web.Clear;
     axid_web:=0;
     axid_web2:=0;
     if not AxDadosUsr.master then begin
        ComboBox_web.Items.Add(AxDadosUsr.website);
     end else begin
        ToolBar5.Visible:=true;
        result_text.ReadOnly:=false;
        With dm.executa3 do begin
             CommandText:='SELECT codigo,website FROM '+EnDecryptString(Serverconect.vrf29,37249)+
                       ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_ent_1)+#39+
                       ' ORDER BY website';
             Open;
             First;
             While not Eof do begin
                if AxDadosUsr.cod_web=fieldbyname('codigo').AsInteger then axid_web2:=axid_web;
                ComboBox_web.Items.Add(fieldbyname('website').AsString);
                Next;
                Inc(axid_web);
             end;
        end;
     end;
     ComboBox_web.ItemIndex:=axid_web2;
     if ComboBox_web.Items.Count<2 then
        ComboBox_web.Enabled:=false;
     loadx.Progressloading.position:=10;
     //Busca tabelas
     LstTables.Count:=0;
     axstr_filtro_stream:= TMemoryStream.Create;
     With dm.ds_sql11 do begin
          //CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
          CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
                                EnDecryptString(Serverconect.vrf24,37249)+' A, '+ //modulos
                                EnDecryptString(Serverconect.vrf25,37249)+' B '+ //tabelas
                                'WHERE B.cod_grp=A.codigo AND A.mdl='+#39+ExtractFileName(Application.ExeName)+#39+
                                ' AND A.cp5='+#39+AxDadosUsr.axparm+#39+
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
                dm.executa.Close;
                if LstTables.Tipo[LstTables.Count].Count>0 then begin
                   LstTables.Tipo[LstTables.Count].SaveToStream(axstr_filtro_stream);
                   axstr_filtro_stream.Seek(0,soFromBeginning);
                   axstr_filtro_stream:=EnDecryptStream(axstr_filtro_stream,4932);
                   axstr_filtro_stream.Seek(0,soFromBeginning);
                   LstTables.Tipo[LstTables.Count].LoadFromStream(axstr_filtro_stream);
                end;
                Inc(LstTables.Count);
                Next;
             end;
          end else begin
             Close;
             if not axshowing then loadx.Close;
             hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
             Application.Terminate;
             exit;
          end;
          Close;
     end;
     loadx.Progressloading.position:=15;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='cp1';
     DBGrid2.Columns.Items[1].Title.Caption:='Descrição';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='cp2';
     DBGrid2.Columns.Items[2].Title.Caption:='Data Inicio';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[3].FieldName:='cp3';
     DBGrid2.Columns.Items[3].Title.Caption:='Data Sorteio';
     loadx.Progressloading.position:=20;
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[0].FieldName:='cp1';
     DBGrid3.Columns.Items[0].Title.Caption:='Ordem';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[1].FieldName:='cp2';
     DBGrid3.Columns.Items[1].Title.Caption:='Descrição';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[2].FieldName:='cod_ent';
     DBGrid3.Columns.Items[2].Title.Caption:='Cód. Usuário';
     loadx.Progressloading.position:=40;
     loadx.lbloading.Caption:='Montando tabelas';
     loadx.lbloading.Repaint;
     monta_table2;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
end;

procedure Tmdl_usrsort.enablebts(xenable:Boolean);
begin
     bt_del2.Enabled:=xenable;
     bt_save2.Enabled:=xenable;
     bt_new3.Enabled:=xenable;
     bt_del3.Enabled:=xenable;
     bt_save3.Enabled:=xenable;
     bt_iniciarsort.Enabled:=xenable;
     bt_sendresult.Enabled:=false;
end;

procedure Tmdl_usrsort.atualiza_grade2;
var st_stream: TMemoryStream;
begin
     if dm.ds_sql4.RecordCount <= 0 then begin
         addreg2;
     end else begin
         //enablebts(AxDadosUsr.master);
         with dm.ds_sql4 do begin
            if xcodigo2.Text=fieldbyname('codigo').AsString then exit;
            xcodigo2.Text:=fieldbyname('codigo').AsString;
            xcpw2.Text:= fieldbyname('cp1').AsString;
            xcpw3.Date:= fieldbyname('cp2').AsDateTime;
            xcpw4.Time:= fieldbyname('cp2').AsDateTime;
            xcpw5.Date:= fieldbyname('cp3').AsDateTime;
            xcpw6.Time:= fieldbyname('cp3').AsDateTime;
            st_stream := TMemoryStream.Create;
            st_stream.Clear;
            st_stream.Seek(0,soFromBeginning);
            TBlobField(FieldByName('cp5')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            xcpw7.Lines.LoadFromStream(st_stream);
            st_stream.Clear;
            st_stream.Seek(0,soFromBeginning);
            TBlobField(FieldByName('cp7')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            xcpw8.Lines.LoadFromStream(st_stream);
            TabSheet1.TabVisible:=true;
            TabSheet3.TabVisible:=true;
            result_text.Clear;
            if (StrToBool(fieldbyname('cp9').AsString)) then begin
               st_stream.Clear;
               st_stream.Seek(0,soFromBeginning);
               TBlobField(FieldByName('cp12')).SaveToStream(st_stream);
               st_stream.Seek(0,soFromBeginning);
               result_text.Lines.LoadFromStream(st_stream);
               enablebts(false);
            end else enablebts(true);
            st_stream.free;
            lbcp_dtcad2.Caption:= fieldbyname('cp11').AsString;
            monta_table3(xcodigo2.Text);
         end;
     end;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
end;

procedure Tmdl_usrsort.atualiza_grade3;
var st_stream: TMemoryStream;
begin
     if dm.ds_sql5.RecordCount <= 0 then begin
         addreg3;
     end else begin
         with dm.ds_sql5 do begin
            if xcodigo3.Text=fieldbyname('codigo').AsString then exit;
            xcodigo3.Text:=fieldbyname('codigo').AsString;
            xcpy1.Value:= fieldbyname('cp1').AsInteger;
            xcpy2.Text:= fieldbyname('cp2').AsString;
            st_stream := TMemoryStream.Create;
            st_stream.Clear;
            st_stream.Seek(0,soFromBeginning);
            TBlobField(FieldByName('cp3')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            xcpy3.Lines.LoadFromStream(st_stream);
            st_stream.Free;
            lbcp_dtcad3.Caption:= fieldbyname('cp6').AsString;
         end;
     end;
     Lb_countreg3.Caption:=Inttostr(dm.ds_sql4.RecordCount);
end;

procedure Tmdl_usrsort.addreg2;
begin
     enablebts(true);
     xcodigo2.Text:='novo';
     xcpw2.Text:= '';
     xcpw3.DateTime:=Now;
     xcpw4.Time:=StrToTime('00:00:00');
     xcpw5.DateTime:=Now+10;
     xcpw6.Time:=StrToTime('23:59:59');
     xcpw7.Clear;
     xcpw8.Clear;
     lbcp_dtcad2.Caption := '';
     monta_table3('0');
     TabSheet1.TabVisible:=false;
     TabSheet3.TabVisible:=false;
end;

procedure Tmdl_usrsort.addreg3;
begin
     xcodigo3.Text:='novo';
     xcpy1.Value:=xcpy1.Value+1;
     xcpy2.Text:= '';
     xcpy3.Clear;
     lbcp_dtcad3.Caption := '';
end;

procedure Tmdl_usrsort.FormResize(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_usrsort.filtrar_reg;
var axsearch : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql4.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql4.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr('%'+Edit_search.Text+'%')
        else dm.ds_sql4.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tmdl_usrsort.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_usrsort.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        Edit_search.Clear;
        filtrar_reg;
     end;
end;

procedure Tmdl_usrsort.Edit_searchKeyPress(Sender: TObject;
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

procedure Tmdl_usrsort.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_usrsort.edKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_usrsort.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table2;
             atualiza_grade2;
          end;
      end;
end;

procedure Tmdl_usrsort.monta_table2;
begin
     With dm.ds_sql4 do begin
        if Active then Close;
        CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                      ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     atualiza_grade2;
end;

procedure Tmdl_usrsort.monta_table3(xcod:String);
begin
     With dm.ds_sql5 do begin
        if Active then Close;
        CommandText:= 'SELECT * FROM '+LstTables.Table[1]+
                      ' WHERE cod_srt='+#39+xcod+#39+
                      ' ORDER BY cp1,codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     atualiza_grade3;
end;

procedure Tmdl_usrsort.bt_prior2Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade2;
end;

procedure Tmdl_usrsort.bt_next2Click(Sender: TObject);
begin
    dm.ds_sql4.Next;
    atualiza_grade2;
end;

procedure Tmdl_usrsort.bt_new2Click(Sender: TObject);
begin
    addreg2;
    xcpw2.SetFocus;
end;

procedure Tmdl_usrsort.bt_del2Click(Sender: TObject);
begin
    if (dm.ds_sql4.RecordCount>0) and (xcodigo2.Text<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[0],'codigo',xcodigo2.Text,true) then begin
           dm.ds_sql4.Close;
           dm.ds_sql4.Open;
           atualiza_grade2;
        end;
    end;
end;

{function Tmdl_usrsort.enviaMailHWS(xmHost,xmUser,xmPass,xmNome,xmMail,xmSubject,xmRcpNome,xmRcpMail:string; xmPort:Integer;
                                xmMsgLst: TStringList; xmSendBann: Boolean; xmWeb: String): Boolean;
var xidem: Integer;
    axmBody: String;
begin
    try
      IdSMTP1.Host := xmHost;
      IdSMTP1.Port := xmPort;
      IdSMTP1.Username := xmUser;
      IdSMTP1.Password := xmPass;
      IdSMTP1.Connect;
      IdSMTP1.Authenticate;
      IdMessage1.From.Name:= xmNome;
      IdMessage1.From.Address:= xmMail;
      IdMessage1.Recipients.EMailAddresses:= xmRcpMail;
      IdMessage1.Subject := xmSubject;
      IdMessage1.Body.Clear;
      if xmSendBann then begin
         axmBody:='<body topmargin="0"><p><a href="http://'+xmWeb+'" target=_blank>'+
                  ' <IMG src="http://'+xmWeb+'/banner.jpg"'+
	                ' height=224 width=550 border=0></a></p>';
         IdMessage1.Body.Add(axmBody);
      end;
      IdMessage1.Body.AddStrings(xmMsgLst);
    except
       hwsf.BtMensagem('Erro ao conectar servidor '+xmHost);
       Result:=false;
       exit;
    end;
    try
       IdSMTP1.Send(IdMessage1);
       Result:=true;
    except
       hwsf.BtMensagem('Erro ao enviar email para '+xmRcpNome+' <'+xmRcpMail+'>');
       Result:=false;
    end;
    try
      IdSMTP1.Disconnect;
    except
    end;
end;  }

procedure Tmdl_usrsort.bt_save2Click(Sender: TObject);
var axcod,axsqlid,axforid: integer;
    axmntquy,axmd5pass: String;
    xtxt3,xtxt4: TMemoryStream;
    function axsqlidADD():Integer;
    begin
        Result:=axsqlid;
        Inc(axsqlid);
    end;
begin
     if xcpw2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a Descrição da Promoção.');
        xcpw2.SelectAll;
        xcpw2.SetFocus;
        exit;
     end;
     xcpw3.Time:=xcpw4.Time;
     xcpw5.Time:=xcpw6.Time;
     if (xcpw5.DateTime <= xcpw3.DateTime) then begin
        hwsf.BtMensagem('Período da promoção inválido verifique.');
        xcpw3.SetFocus;
        exit;
     end;
     xtxt3:= TMemoryStream.Create;
     xtxt3.Clear;
     xtxt3.Seek(0,soFromBeginning);
     xcpw7.Lines.SaveToStream(xtxt3);
     xtxt3.Seek(0,soFromBeginning);
     xtxt4:= TMemoryStream.Create;
     xtxt4.Clear;
     xtxt4.Seek(0,soFromBeginning);
     xcpw8.Lines.SaveToStream(xtxt4);
     xtxt4.Seek(0,soFromBeginning);
     if xcodigo2.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[0],'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_web,cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9,cp10,cp11) '+
                          'VALUES(:p0,:p1,:p2,'+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',xcpw3.DateTime)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',xcpw5.DateTime)+#39+','+
                          ':p5,:p6,:p7,:p8,:p9,:p10,:p11,'+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+')';
            axsqlid:=0;
            Params[axsqlidADD].AsInteger:=axcod;
            Params[axsqlidADD].AsInteger:=AxDadosUsr.cod_web;
            Params[axsqlidADD].AsString:= xcpw2.Text;
            Params[axsqlidADD].Assign(xcpw7.Lines);
            Params[axsqlidADD].LoadFromStream(xtxt3,ftblob);
            Params[axsqlidADD].Assign(xcpw8.Lines);
            Params[axsqlidADD].LoadFromStream(xtxt4,ftblob);
            Params[axsqlidADD].AsInteger:=0;//conta evio
            Params[axsqlidADD].AsString:=BoolToStr(false);
            Params[axsqlidADD].AsString:=AxDadosUsr.axparm;
        end;
     end else begin
        axcod:=StrtoInt(xcodigo2.Text);
        with dm.executa do begin
            axmntquy :='UPDATE '+LstTables.Table[0]+' SET cp1=:p0,'+
            'cp2='+#39+FormatDateTime('yyyymmdd hh:nn:ss',xcpw3.DateTime)+#39+','+
            'cp3='+#39+FormatDateTime('yyyymmdd hh:nn:ss',xcpw5.DateTime)+#39+','+
            'cp4=:p1,cp5=:p2,cp6=:p3,cp7=:p4,cp8=:p5,'+
            'cp11='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
            ' WHERE codigo=:p6';
            CommandText:= axmntquy;
            axsqlid:=0;
            Params[axsqlidADD].AsString:= xcpw2.Text;
            Params[axsqlidADD].Assign(xcpw7.Lines);
            Params[axsqlidADD].LoadFromStream(xtxt3,ftblob);
            Params[axsqlidADD].Assign(xcpw8.Lines);
            Params[axsqlidADD].LoadFromStream(xtxt4,ftblob);
            Params[axsqlidADD].AsInteger:=0;//conta evio
            Params[axsqlidADD].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     xtxt3.Free;
     xtxt4.Free;
     dm.ds_sql4.Close;
     dm.ds_sql4.Open;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
     dm.ds_sql4.Locate('codigo',axcod,[]);
     atualiza_grade2;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tmdl_usrsort.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrsort.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrsort.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrsort.FormShow(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_usrsort.SpeedButton8Click(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tmdl_usrsort.bt_prior3Click(Sender: TObject);
begin
    dm.ds_sql5.Prior;
    atualiza_grade3;
end;

procedure Tmdl_usrsort.bt_next3Click(Sender: TObject);
begin
    dm.ds_sql5.Next;
    atualiza_grade3;
end;

procedure Tmdl_usrsort.bt_new3Click(Sender: TObject);
begin
    addreg3;
    xcpy2.SetFocus;
end;

procedure Tmdl_usrsort.bt_del3Click(Sender: TObject);
begin
    if (dm.ds_sql5.RecordCount>0) and (xcodigo3.Text<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[1],'codigo',xcodigo3.Text,true) then begin
           dm.ds_sql5.Close;
           dm.ds_sql5.Open;
           atualiza_grade3;
        end;
    end;
end;

procedure Tmdl_usrsort.bt_save3Click(Sender: TObject);
var axcod,axsqlid,axforid: integer;
    axmntquy,axmd5pass: String;
    xtxt5: TMemoryStream;
    function axsqlidADD():Integer;
    begin
        Result:=axsqlid;
        Inc(axsqlid);
    end;
begin
     if xcpw2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o Prêmio.');
        xcpy2.SelectAll;
        xcpy2.SetFocus;
        exit;
     end;
     xtxt5:= TMemoryStream.Create;
     xtxt5.Clear;
     xtxt5.Seek(0,soFromBeginning);
     xcpy3.Lines.SaveToStream(xtxt5);
     xtxt5.Seek(0,soFromBeginning);
     if xcodigo3.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[1],'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[1]+' (codigo,cod_srt,cod_ent,cp1,cp2,cp3,cp4,cp5,cp6) '+
                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,'+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+')';
            axsqlid:=0;
            Params[axsqlidADD].AsInteger:=axcod;
            Params[axsqlidADD].AsInteger:=StrToInt(xcodigo2.Text);
            Params[axsqlidADD].AsInteger:= 0;
            Params[axsqlidADD].AsInteger:= xcpy1.Value;
            Params[axsqlidADD].AsString:= xcpy2.Text;
            Params[axsqlidADD].Assign(xcpy3.Lines);
            Params[axsqlidADD].LoadFromStream(xtxt5,ftblob);
            Params[axsqlidADD].AsInteger:= 0;
        end;
     end else begin
        axcod:=StrtoInt(xcodigo3.Text);
        with dm.executa do begin //cod_ent=:p0,
            axmntquy :='UPDATE '+LstTables.Table[1]+' SET cp1=:p1,cp2=:p2,cp3=:p3,cp4=:p4,cp5=:p5,'+
            'cp6='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
            ' WHERE codigo=:p7';
            CommandText:= axmntquy;
            axsqlid:=0;
            //Params[axsqlidADD].AsInteger:= 0;
            Params[axsqlidADD].AsInteger:= xcpy1.Value;
            Params[axsqlidADD].AsString:= xcpy2.Text;
            Params[axsqlidADD].Assign(xcpy3.Lines);
            Params[axsqlidADD].LoadFromStream(xtxt5,ftblob);
            Params[axsqlidADD].AsInteger:= 0;
            Params[axsqlidADD].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     xtxt5.Free;
     dm.ds_sql5.Close;
     dm.ds_sql5.Open;
     Lb_countreg3.Caption:=Inttostr(dm.ds_sql5.RecordCount);
     dm.ds_sql5.Locate('codigo',axcod,[]);
     atualiza_grade3;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tmdl_usrsort.DBGrid3CellClick(Column: TColumn);
begin
     atualiza_grade3;
end;

procedure Tmdl_usrsort.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade3;
end;

procedure Tmdl_usrsort.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade3;
end;

procedure Tmdl_usrsort.bt_printresultClick(Sender: TObject);
begin
    if (bt_iniciarsort.Enabled) then begin
       hwsf.BtMensagem('O sorteio ainda não foi efetuado.');
       exit;
    end;
    //imprimir sorteio
    if PrintDialog1.Execute then begin
       result_text.Print('Resultado Votação Website');
       hwsf.BtMensagem('Resultado Impresso com sucesso.');
    end;
end;

procedure Tmdl_usrsort.bt_saveresultClick(Sender: TObject);
begin
    if (bt_iniciarsort.Enabled) then begin
       hwsf.BtMensagem('O sorteio ainda não foi efetuado.');
       exit;
    end;
    //salvar sorteio
    if SaveDialog1.Execute then begin
       result_text.Lines.SaveToFile(SaveDialog1.FileName);
       hwsf.BtMensagem('Arquivo gravado com sucesso.');
    end;
end;

procedure Tmdl_usrsort.xmensatrnsblb(axmensa:String);
begin
    result_text.Lines.Add(axmensa);
    result_text.SelLength := 0;
    result_text.SelStart:= result_text.GetTextLen;
    result_text.Perform( EM_SCROLLCARET, 0, 0 );
    result_text.SetFocus;
    Application.ProcessMessages;
end;

procedure Tmdl_usrsort.blockWindow(xblok:Boolean);
begin
    GroupBox2.Enabled:=xblok;
    bt_iniciarsort.Enabled:=xblok;
    TabSheet1.Enabled:=xblok;
    TabSheet2.Enabled:=xblok;
    bt_printresult.Enabled:=xblok;
    bt_saveresult.Enabled:=xblok;
end;

procedure Tmdl_usrsort.bt_iniciarsortClick(Sender: TObject);
var dt_sort: TDateTime;
    xUsrResult: TStringList;
    xtxt3_result: TMemoryStream;
    xresultRDN: Integer;
    axcodusort, ax_filterdate, ax_codsorteio: String;
    function getRDN(xtot:Integer):Integer;
    var Y_rdn: Integer;
        x_psdinv:Boolean;
    begin
       Y_rdn:=0;
       ProgressBar_result.Position:=0;
       x_psdinv:= true;
       While not xRDNstart do begin
           Application.ProcessMessages;
           if (x_psdinv) then begin
              if ProgressBar_result.Position = ProgressBar_result.Max then
                 x_psdinv:=false
              else ProgressBar_result.Position:=ProgressBar_result.Position+1;
           end else begin
              if ProgressBar_result.Position = 0 then
                 x_psdinv:=true
              else ProgressBar_result.Position:=ProgressBar_result.Position-1;
           end;
           Inc(Y_rdn);
           if (Y_rdn+1 > xtot) then Y_rdn:=0;
           Application.ProcessMessages;
       end;
       Result:=Y_rdn;
    end;
begin
      //iniciar sorteio
      ax_codsorteio:= xcodigo2.Text;
      if dm.ds_sql7.Active then dm.ds_sql7.Close;
      dm.ds_sql7.CommandText:= 'SELECT * FROM '+LstTables.Table[1]+
                               ' WHERE cod_srt='+#39+ax_codsorteio+#39+
                               ' ORDER BY cp1,codigo';
      dm.ds_sql7.Open;
      dm.ds_sql7.Filter:='';
      dm.ds_sql7.Filtered:=false;
      if dm.ds_sql7.RecordCount = 0 then begin
         hwsf.BtMensagem('É necessário cadastrar os Prêmios.');
         PageControl2.TabIndex:=1;
         dm.ds_sql7.Close;
         exit;
      end;
      if hwsf.BtConfirma('Tem certeza que desejas iniciar o Sorteio?               após iniciar não Cancele este Processo!!!') then begin
         blockWindow(false);
         ProgressBar_result.Position:=0;
         xmensatrnsblb('Website: '+AxDadosUsr.website);
         xmensatrnsblb('Responsável: '+AxDadosUsr.nome+' / '+AxDadosUsr.usr);
         xmensatrnsblb('Sorteio da Promoção: ');
         xmensatrnsblb(xcpw2.Text);
         xmensatrnsblb('');
         xcpw3.Time:=xcpw4.Time;
         xcpw5.Time:=xcpw6.Time;
         xmensatrnsblb('Data inicio: '+FormatDateTime('dd/mm/yyyy hh:nn:ss',xcpw3.DateTime));
         xmensatrnsblb('Data sorteio: '+FormatDateTime('dd/mm/yyyy hh:nn:ss',xcpw6.DateTime));
         dt_sort:= Now;
         xmensatrnsblb('Sorteio efetuado em '+FormatDateTime('dd/mm/yyyy hh:nn:ss',dt_sort));
         xmensatrnsblb('');
         xmensatrnsblb('Localizando lista de usuários...');
         xUsrResult:= TStringList.Create;
         xtxt3_result:= TMemoryStream.Create;
         ax_filterdate:=' AND ((cp28>='+#39+FormatDateTime('yyyymmdd',xcpw3.Date)+' '+FormatDateTime('hh:nn:ss',xcpw4.Time)+#39+
                        ' AND cp28<='+#39+FormatDateTime('yyyymmdd',xcpw5.Date)+' '+FormatDateTime('hh:nn:ss',xcpw6.Time)+#39+')'+
                        ' OR (cp29>='+#39+FormatDateTime('yyyymmdd',xcpw3.Date)+' '+FormatDateTime('hh:nn:ss',xcpw4.Time)+#39+
                        ' AND cp29<='+#39+FormatDateTime('yyyymmdd',xcpw5.Date)+' '+FormatDateTime('hh:nn:ss',xcpw6.Time)+#39+')'+
                        ' OR (cp38>='+#39+FormatDateTime('yyyymmdd',xcpw3.Date)+' '+FormatDateTime('hh:nn:ss',xcpw4.Time)+#39+
                        ' AND cp38<='+#39+FormatDateTime('yyyymmdd',xcpw5.Date)+' '+FormatDateTime('hh:nn:ss',xcpw6.Time)+#39+'))';
         With dm.ds_sql6 do begin
             if Active then Close;
             CommandText:='SELECT codigo FROM '+LstTables.Table[3]+
                          ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                          ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                          ' AND cp33='+#39+'0'+#39+
                          ' AND cp32='+#39+'A'+#39+
                          ' AND cp55='+#39+'0'+#39+
                          ax_filterdate+
                          ' ORDER BY codigo';
             Open;
             xUsrResult.Clear;
             First;
             While not Eof do begin
                 xUsrResult.Add(fieldbyname('codigo').AsString);
                 Next;
             end;
             xmensatrnsblb(IntToStr(xUsrResult.Count)+' usuários válidos localizados.');
             Close;
             if (xUsrResult.Count = 0) then begin
                xmensatrnsblb('Sorteio cancelado, não há usuários cadastrados.');
                blockWindow(true);
                dm.ds_sql7.Close;
                hwsf.BtMensagem('Sorteio cancelado, não há usuários cadastrados.');
                exit;
             end;
             xmensatrnsblb('Iniciando Sorteio:');
             dm.ds_sql7.First;
             While not dm.ds_sql7.Eof do begin
                xmensatrnsblb('');
                xmensatrnsblb('');
                if (dm.ds_sql7.fieldbyname('cod_ent').AsInteger<>0) then begin
                  xmensatrnsblb('Sorteio '+dm.ds_sql7.fieldbyname('cp1').AsString+'° Prêmio: '+dm.ds_sql7.fieldbyname('cp2').AsString+' já possui um Vencedor:');
                  xmensatrnsblb('Data: '+dm.ds_sql7.fieldbyname('cp6').AsString);
                  axcodusort:= dm.ds_sql7.fieldbyname('cod_ent').AsString;
                  xmensatrnsblb('');
                end else begin
                  xmensatrnsblb('Sorteando '+dm.ds_sql7.fieldbyname('cp1').AsString+'° Prêmio: '+dm.ds_sql7.fieldbyname('cp2').AsString);
                  xmensatrnsblb('');
                  xmensatrnsblb('Processo Randômico Ativado...[de 1 à '+IntToStr(xUsrResult.Count)+']');
                  xRDNstart:=false;
                  //ini exec
                  xmensatrnsblb('Pressione SPACE para sortear, aguardando...');
                  xmensatrnsblb('');
                  xresultRDN:= getRDN(xUsrResult.Count-1);
                  xmensatrnsblb('Indexador sorteado: ['+IntToStr(xresultRDN+1)+']');
                  xmensatrnsblb('Usuário selecionado: ');
                  dm.executa.CommandText:='UPDATE '+LstTables.Table[1]+' SET cod_ent=:p0,'+
                                          'cp6='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                                          ' WHERE codigo=:p2';
                  dm.executa.Params[0].AsInteger:=StrToInt(xUsrResult.Strings[xresultRDN]);
                  dm.executa.Params[1].AsInteger:=dm.ds_sql7.fieldbyname('codigo').AsInteger;
                  dm.executa.Execute;
                  axcodusort:=xUsrResult.Strings[xresultRDN];
                end;
                xmensatrnsblb('Código: '+axcodusort);
                if Active then Close;
                CommandText:='SELECT A.cp3,A.cp10,A.cp12,A.cp13,A.cp15,A.cp16,A.cp17,A.cp18,A.cp19,B.cidade,B.uf FROM '+
                             LstTables.Table[3]+' A LEFT OUTER JOIN '+
                             EnDecryptString(Serverconect.vrf27,37249)+' B ON B.codigo=A.cp18'+
                             ' WHERE A.codigo='+#39+axcodusort+#39;
                Open;
                if Fields[0].AsString <> '' then
                   xmensatrnsblb('Nome: '+Fields[0].AsString)
                else xmensatrnsblb('Nome: (não informado)');
                if Fields[3].AsString <> '' then
                   xmensatrnsblb('e-mail: '+Fields[3].AsString)
                else xmensatrnsblb('e-mail: (não informado)');
                if Fields[1].AsString <> '' then
                   xmensatrnsblb('Telefone: '+Fields[1].AsString)
                else xmensatrnsblb('Telefone: (não informado)');
                if Fields[2].AsString <> '' then
                   xmensatrnsblb('Celular: '+Fields[2].AsString)
                else xmensatrnsblb('Celular: (não informado)');
                if Fields[4].AsString <> '' then
                   xmensatrnsblb('Endereço: '+Fields[4].AsString)
                else xmensatrnsblb('Endereço: (não informado)');
                if Fields[5].AsString <> '' then
                   xmensatrnsblb('Número: '+Fields[5].AsString)
                else xmensatrnsblb('Número: (não informado)');
                if Fields[6].AsString <> '' then
                   xmensatrnsblb('Complemento: '+Fields[6].AsString)
                else xmensatrnsblb('Complemento: (não informado)');
                if Fields[7].AsString <> '0' then
                   xmensatrnsblb('Cidade: '+Fields[9].AsString)
                else xmensatrnsblb('Cidade: (não informado)');
                if Fields[7].AsString <> '0' then
                   xmensatrnsblb('UF: '+Fields[10].AsString)
                else xmensatrnsblb('UF: (não informado)');
                if Fields[8].AsString <> '' then
                   xmensatrnsblb('cep: '+Fields[8].AsString)
                else xmensatrnsblb('cep: (não informado)');
                dm.ds_sql7.Next;
             end;
             dm.executa.CommandText:='UPDATE '+LstTables.Table[0]+' SET cp9=:p0,cp12=:p1'+
                                     'cp11='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                                     ' WHERE codigo=:p2';
             dm.executa.Params[0].AsString:=BoolToStr(true);
             xtxt3_result.Clear;
             xtxt3_result.Seek(0,soFromBeginning);
             result_text.Lines.SaveToStream(xtxt3_result);
             xtxt3_result.Seek(0,soFromBeginning);
             dm.executa.Params[1].LoadFromStream(xtxt3_result,ftblob);
             dm.executa.Params[2].AsInteger:=StrToInt(ax_codsorteio);
             dm.executa.Execute;
             Close;
             //fim exec
         end;
         xUsrResult.Free;
         xtxt3_result.free;
         ProgressBar_result.Position:=100;
         dm.ds_sql7.Close;
         blockWindow(true);
         xcodigo2.Text:='';
         xmensatrnsblb('');
         xmensatrnsblb('*****Sorteio efetuado com sucesso*****');
         xmensatrnsblb('Favor entrar em contato com os Vencedores');
         hwsf.BtMensagem('Sorteio concluído, favor entrar em contato com os Vencedores.');
         dm.ds_sql4.Close;
         dm.ds_sql4.Open;
         dm.ds_sql4.Locate('codigo',ax_codsorteio,[]);
         atualiza_grade2;
         //bt_sendresult.Click;
      end;
end;

procedure Tmdl_usrsort.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (not GroupBox2.Enabled) then
          if key=VK_SPACE then xRDNstart:=true;
end;

procedure Tmdl_usrsort.bt_sendresultClick(Sender: TObject);
begin
    if (bt_iniciarsort.Enabled) then begin
       hwsf.BtMensagem('O sorteio ainda não foi efetuado.');
       exit;
    end;
    //enviar email
    //sentMailHWS(
    {xHWSfld1
    0-xmHost
    1-xmUser
    2-xmPass
    3-xmNome
    4-xmMail
    5-xmSubject
    6-xmRcpNome
    7-xmRcpMail:string
    8-xmPort
    9-xmPriority:Integer
    10-xmSendBann: Boolean
    11-xmBannHeight
    12-xmBannWidth: Real
    13-xmBannFile
    14-xmCodWeb
    15-xmWeb: String
    xHWSfld2
    0-xmMsgLst: TStringList
    }
    {if hwsf.BtConfirma('Enviar Resultados por e-mail para os Vencedores?') then begin
       if dm.ds_sql7.Active then dm.ds_sql7.Close;
       dm.ds_sql7.CommandText:= 'SELECT codigo,cp1,cod_ent FROM '+LstTables.Table[1]+
                                ' WHERE cod_srt='+#39+xcodigo2.Text+#39+
                                ' ORDER BY cp1,codigo';

       {CommandText:='SELECT A.cp3,A.cp10,A.cp12,A.cp13,A.cp15,A.cp16,A.cp17,A.cp18,A.cp19,B.cidade,B.uf FROM '+
                             LstTables.Table[3]+' A LEFT OUTER JOIN '+
                             EnDecryptString(Serverconect.vrf27,37249)+' B ON B.codigo=A.cp18'+
                             ' WHERE A.codigo='+#39+axcodusort+#39;}

{       dm.ds_sql7.Open;
       dm.ds_sql7.Filter:='';
       dm.ds_sql7.Filtered:=false;
       dm.ds_sql7.First;
       While not dm.ds_sql7.Eof do begin
           dm.ds_sql7.Next;
       end;
       dm.ds_sql7.Close;
    end;           }
end;

procedure Tmdl_usrsort.btmasterClick(Sender: TObject);
var xtxt3_result: TMemoryStream;
begin
    if hwsf.BtConfirma('AVISO: Tem certeza que desejas alterar os dados?') then begin
        try
             xtxt3_result:= TMemoryStream.Create;
             dm.executa.CommandText:='UPDATE '+LstTables.Table[0]+' SET cp12=:p0'+
                                     ' WHERE codigo=:p1';
             xtxt3_result.Clear;
             xtxt3_result.Seek(0,soFromBeginning);
             result_text.Lines.SaveToStream(xtxt3_result);
             xtxt3_result.Seek(0,soFromBeginning);
             dm.executa.Params[0].LoadFromStream(xtxt3_result,ftblob);
             dm.executa.Params[1].AsInteger:=StrToInt(xcodigo2.Text);
             dm.executa.Execute;
        except
             hwsf.BtMensagem('Erro ao gravar os dados.');
        end;
        xtxt3_result.Free;
        hwsf.BtMensagem('Dados atualizados com sucesso.');
    end;
end;

procedure Tmdl_usrsort.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
