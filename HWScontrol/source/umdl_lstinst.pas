{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_lstinst;

//{$LONGSTRINGS ON}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls, 
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, RxRichEd, Spin, ImgList, CheckLst, ValEdit, yupack, AppEvnts;

type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  TlistaLng = record
    cod_lng : array[0..20] of Integer;
    sigla : array[0..20] of String;
    trd : array[0..20] of String;
    count : integer;
  End;
  TlistaAux = record
    ab_descricao : array[0..20] of String;
    ab_textft : array[0..20] of TStringList;
    ms_descricao : array[0..20] of String;
    ms_textft : array[0..20] of TStringList;
  End;
  Tmdl_lstinst = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    ImportarImgDialog: TOpenPictureDialog;
    Tradutor1: TTradutor;
    Timer_traduz: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel16: TPanel;
    ToolBar5: TToolBar;
    bt_save4: TSpeedButton;
    OpenBannerDialog: TOpenPictureDialog;
    GroupBox7: TGroupBox;
    Label_size3: TLabel;
    swf_banner: TShockwaveFlash;
    Panel17: TPanel;
    Label21: TLabel;
    Label3: TLabel;
    cp14: TComboBox;
    ToolBar7: TToolBar;
    bt_open3: TSpeedButton;
    bt_limpar3: TSpeedButton;
    cp15: TComboBox;
    ToolBar_lng: TToolBar;
    Label16: TLabel;
    PageControl_languagens2: TPageControl;
    lngtbc1: TTabSheet;
    lngtbc2: TTabSheet;
    lngtbc3: TTabSheet;
    lngtbc4: TTabSheet;
    lngtbc5: TTabSheet;
    lngtbc6: TTabSheet;
    lngtbc7: TTabSheet;
    lngtbc8: TTabSheet;
    lngtbc9: TTabSheet;
    lngtbc10: TTabSheet;
    lngtbc11: TTabSheet;
    lngtbc12: TTabSheet;
    lngtbc13: TTabSheet;
    lngtbc14: TTabSheet;
    lngtbc15: TTabSheet;
    lngtbc16: TTabSheet;
    lngtbc17: TTabSheet;
    lngtbc18: TTabSheet;
    lngtbc19: TTabSheet;
    lngtbc20: TTabSheet;
    PopupMenu_editor: TPopupMenu;
    Desfazer1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N2: TMenuItem;
    Fontemenu: TMenuItem;
    Cor1: TMenuItem;
    N3: TMenuItem;
    Negrito1: TMenuItem;
    Italico1: TMenuItem;
    Sublinhado1: TMenuItem;
    Formatarpargrafo1: TMenuItem;
    esquerdo1: TMenuItem;
    centro1: TMenuItem;
    direita1: TMenuItem;
    justificado1: TMenuItem;
    Marcador1: TMenuItem;
    ToolbarImages: TImageList;
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    GroupBox9: TGroupBox;
    CoolBar1: TCoolBar;
    ToolBar10: TToolBar;
    FontName: TComboBox;
    ToolButton7: TToolButton;
    FontSize: TEdit;
    UpDown1: TUpDown;
    ToolBar11: TToolBar;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolBar12: TToolBar;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    JustifyAlign: TToolButton;
    BulletsButton: TToolButton;
    ToolBar13: TToolBar;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolBar14: TToolBar;
    ToolButton10: TToolButton;
    ToolButton8: TToolButton;
    re_editor: TRxRichEdit;
    ToolButton1: TToolButton;
    Importar1: TMenuItem;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    bt_new1: TSpeedButton;
    bt_save1: TSpeedButton;
    ToolBar_web: TToolBar;
    Label7: TLabel;
    ComboBox_web: TComboBox;
    ToolBar2: TToolBar;
    ComboBox_ab: TComboBox;
    CheckBox_ab: TCheckBox;
    ToolBar3: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Cordefundo1: TMenuItem;
    Imagem1: TMenuItem;
    Fundo1: TMenuItem;
    Refazer1: TMenuItem;
    ToolButton4: TToolButton;
    ed_album: TSpeedButton;
    ComboBox_lstimg: TComboBox;
    GroupBox3: TGroupBox;
    cfg_cod: TLabel;
    cfg_title: TEdit;
    Panel20: TPanel;
    StatusBar1: TStatusBar;
    bt_help: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Splitter1Moved(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    procedure bt_open3Click(Sender: TObject);
    procedure bt_limpar3Click(Sender: TObject);
    procedure bt_save4Click(Sender: TObject);
    procedure PageControl_languagens2Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bt_save1Click(Sender: TObject);
    procedure KeyPressChange(Sender: TObject; var Key: Char);
    procedure Desfazer1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Italico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure Marcador1Click(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure esquerdo1Click(Sender: TObject);
    procedure centro1Click(Sender: TObject);
    procedure direita1Click(Sender: TObject);
    procedure justificado1Click(Sender: TObject);
    procedure re_editorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure bt_new1Click(Sender: TObject);
    procedure ComboBox_webChange(Sender: TObject);
    procedure re_editorChange(Sender: TObject);
    procedure CheckBox_abClick(Sender: TObject);
    procedure Cordefundo1Click(Sender: TObject);
    procedure Imagem1Click(Sender: TObject);
    procedure ComboBox_abChange(Sender: TObject);
    procedure cfg_titleChange(Sender: TObject);
    procedure Refazer1Click(Sender: TObject);
    procedure ed_albumClick(Sender: TObject);
    procedure ComboBox_lstimgChange(Sender: TObject);
    procedure bt_helpClick(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit,xupdatebanner: Boolean;
    pathdefault : string;
    LstTables: TLstTables;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xcodunit: Integer;
    xbannersz: Integer;
    xbannertmp: TMemoryStream;
    FUpdating: Boolean;
    ComboBox_abCod,ComboBox_lstimgCod: TStringList;
    procedure addreg;
    procedure monta_ab(xchk: Boolean);
    procedure monta_lstimg;
    procedure monta_table1;
    procedure atualiza_grade;
    procedure monta_table3;
    procedure atualiza_grade3;
    procedure limpaphoto3(xupdateset:Boolean);
    procedure getBanner;
    procedure abretmpbanner;
    function retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
    procedure save_cfg(xcodlng: Integer; xExibirrx: Boolean);
    { Private declarations }
  public
    mv_mouse: TPoint;
    cp_mouse: bool;
    processoand: Boolean;
    xreceivetrad : String;
    xtimerresponse : Integer;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Public declarations }
  end;

var
  mdl_lstinst: Tmdl_lstinst;

implementation
uses udm, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_lstinst.FormClose(Sender: TObject; var Action: TCloseAction);
var axshowing: Boolean;
begin
     if bt_save1.Enabled then begin
        if hwsf.BtConfirma('Salvar alterações?') then begin
           bt_save1.Click;
        end;
     end;
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
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     loadx.Progressloading.position:=50;
     if dm.ds_sql3.Active then begin
        dm.ds_sql3.Filter:='';
        dm.ds_sql3.Filtered:=false;
        dm.ds_sql3.Close;
     end;
     loadx.Progressloading.position:=75;
     if dm.ds_sql4.Active then begin
        dm.ds_sql4.Filter:='';
        dm.ds_sql4.Filtered:=false;
        dm.ds_sql4.Close;
     end;
     loadx.Progressloading.position:=100;
     if dm.executa3.Active then dm.executa3.Close;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_lstinst.FormCreate(Sender: TObject);
var axshowing: Boolean;
    axstr_filtro_stream: TMemoryStream;
    axid_web,axid_web2,xforcps: integer;
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
     FontName.Items:=screen.Fonts;
     xcodunit:=0;
     ComboBox_abCod:= TStringList.Create;
     ComboBox_lstimgCod:= TStringList.Create;
     pathdefault:=ExtractFilePath(Application.ExeName);
     Application.Title := AxDadosUsr.axtitle;
     mdl_lstinst.Caption := AxDadosUsr.axtitle;
     xinit:=true;
     xbannertmp:= TMemoryStream.Create;
     xupdatebanner:=False;
     processoand:=false;
     SelectionChange(Self);
     SendMessage(re_editor.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor.Justify;
     loadx.Progressloading.position:=40;
     ComboBox_web.Clear;
     axid_web:=0;
     axid_web2:=0;
     if not AxDadosUsr.master then begin
        ComboBox_web.Items.Add(AxDadosUsr.website);
     end else begin
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
     if ComboBox_web.Items.Count<2 then begin
        ComboBox_web.Enabled:=false;
        Label7.Enabled:=false;
     end;
     loadx.Progressloading.position:=50;
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
             try loadx.Close; except end;
             hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
             Application.Terminate;
             exit;
          end;
          Close;
     end;
     loadx.Progressloading.position:=60;
     loadx.Progressloading.position:=70;
     loadx.Progressloading.position:=80;
     loadx.Progressloading.position:=90;
     monta_table1;
     monta_table3;
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
end;

procedure Tmdl_lstinst.monta_ab(xchk: Boolean);
var axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando lista de imagens.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando lista de imagens.';
        loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=10;
      if xchk then begin
         ComboBox_ab.Enabled:=xchk;
         ComboBox_lstimg.Enabled:=xchk;
         ed_album.Enabled:=xchk;
         ComboBox_ab.Clear;
         ComboBox_abCod.Clear;
         With dm.ds_sql3 do begin
              if Active then Close;
              CommandText:= 'SELECT DISTINCT B.codigo,B.descricao,B.mdl,B.cp5 FROM '+EnDecryptString(Serverconect.vrf32,37249)+' A, '+
                            EnDecryptString(Serverconect.vrf24,37249)+' B '+
                            'WHERE B.codigo=A.cod_grp AND A.cod_web='+#39+IntToStr(AxDadosUsr.cod_web)+#39+
                            ' AND (B.mdl='+#39+'HWSphotogalery.exe'+#39+' OR B.mdl='+#39+'HWSrichgalery.exe'+#39+')'+
                            ' ORDER BY B.descricao';
              Open;
              First;
              While not Eof do begin
                    ComboBox_ab.Items.Add(fieldbyname('descricao').AsString);
                    ComboBox_abCod.Add(fieldbyname('cp5').AsString);
                    Next;
              end;
              if RecordCount > 0 then ComboBox_ab.ItemIndex:=0
              else ComboBox_ab.ItemIndex:=-1;
         end;
         monta_lstimg;
      end else begin
         if ComboBox_ab.Enabled then begin
            loadx.Progressloading.position:=50;
            ComboBox_ab.Clear;
            ComboBox_lstimg.Clear;
            ComboBox_ab.Enabled:=xchk;
            ComboBox_lstimg.Enabled:=xchk;
            ed_album.Enabled:=xchk;
            loadx.Progressloading.position:=100;
         end;
      end;
      try loadx.Close; except end;
end;

procedure Tmdl_lstinst.monta_lstimg;
var xid_ab:integer;
begin
     ComboBox_lstimg.Clear;
     ComboBox_lstimgCod.Clear;
     if ComboBox_ab.ItemIndex < 0 then exit;
     With dm.ds_sql4 do begin
          if Active then Close;
          CommandText:= 'SELECT codigo,cod_gal,descricao FROM '+LstTables.Table[2]+
                        ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                        ' AND xtp='+#39+ComboBox_abCod.Strings[ComboBox_ab.ItemIndex]+#39+
                        ' AND cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens2.TabIndex])+#39+
                        ' ORDER BY descricao';
          Open;
          First;
          ComboBox_lstimg.Items.Add('Exibir todos os álbuns');
          ComboBox_lstimgCod.Add('0');
          While not Eof do begin
                ComboBox_lstimg.Items.Add(fieldbyname('descricao').AsString);
                ComboBox_lstimgCod.Add(fieldbyname('cod_gal').AsString);
                Next;
          end;
          ComboBox_lstimg.ItemIndex:=0;
          for xid_ab:=0 to ComboBox_lstimgCod.Count-1 do begin
              if ComboBox_lstimgCod.Strings[xid_ab] = dm.ds_sql.FieldByName('cod_gal').AsString then begin
                 ComboBox_lstimg.ItemIndex:=xid_ab;
                 break;
              end;
          end;
     end;
end;

procedure Tmdl_lstinst.monta_table1;
var listaLng_id,axcoddefault,xid_default: Integer;
    axshowing: Boolean;
    //inclui linguagens
    axListInsertLng,xtxt2: TStringList;
    axcod,axInc_codgal,axInc_codpsn: Integer;
    xtxt1,axInc_pub,axInc_filter: String;
    axInc_traduzir: Boolean;
    xtotalreg: Integer;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando lista';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando lista';
        loadx.lbloading.Repaint;
     end;
     //MONTA LINGUAGENS
     if dm.ds_sql.Active then begin
        for listaLng_id:=0 to listaLng.count do begin
            listaLng.cod_lng[listaLng_id]:=0;
            listaLng.sigla[listaLng_id]:='';
            listaLng.trd[listaLng_id]:='';
            retorna_TTabSheet2(listaLng_id).TabVisible:=false;
            retorna_TTabSheet2(listaLng_id).Caption:='';
            listaAux.ab_descricao[listaLng_id]:='';
            listaAux.ab_textft[listaLng_id].Free;
            listaAux.ms_descricao[listaLng_id]:='';
            listaAux.ms_textft[listaLng_id].Free;
        end;
        listaAux.ab_textft[0].Free;
        listaAux.ms_textft[0].Free;
     end;
     listaLng.count:=0;
     //linguagens
     With dm.ds_sql7 do begin
          if Active then Close; //A.codigo,A.cod_web,B.codigo,
          CommandText:= 'SELECT DISTINCT A.cod_lng,A.pdr,B.descricao,B.sigla,B.trd FROM '+
                                EnDecryptString(Serverconect.vrf49,37249)+' A, '+
                                EnDecryptString(Serverconect.vrf48,37249)+' B '+
                                'WHERE B.codigo=A.cod_lng AND A.cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' ORDER BY A.pdr';
          Open;
          Filter:='';
          Filtered:=false;
          First;
          axcoddefault:=0;
          while not Eof do begin
                if axcoddefault=0 then axcoddefault:=listaLng.count;
                if fieldbyname('trd').AsString='English' then xid_default:=listaLng.count;
                listaAux.ab_textft[listaLng.count]:=TStringList.Create;
                listaAux.ms_textft[listaLng.count]:=TStringList.Create;
                listaLng.cod_lng[listaLng.count]:= fieldbyname('cod_lng').AsInteger;
                listaLng.sigla[listaLng.count]:= fieldbyname('sigla').AsString;
                listaLng.trd[listaLng.count]:= fieldbyname('trd').AsString;
                retorna_TTabSheet2(listaLng.count).TabVisible:=true;
                //retorna_TTabSheet2(listaLng.count).PageIndex:=listaLng.count;
                retorna_TTabSheet2(listaLng.count).Caption:=fieldbyname('descricao').AsString;
                Inc(listaLng.count);
                Next;
          end;
          Close;
     end;
     //Monta Lista de álbuns
     With dm.ds_sql do begin
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                                ' ORDER BY codigo';
          Open;
          if not Locate('cod_lng',listaLng.cod_lng[PageControl_languagens2.TabIndex],[]) then
             First;
          Filter:='';
          Filtered:=true;
     end;
     try loadx.Close; except end;
end;

procedure Tmdl_lstinst.FormActivate(Sender: TObject);
begin
      mdl_lstinst.Refresh;
      if xinit then begin
         xinit:=false;
      end;
end;

procedure Tmdl_lstinst.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      Case key of
        VK_F1: bt_help.Click; //help
        //VK_F2: bt_del.Click; //salvar
        //VK_F3: bt_new.Click; //Novo
        //VK_F5: bt_update.Click; //Atualizar
        VK_F9: hwsf.BtSobre; //Sobre
      End;
      if (Shift = [ssCtrl]) and (Key=VK_F4) then
         Close; //Fechar janela
//      if (Shift = [ssCtrl]) and (Key=VK_DELETE) then
//         bt_del.Click; //deletar registro
end;

procedure Tmdl_lstinst.atualiza_grade;
var axshowing,xuplng: Boolean;
    axlocid,xid_ab: Integer;
    st_stream: TMemoryStream;
    tstringax: String;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
         xcodunit:=0;
      end else begin
         with dm.ds_sql do begin
            if xcodunit=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            xcodunit:=fieldbyname('codigo').AsInteger;
            if FieldByName('xtp_gal').AsString<>'' then begin
               CheckBox_ab.Checked:=true;
               monta_ab(true);
               //localiza módulo
               for xid_ab:=0 to ComboBox_abCod.Count-1 do begin
                   if ComboBox_abCod.Strings[xid_ab] = FieldByName('xtp_gal').AsString then begin
                       ComboBox_ab.ItemIndex:=xid_ab;
                       break;
                   end;
               end;
               //localiza álbum
               monta_lstimg;
            end else monta_ab(false);
            re_editor.Clear;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('blb')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            re_editor.Lines.LoadFromStream(st_stream);
            loadx.Progressloading.position:=20;
            st_stream.Free;
            if FieldByName('fnd1').AsString<>'' then
               re_editor.Color:= StringToColor(FieldByName('fnd1').AsString);
            tstringax:=FieldByName('txt').AsString;
            loadx.Progressloading.position:=50;
            bt_save1.Enabled:=false;
            atualiza_grade3;
         end;
      end;
      try loadx.Close; except end;
end;

procedure Tmdl_lstinst.getBanner;
begin
     xbannertmp.Clear;
     With dm.executa8 do begin
        CommandText:='SELECT cp12,cp13 FROM '+LstTables.Table[1]+' WHERE codigo='+#39+cfg_cod.Caption+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('cp12')).SaveToStream(xbannertmp);
           Label_size3.Caption:=Formatfloat('0',(fieldbyname('cp13').AsInteger/1000))+' kb';
        end;
        Close;
     end;
     abretmpbanner;
end;

procedure Tmdl_lstinst.abretmpbanner;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xbannertmp.Seek(0,soFromBeginning);
    if xbannertmp.Size <= 0 then begin
       swf_banner.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpfil53.tmp';
    erro:= true;
    if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    try
        xbannertmp.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_banner.Visible:=true;
            swf_banner.LoadMovie(0,'lixo');
            swf_banner.LoadMovie(0,ax_filenm);
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_banner.Visible:=false;
        xbannertmp.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir o banner.');
    end;
end;

procedure Tmdl_lstinst.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53; 
end;

function Tmdl_lstinst.retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
begin
      Case xidxcod of
          0: Result:=lngtbc1;
          1: Result:=lngtbc2;
          2: Result:=lngtbc3;
          3: Result:=lngtbc4;
          4: Result:=lngtbc5;
          5: Result:=lngtbc6;
          6: Result:=lngtbc7;
          7: Result:=lngtbc8;
          8: Result:=lngtbc9;
          9: Result:=lngtbc10;
          10: Result:=lngtbc11;
          11: Result:=lngtbc12;
          12: Result:=lngtbc13;
          13: Result:=lngtbc14;
          14: Result:=lngtbc15;
          15: Result:=lngtbc16;
          16: Result:=lngtbc17;
          17: Result:=lngtbc18;
          18: Result:=lngtbc19;
          19: Result:=lngtbc20;
      End;
end;

procedure Tmdl_lstinst.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_lstinst.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_lstinst.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
var xrecebido: Bool;
begin
      xrecebido:=false;
      xreceivetrad:='';
      Tradutor1.Texto:=xtrad_text;
      Tradutor1.TraduzirDe:=xtrad_de;
      Tradutor1.TraduzirPara:=xtrad_para;
      Tradutor1.Traduzir;
      xtimerresponse:=0;
      Timer_traduz.Enabled:=true;
      Repeat
           Application.ProcessMessages;
           if xreceivetrad<>'' then
              xrecebido:=true;
           if xtimerresponse>=60 then begin
              if not hwsf.BtConfirma('Falha na conexão, tentar novamente?') then begin
                 Result:='<|erro|>';
                 exit;
              end else begin
                 Tradutor1.Texto:=xtrad_text;
                 Tradutor1.TraduzirDe:=xtrad_de;
                 Tradutor1.TraduzirPara:=xtrad_para;
                 Tradutor1.Traduzir;
                 xtimerresponse:=0;
              end;
           end;
      Until xrecebido;
      Timer_traduz.Enabled:=false;
      if xreceivetrad='Error: Too many requests.  Please try again later.' then begin
         xreceivetrad:=xtrad_text;
         hwsf.BtMensagem('Erro na comunicação, aguarde alguns minutos e tente novamente.');
      end;
      Result:=xreceivetrad;
end;

procedure Tmdl_lstinst.save_cfg(xcodlng: Integer; xExibirrx: Boolean);
var axcod : integer;
    axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=10;
     with dm.executa do begin
             CommandText:= 'UPDATE '+LstTables.Table[1]+' SET cp11=:p0,cp14=:p1,cp15=:p2,cp16=:p3 '+
                           'WHERE codigo=:p4';
             loadx.Progressloading.position:=30;
             Params[0].AsString:= cfg_title.Text;
             Params[1].AsInteger:= cp14.ItemIndex;
             Params[2].AsInteger:= cp15.ItemIndex;
             Params[3].AsString:= AxDadosUsr.axparm;
             Params[4].AsInteger:=StrtoInt(cfg_cod.Caption);
             loadx.Progressloading.position:=50;
     end;
     try
          loadx.Progressloading.position:=70;
          dm.executa.Execute;
          loadx.Progressloading.position:=90;
     except
          try loadx.Close; except end;
          if xExibirrx then
             hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     if xupdatebanner then begin
        xbannertmp.Seek(0,soFromBeginning);
        xupdatebanner:=dm.PostBinaryStream(LstTables.Table[1],'UPDT','codigo','','cp12','','cp13','',cfg_cod.Caption,xbannertmp,nil);
     end;
     xupdatebanner:=False;
     dm.ds_sql5.Close;
     dm.ds_sql5.Open;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     if xExibirrx then Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tmdl_lstinst.monta_table3;
var listaLng_id,axcoddefault,xid_default: Integer;
    axshowing: Boolean;
    //inclui linguagens
    axListInsertLng: TStringList;
    axcod: Integer;
    xtxt1: String;
    axInc_traduzir: Boolean;
    xtotalreg,xIncludeCfg: Integer;
    axBannerStrm: TMemoryStream;
    axBannersz,axIdlng: Integer;
    banner_title : array[0..20] of String;
    axcp1: String;
    axcp14,axcp15: Integer;
    axcp18: TStringList;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando personalizações';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando personalizações';
        loadx.lbloading.Repaint;
     end;
     //Monta Lista de álbuns
     With dm.ds_sql5 do begin
          if Active then close;
          CommandText:= 'SELECT codigo,cod_web,cod_lng,cp11,cp14,cp15,cp16 FROM '+LstTables.Table[1]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' AND cp16='+#39+AxDadosUsr.axparm+#39+
                                ' ORDER BY cod_lng';
          Open;
          Filter:='';
          Filtered:=true;
          xIncludeCfg:=0;
          if (recordcount>0) and xinit then begin
             xIncludeCfg:=1;
          end else if xinit then begin
             xIncludeCfg:=2;
          end;
          if xIncludeCfg>0 then begin
             axListInsertLng:= TStringList.Create;
             axListInsertLng.Clear;
             if xIncludeCfg=1 then begin
                for listaLng_id:=0 to listaLng.count-1 do begin
                    banner_title[listaLng_id]:='';
                    if listaLng.trd[listaLng_id]='English' then xid_default:=listaLng_id;
                end;
                for listaLng_id:=0 to listaLng.count-1 do begin
                    if not Locate('cod_lng',listaLng.cod_lng[listaLng_id],[]) then
                       axListInsertLng.Add(IntToStr(listaLng_id));
                end;
             end else begin
                for listaLng_id:=0 to listaLng.count-1 do begin
                    banner_title[listaLng_id]:='';
                    if listaLng.trd[listaLng_id]='English' then xid_default:=listaLng_id;
                    axListInsertLng.Add(IntToStr(listaLng_id));
                end;
             end;
             xtotalreg:=axListInsertLng.Count;
             if axListInsertLng.Count>0 then begin
               try
                   axInc_traduzir:=True;
                   loadx.lbloading.Caption:='Sincronizando linguagens';
                   loadx.lbloading.Repaint;
                   if xIncludeCfg=1 then begin
                      if not Locate('cod_lng',listaLng.cod_lng[xid_default],[]) then begin
                         if not Locate('cod_lng',listaLng.cod_lng[axcoddefault],[]) then begin
                            First;
                            for listaLng_id:=0 to listaLng.count-1 do begin
                                if listaLng.cod_lng[listaLng_id]=fieldbyname('cod_lng').AsInteger then begin
                                   axcoddefault:=listaLng_id;
                                   Break;
                                end;
                            end;
                         end;
                      end else axcoddefault:=xid_default;
                   end else axcoddefault:=xid_default;
                   loadx.Progressloading2.Visible:=true;
                   loadx.repaint;
                   loadx.Progressloading2.Max:=listaLng.count*(xtotalreg*2);
                   loadx.Progressloading2.Position:=0;
                   axBannerStrm:= TMemoryStream.Create;
                   axBannerStrm.Clear;
                   axBannerStrm.Seek(0,soFromBeginning);
                   axBannersz:=0;
                   axcp18:= TStringList.Create;
                   if xIncludeCfg=1 then begin
                      if Locate('cod_lng',listaLng.cod_lng[axcoddefault],[]) then begin
                         xtxt1:= fieldbyname('cp11').AsString;
                         axcp14:= fieldbyname('cp14').AsInteger;
                         axcp15:= fieldbyname('cp15').AsInteger;
                         With dm.executa8 do begin
                              CommandText:='SELECT cp12,cp13 FROM '+LstTables.Table[1]+' WHERE codigo='+#39+dm.ds_sql5.fieldbyname('codigo').AsString+#39;
                              Open;
                              if not fields[0].IsNull then begin
                                 TBlobField(FieldByName('cp12')).SaveToStream(axBannerStrm);
                                 axBannerStrm.Seek(0,soFromBeginning);
                                 axBannersz:=fieldbyname('cp13').AsInteger;
                              end;
                              Close;
                         end;
                      end;
                   end else begin
                      if (copy(AxDadosUsr.axtitle,1,10) = 'HWScontrol') then
                          xtxt1:= copy(AxDadosUsr.axtitle,12,length(AxDadosUsr.axtitle))
                      else xtxt1:= AxDadosUsr.axtitle;
                      cfg_title.Text:=xtxt1;
                      axcp14:= 0;
                      axcp15:= 0;
                   end;
                   loadx.Progressloading.position:=80;
                   //traduzindo textos
                   if axInc_traduzir then begin
                            loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet2(axcoddefault).Caption;
                            loadx.lbloading.Repaint;
                            if (xid_default=axcoddefault) then begin
                               banner_title[xid_default]:=xtxt1;
                            end else begin
                               banner_title[axcoddefault]:=xtxt1;
                               loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet2(xid_default).Caption;
                               loadx.lbloading.Repaint;
                               xtxt1:=recebetraducao(xtxt1,listaLng.trd[axcoddefault],listaLng.trd[xid_default]);
                               if copy(xtxt1,1,7)='Error: ' then xtxt1:=banner_title[xid_default];
                               if xtxt1 = '<|erro|>' then begin
                                  loadx.Close;
                                  hwsf.BtMensagem('Erro na conexão');
                                  exit;
                               end;
                               banner_title[xid_default]:=xtxt1;
                            end;
                            for listaLng_id:=0 to axListInsertLng.count-1 do begin
                                loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                                if (StrToInt(axListInsertLng.Strings[listaLng_id])<>axcoddefault) AND (StrToInt(axListInsertLng.Strings[listaLng_id])<>xid_default) then begin
                                   loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet2(StrToInt(axListInsertLng.Strings[listaLng_id])).Caption;
                                   loadx.lbloading.Repaint;
                                   xtxt1:=recebetraducao(banner_title[xid_default],listaLng.trd[xid_default],listaLng.trd[StrToInt(axListInsertLng.Strings[listaLng_id])]);
                                   if copy(xtxt1,1,7)='Error: ' then xtxt1:=banner_title[xid_default];
                                   if xtxt1 = '<|erro|>' then begin
                                      loadx.Close;
                                      hwsf.BtMensagem('Erro na conexão');
                                      exit;
                                   end;
                                   banner_title[StrToInt(axListInsertLng.Strings[listaLng_id])]:=xtxt1;
                                end;
                            end;
                   end else begin
                            for listaLng_id:=0 to axListInsertLng.count-1 do begin
                                loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                                banner_title[StrToInt(axListInsertLng.Strings[listaLng_id])]:=xtxt1;
                            end;
                   end;
                   loadx.lbloading.Caption:='Gravando dados, aguarde.';
                   loadx.lbloading.Repaint;
                   for listaLng_id:=0 to axListInsertLng.count-1 do begin
                          loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                          axcod:=dm.GetCodMax(LstTables.Table[1],'codigo','');
                          with dm.executa do begin
                               CommandText:= 'INSERT INTO '+LstTables.Table[1]+' (codigo,cod_web,cod_lng,cp11,cp14,cp15,cp16) '+
                                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
                               Params[0].AsInteger:=axcod;
                               loadx.Progressloading.position:=20;
                               Params[1].AsInteger:=AxDadosUsr.cod_web;
                               Params[2].AsInteger:=listaLng.cod_lng[StrToInt(axListInsertLng.Strings[listaLng_id])];
                               loadx.Progressloading.position:=30;
                               axIdlng:=StrToInt(axListInsertLng.Strings[listaLng_id]);
                               Params[3].AsString:= banner_title[axIdlng];
                               Params[4].AsInteger:= axcp14;
                               Params[5].AsInteger:= axcp15;
                               Params[6].AsString:= AxDadosUsr.axparm;
                               Execute;
                          end;
                          xbannertmp.Seek(0,soFromBeginning);
                          xupdatebanner:=dm.PostBinaryStream(LstTables.Table[1],'UPDT','codigo','','cp12','','cp13','',cfg_cod.Caption,xbannertmp,nil);
                   end;
                   axBannerStrm.Free;
               except
                    Close;
                    try loadx.Close; except end;
                    hwsf.BtMensagem('Ocorreu algum erro, reinicie o módulo.');
                    Application.Terminate;
               end;
               //salva alterações
               Close;
               Open;
               loadx.Progressloading2.Visible:=false;
               loadx.Repaint;
             end;
             axListInsertLng.Free;
          end;
     end;
     try loadx.Close; except end;
end;

procedure Tmdl_lstinst.atualiza_grade3;
var axshowing: Boolean;
    axlocid: Integer;
begin
     //banner
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando personalizações';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando personalizações';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      with dm.ds_sql5 do begin
         if Locate('cod_lng',listaLng.cod_lng[PageControl_languagens2.TabIndex],[]) then begin
            if cfg_cod.Caption=fieldbyname('codigo').AsString then begin
               try loadx.Close; except end;
               exit;
            end;
            limpaphoto3(False);
            loadx.Progressloading.position:=20;
            cfg_cod.Caption:=fieldbyname('codigo').AsString;
            loadx.Progressloading.position:=30;
            cfg_title.Text:=fieldbyname('cp11').AsString;
            //álbuns
            cp14.ItemIndex:=fieldbyname('cp14').AsInteger;
            cp15.ItemIndex:=fieldbyname('cp15').AsInteger;
            loadx.Progressloading.position:=50;
         end else begin
            try loadx.Close; except end;
            exit;
         end;
      end;
      getBanner;
      bt_save1.Enabled:=false;
      try loadx.Close; except end;
end;

procedure Tmdl_lstinst.limpaphoto3(xupdateset:Boolean);
begin
     xupdatebanner:=xupdateset;
     xbannertmp.Clear;
     xbannertmp.Seek(0,soFromBeginning);
     xbannersz:=0;
     Label_size3.Caption:='0 kb';
     swf_banner.Visible:=false;
     swf_banner.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstinst.bt_open3Click(Sender: TObject);
var xfilext: String;
    xerror: Boolean;
    codBitmap: TBitmap;
    codJpeg: TJPEGImage;
    axshowing: Boolean;
begin
      if OpenBannerDialog.Execute then begin
         if not bt_save1.Enabled then
            bt_save1.Enabled:=true;
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Importando banner';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Importando banner';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.position:=50;
         limpaphoto3(xupdatebanner);
         xfilext:=ExtractFileExt(OpenBannerDialog.FileName);
         xerror:=false;
         if (xfilext='.bmp') then begin
            try
               codJpeg:= TJPEGImage.Create;
               codBitmap:= TBitmap.Create;
               codBitmap.LoadFromFile(ImportarImgDialog.FileName);
               With codJpeg do begin
                  Assign(codBitmap);
                  CompressionQuality:=30;
                  Compress;
                  SaveToStream(xbannertmp);
               end;
            except
               xerror:=true;
            end;
            try
               codJpeg.Free;
               codBitmap.Free;
            except
            end;
         end else if (xfilext='.jpg') or (xfilext='.jpeg') then begin
            try
               xbannertmp.LoadFromFile(OpenBannerDialog.FileName);
            except
               xerror:=true;
            end;
         end else if (xfilext='.swf') then begin
            try
               xbannertmp.LoadFromFile(OpenBannerDialog.FileName);
            except
               xerror:=true;
            end;
         end else xerror:=true;
         loadx.Progressloading.position:=100;
         if xerror then begin
            limpaphoto3(xupdatebanner);
            try loadx.Close; except end;
            hwsf.BtMensagem('Formato de arquivo inválido.');
            exit;
         end;
         xbannertmp.Seek(0,soFromBeginning);
         xbannersz:=xbannertmp.Size;
         if (xbannersz > 700000) then begin
            limpaphoto3(xupdatebanner);
            try loadx.Close; except end;
            hwsf.BtMensagem('Tamanho do arquivo excedeu o limite de 700 kb.');
            exit;
         end;
         xupdatebanner:=true;
         try loadx.Close; except end;
         xbannertmp.LoadFromFile(OpenBannerDialog.FileName);
         abretmpbanner;
      end;
end;

procedure Tmdl_lstinst.bt_limpar3Click(Sender: TObject);
begin
      limpaphoto3(true);
end;

procedure Tmdl_lstinst.bt_save4Click(Sender: TObject);
begin
      save_cfg(listaLng.cod_lng[PageControl_languagens2.TabIndex],true);
end;

procedure Tmdl_lstinst.PageControl_languagens2Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then begin
         atualiza_grade3;
      end else begin
         if bt_save1.Enabled then begin
          if hwsf.BtConfirma('Salvar alterações?') then
             bt_save1.Click;
         end;
         monta_ab(CheckBox_ab.Checked);
         if not dm.ds_sql.Locate('cod_lng',listaLng.cod_lng[PageControl_languagens2.TabIndex],[]) then
            dm.ds_sql.First;
         atualiza_grade;
      end;
end;

procedure Tmdl_lstinst.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then atualiza_grade3;
      //ToolBar_lng.Visible:=(PageControl1.TabIndex>0);
end;

procedure Tmdl_lstinst.bt_save1Click(Sender: TObject);
var axshowing: Boolean;
    st_stream: TMemoryStream;
    xstrTAGs: TStringList;
    xforcps: integer;
begin
     if CheckBox_ab.Checked and (ComboBox_ab.ItemIndex<0) then begin
        hwsf.BtMensagem('Selecione o álbum de fotos.');
        ComboBox_ab.SetFocus;
        exit;
     end;
     bt_save1.Enabled:=false;
     xstrTAGs:= TStringList.Create;
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=10;
     st_stream := TMemoryStream.Create;
     re_editor.Lines.SaveToStream(st_stream);
     xstrTAGs.Clear;
     st_stream.Position:=0;
     //xstrTAGs:=dm.ConvertRTFtoHTML('',st_stream);
     xstrTAGs:= dm.RtfToHtml2('',false,re_editor);
     if xcodunit = 0 then begin
        loadx.Progressloading.position:=30;
        for xforcps:=0 to listaLng.count-1 do begin
            xcodunit:=dm.GetCodMax(LstTables.Table[0],'codigo','');
            with dm.executa do begin
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_web,cod_lng,xtp_gal,cod_gal,xtp,blb,txt,fnd1) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)';
                 Params[0].AsInteger:=xcodunit;
                 Params[1].AsInteger:=AxDadosUsr.cod_web;
                 Params[2].AsInteger:=listaLng.cod_lng[xforcps];
                 if CheckBox_ab.Checked then begin
                    Params[3].AsString:=ComboBox_abCod.Strings[ComboBox_ab.ItemIndex];
                    Params[4].AsInteger:=StrtoInt(ComboBox_lstimgCod.Strings[ComboBox_lstimg.ItemIndex]);
                 end else begin
                    Params[3].AsString:='';
                    Params[4].AsInteger:=0;
                 end;
                 Params[5].AsString:=AxDadosUsr.axparm;
                 st_stream.Seek(0,soFromBeginning);
                 Params[6].LoadFromStream(st_stream,ftblob);
                 Params[7].Assign(xstrTAGs);
                 Params[8].AsString:= ColorToString(re_editor.Color);
                 try
                     Execute;
                 except
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
            end;
        end;
        loadx.Progressloading.position:=60;
     end else begin
        with dm.executa do begin
            loadx.Progressloading.position:=60;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET xtp_gal=:p0,cod_gal=:p1,blb=:p2,txt=:p3,fnd1=:p4 '+
                          'WHERE codigo=:p5';
            if CheckBox_ab.Checked then begin
               Params[0].AsString:=ComboBox_abCod.Strings[ComboBox_ab.ItemIndex];
               Params[1].AsInteger:=StrtoInt(ComboBox_lstimgCod.Strings[ComboBox_lstimg.ItemIndex]);
            end else begin
               Params[0].AsString:='';
               Params[1].AsInteger:=0;
            end;
            st_stream.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(st_stream,ftblob);
            Params[3].Assign(xstrTAGs);
            Params[4].AsString:= ColorToString(re_editor.Color);
            Params[5].AsInteger:=xcodunit;
            try
               loadx.Progressloading.position:=80;
               Execute;
               loadx.Progressloading.position:=90;
            except
               hwsf.BtMensagem('Ocorreu algum erro.');
               bt_save1.Enabled:=true;
               exit;
            end;
        end;
        loadx.Progressloading.position:=70;
     end;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     xstrTAGs.Free;
     st_stream.Free;
     save_cfg(listaLng.cod_lng[PageControl_languagens2.TabIndex],false);
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     //if not axshowing then
     loadx.Close;
     bt_save1.Enabled:=false;
end;

procedure Tmdl_lstinst.KeyPressChange(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_lstinst.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor do
          re_editor.Undo;
//          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tmdl_lstinst.Refazer1Click(Sender: TObject);
begin
     //refazer
     with re_editor do
          re_editor.Redo;
end;

procedure Tmdl_lstinst.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor.CutToClipboard;
end;

procedure Tmdl_lstinst.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor.CopyToClipboard;
end;

procedure Tmdl_lstinst.Colar1Click(Sender: TObject);
begin
     //colar
     re_editor.PasteFromClipboard;
end;

procedure Tmdl_lstinst.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_lstinst.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tmdl_lstinst.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tmdl_lstinst.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tmdl_lstinst.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor.Paragraph.Numbering := TRxNumbering(not BulletsButton.Down);
end;

procedure Tmdl_lstinst.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tmdl_lstinst.esquerdo1Click(Sender: TObject);
begin
     LeftAlign.Click;
end;

procedure Tmdl_lstinst.centro1Click(Sender: TObject);
begin
     CenterAlign.Click;
end;

procedure Tmdl_lstinst.direita1Click(Sender: TObject);
begin
     RightAlign.Click;
end;

procedure Tmdl_lstinst.justificado1Click(Sender: TObject);
begin
     JustifyAlign.Click;
end;

procedure Tmdl_lstinst.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if processoand then exit;
  if (Shift = [ssCtrl]) then
  case Key of
    65,84: (Sender as TRxRichEdit).SelectAll;
  end;
end;

procedure Tmdl_lstinst.SelectionChange(Sender: TObject);
begin
  if processoand then exit;
  with re_editor.Paragraph do
  try
    FUpdating := True;
    BoldButton.Down := fsBold in re_editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in re_editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in re_editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(re_editor.SelAttributes.Size);
    FontName.Text := re_editor.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
      3: JustifyAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

function Tmdl_lstinst.CurrText: TRxTextAttributes;
begin
  if re_editor.SelLength > 0 then Result := re_editor.SelAttributes
  else Result := re_editor.DefAttributes;
end;

procedure Tmdl_lstinst.SetEditRect;
var
  R: TRect;
begin
  with re_editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tmdl_lstinst.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(re_editor.Handle, EM_EXLINEFROMCHAR, 0,
    re_editor.SelStart);
  CharPos.X := (re_editor.SelStart -
    SendMessage(re_editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

procedure Tmdl_lstinst.FormPaint(Sender: TObject);
begin
      SetEditRect;
end;

procedure Tmdl_lstinst.FormShow(Sender: TObject);
begin
      UpdateCursorPos;
      monta_ab(CheckBox_ab.Checked);
      atualiza_grade;
end;

procedure Tmdl_lstinst.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Tmdl_lstinst.FontSizeChange(Sender: TObject);
var xvalusize: Integer;
begin
     if FUpdating then Exit;
     try
         xvalusize := StrToInt(FontSize.Text);
         CurrText.Size := xvalusize;
     except
         exit;
     end;
end;

procedure Tmdl_lstinst.Importar1Click(Sender: TObject);
begin
      if OpenDialog1.Execute then
         re_editor.Lines.SaveToFile(OpenDialog1.FileName);
end;

procedure Tmdl_lstinst.bt_new1Click(Sender: TObject);
begin
      addreg;
end;

procedure Tmdl_lstinst.addreg;
begin
     if not bt_save1.Enabled then
        bt_save1.Enabled:=true;
     re_editor.Clear;
     CheckBox_ab.Checked:=false;
     ComboBox_ab.ItemIndex:=-1;
     FontName.ItemIndex:=0;
     UpDown1.Position:=12;
end;

procedure Tmdl_lstinst.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_ab(CheckBox_ab.Checked);
             monta_table1;
             atualiza_grade;
             monta_table3;
          end;
      end;
end;

procedure Tmdl_lstinst.re_editorChange(Sender: TObject);
begin
      if not bt_save1.Enabled then
         bt_save1.Enabled:=true;
end;

procedure Tmdl_lstinst.CheckBox_abClick(Sender: TObject);
begin
      if not bt_save1.Enabled then
         bt_save1.Enabled:=true;
      monta_ab(CheckBox_ab.Checked);
end;

procedure Tmdl_lstinst.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         re_editor.Color := ColorDialog1.Color;
         if not bt_save1.Enabled then
            bt_save1.Enabled:=true;
     end;
end;

procedure Tmdl_lstinst.Imagem1Click(Sender: TObject);
begin
      //imagem de fundo
      PageControl1.TabIndex:=1;
      bt_open3.Click;
end;

procedure Tmdl_lstinst.ComboBox_abChange(Sender: TObject);
begin
      if not bt_save1.Enabled then
         bt_save1.Enabled:=true;
      monta_lstimg;
end;

procedure Tmdl_lstinst.cfg_titleChange(Sender: TObject);
begin
      if not bt_save1.Enabled then
         bt_save1.Enabled:=true;
end;

procedure Tmdl_lstinst.ed_albumClick(Sender: TObject);
var ax_mod2,ax_param : string;
begin
     if ComboBox_ab.Text = '' then begin
        hwsf.BtMensagem('É necessário selecionar um álbum.');
        ComboBox_ab.SetFocus;
     end;
     if dm.ds_sql3.Locate('descricao',ComboBox_ab.Text,[]) then
        ax_mod2:= ExtractFilePath(Application.ExeName)+dm.ds_sql3.fieldbyname('mdl').AsString
     else begin
        hwsf.BtMensagem('Álbum selecionado inválido.');
        ComboBox_ab.SetFocus;
     end;
     if ComboBox_lstimg.ItemIndex < 0 then ComboBox_lstimg.ItemIndex := 0;
     if FileExists(ax_mod2) then begin
        ax_param:=' '+ComboBox_abCod.Strings[ComboBox_ab.ItemIndex]+' '+ComboBox_lstimgCod.Strings[ComboBox_lstimg.ItemIndex];
        WinExec(PChar(ax_mod2+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+ax_param), SW_SHOW);
     end else begin
        hwsf.BtMensagem('Módulo inexistente.');
     end;
end;

procedure Tmdl_lstinst.ComboBox_lstimgChange(Sender: TObject);
begin
      if not bt_save1.Enabled then
         bt_save1.Enabled:=true;
end;

procedure Tmdl_lstinst.bt_helpClick(Sender: TObject);
begin
      //Tópicos de ajuda
      WinExec(PChar(ExtractFilePath(Application.ExeName)+'HWShelp.exe'+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+' 1 '+InttoStr(AxDadosUsr.cod_grp)), SW_SHOW);
end;

procedure Tmdl_lstinst.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_lstinst.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.

