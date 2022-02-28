{###############################################################################
Programa: HWSgalery
Módulo: Módulo de Galeria de fotos.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit ugaleriadefotos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, DB, ExtDlgs, JPEG,
  Grids, SqlExpr, DBXpress, DBGrids;

type
  Tgaleria_conf = record
      ic_w: real;
      ic_h: real;
      ic_dpi: real;
      ic_desc: boolean;
      ic_ajt: boolean;
      il_w: real;
      il_h: real;
      il_dpi: real;
      il_desc: boolean;
      il_ajt: boolean;
      ab_w: real;
      ab_h: real;
      ab_dpi: real;
      ab_desc: boolean;
      ab_ajt: boolean;
  End;
  Tgaleriadefotos = class(TForm)
    pn_tit: TPanel;
    Image3: TImage;
    biSystemMenu: TImage;
    bt_sobre: TSpeedButton;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    bt_fechar: TSpeedButton;
    tb_mnt: TLabel;
    pn_status: TPanel;
    Image4: TImage;
    pn_editor: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    GroupBox1: TGroupBox;
    db_cds: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    db_musics: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    Imagebase: TImage;
    Panel8: TPanel;
    Label1: TLabel;
    ab_titulo: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    ab_detalhes: TMemo;
    ab_cod: TLabel;
    ToolBar2: TToolBar;
    SpeedButton5: TSpeedButton;
    ToolBar3: TToolBar;
    SpeedButton6: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    ToolBar4: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel9: TPanel;
    Panel11: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ms_cod: TLabel;
    ms_musica: TEdit;
    ms_detalhes: TMemo;
    Splitter1: TSplitter;
    Label12: TLabel;
    ab_default: TCheckBox;
    OpenDialog_mp3: TOpenDialog;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Panel1: TPanel;
    Imagebase2: TImage;
    ComboBox_model: TComboBox;
    Label2: TLabel;
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure db_cdsCellClick(Column: TColumn);
    procedure db_cdsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_cdsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_musicsCellClick(Column: TColumn);
    procedure db_musicsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_musicsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    xfotorefresh,xfotorefresh2: TFileName;
    st_stream : TMemoryStream;
    galeria_conf : Tgaleria_conf;
    getTabs : array[0..1000] of String;
    procedure limpacapa;
    procedure limpacapa2;
    procedure atualizacapa;
    procedure atualizacapa2;
    procedure montaalbum;
    procedure novoalbum;
    procedure montamusica;
    procedure novamusica;
    { Private declarations }
  public
     mv_mouse : TPoint;
     cp_mouse : bool;
     procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  galeriadefotos: Tgaleriadefotos;

implementation

uses hwsfunctions, udm, DateUtils, ueditortextflash;

{$R *.dfm}

procedure Tgaleriadefotos.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(galeriadefotos.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tgaleriadefotos.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(galeriadefotos.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tgaleriadefotos.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      galeriadefotos.Left:= galeriadefotos.Left-(mv_mouse.x-x);
      galeriadefotos.Top:= galeriadefotos.Top - (mv_mouse.y-y);
  end;
end;

procedure Tgaleriadefotos.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      galeriadefotos.Left := galeriadefotos.Left - (mv_mouse.x -x);
      galeriadefotos.Top := galeriadefotos.Top - (mv_mouse.y - y);
  end;
end;

procedure Tgaleriadefotos.FormCreate(Sender: TObject);
var xtbcount : Integer;
begin
      Application.OnMessage := tabtoenterpress;
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      //DoubleBuffered:=True;
      Panel5.DoubleBuffered:=True;
      Panel1.DoubleBuffered:=True;
      xfotorefresh:='';
      xfotorefresh2:='';
      //Brush.Style := BsClear;
      //pega nome das tabelas
      with dm.executa6 do begin
           SQL.Text:= 'SELECT cp2 FROM m0_fky15 WHERE cod_grp='+#39+'3'+#39+' ORDER BY cp2';
           Open;
           First;
           xtbcount := 0;
           While not Eof do begin
               getTabs[xtbcount] := fieldbyname('cp2').AsString; //EnDecryptString(fieldbyname('cp2').AsString,37249);
               Inc(xtbcount);
               Next;
           end;
           Close;
      end;
      //albuns
      db_cds.DataSource:= dm.source_sql;
      db_cds.Columns.Clear;
      db_cds.Columns.Add;
      db_cds.Columns.Items[0].FieldName:='codigo';
      db_cds.Columns.Items[0].Title.Caption:='Código';
      db_cds.Columns.Add;
      db_cds.Columns.Items[1].FieldName:='descricao';
      db_cds.Columns.Items[1].Title.Caption:='Nome da galeria';
      With dm.ds_sql do begin
        DataSet.CommandText:= 'select * from '+getTabs[0]+
                              ' Where cod_web='+#39+InttoStr(Clientconect.vrf00)+#39+
                              ' order by descricao';
        Filter:='';
        Filtered:=false;
        Open;
      end;
      //fotos
      db_musics.DataSource:= dm.source_sql3;
      db_musics.Columns.Clear;
      db_musics.Columns.Add;
      db_musics.Columns.Items[0].FieldName:='codigo';
      db_musics.Columns.Items[0].Title.Caption:='Código';
      db_musics.Columns.Add;
      db_musics.Columns.Items[1].FieldName:='descricao';
      db_musics.Columns.Items[1].Title.Caption:='Descrição';
      With dm.ds_sql3 do begin
        DataSet.CommandText:= 'select * from '+getTabs[2]+
                              ' order by descricao';
        Filter:='cod_gal='+#39+'0'+#39;
        Filtered:=true;
        Open;
      end;
      //pega tamanho das imagens
      with dm.executa5 do begin
           SQL.Text:= 'SELECT * FROM '+getTabs[4]+' ORDER BY descricao';
           Open;
           ComboBox_model.Clear;
           First;
           While not Eof do begin
               ComboBox_model.Items.Add(fieldbyname('descricao').AsString);
               Next;
           end;
      end;
      montaalbum;
end;

procedure Tgaleriadefotos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if FileExists(xfotorefresh) then DeleteFile(xfotorefresh);
     if FileExists(xfotorefresh2) then DeleteFile(xfotorefresh2);
     dm.ds_sql.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.executa5.Close;
     Action := caFree;
end;

procedure Tgaleriadefotos.bt_fecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tgaleriadefotos.bt_maximizaClick(Sender: TObject);
begin
     if galeriadefotos.WindowState=wsMaximized then galeriadefotos.WindowState:=wsNormal
     else galeriadefotos.WindowState:=wsMaximized;
     bt_fechar.Left:=pn_tit.Width-18;
     bt_maximiza.Left:=bt_fechar.Left-15;
     bt_minimize.Left:=bt_maximiza.Left-15;
     bt_sobre.Left:=bt_minimize.Left-15;
end;

procedure Tgaleriadefotos.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tgaleriadefotos.bt_sobreClick(Sender: TObject);
begin
     hwsf.BtSobre;
end;

procedure Tgaleriadefotos.SpeedButton4Click(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then begin
        Try
           Imagebase.Picture.LoadFromFile(OpenPictureDialog1.FileName);
           xfotorefresh:=OpenPictureDialog1.FileName;
        Except End;
     end;
end;

procedure Tgaleriadefotos.SpeedButton6Click(Sender: TObject);
begin
     limpacapa;
end;

procedure Tgaleriadefotos.FormResize(Sender: TObject);
begin
     ab_detalhes.Height:= Panel8.Height - 52;
     ms_detalhes.Height:= Panel11.Height - 52;
end;

procedure Tgaleriadefotos.limpacapa;
begin
    Try
        Imagebase.Picture.Assign(nil);
        if FileExists(xfotorefresh) then DeleteFile(xfotorefresh);
        xfotorefresh:='';
    Except End;
end;

procedure Tgaleriadefotos.limpacapa2;
begin
    Try
        Imagebase2.Picture.Assign(nil);
        if FileExists(xfotorefresh2) then DeleteFile(xfotorefresh2);
        xfotorefresh2:='';
    Except End;
end;

procedure Tgaleriadefotos.atualizacapa;
var jpgImg: TJPEGImage;
    stMem: TMemoryStream;
begin
     if ab_cod.Caption='0' then begin
        limpacapa;
        exit;
     end;
     if FileExists(xfotorefresh) then DeleteFile(xfotorefresh);
     dm.executa5.SQL.Text:='SELECT * FROM '+getTabs[1]+
                           ' WHERE cod_gal='+#39+ab_cod.Caption+#39;
     dm.executa5.Open;
     if dm.executa5.FieldByName('icon').AsString<>'' then begin
        Try
           jpgImg := TJPEGImage.Create;
           stMem := TMemoryStream.Create;
           TBlobField(dm.executa5.FieldByName('icon')).SaveToStream(stMem);
           stMem.Position := 0;
           jpgImg.LoadFromStream(stMem);
           Imagebase.Picture.Assign(jpgImg);
           Imagebase.Picture.SaveToFile('~tmpcp.jpg');
           xfotorefresh:='~tmpcp.jpg';
        Finally
           stMem.Free;
           jpgImg.Free;
        End;
     end else begin
        limpacapa;
     end;
     dm.executa5.Close;
end;

procedure Tgaleriadefotos.atualizacapa2;
var jpgImg: TJPEGImage;
    stMem: TMemoryStream;
begin
     if ms_cod.Caption='0' then begin
        limpacapa2;
        exit;
     end;
     if FileExists(xfotorefresh2) then DeleteFile(xfotorefresh2);
     dm.executa5.SQL.Text:='SELECT * FROM '+getTabs[3]+
                           ' WHERE cod_img='+#39+ms_cod.Caption+#39;
     dm.executa5.Open;
     if dm.executa5.FieldByName('img_ico').AsString<>'' then begin
        Try
           jpgImg := TJPEGImage.Create;
           stMem := TMemoryStream.Create;
           TBlobField(dm.executa5.FieldByName('img_ico')).SaveToStream(stMem);
           stMem.Position := 0;
           jpgImg.LoadFromStream(stMem);
           Imagebase2.Picture.Assign(jpgImg);
           Imagebase2.Picture.SaveToFile('~tmpcp2.jpg');
           xfotorefresh:='~tmpcp2.jpg';
        Finally
           stMem.Free;
           jpgImg.Free;
        End;
     end else begin
        limpacapa;
     end;
     dm.executa5.Close;
end;

procedure Tgaleriadefotos.montaalbum;
begin
     if dm.ds_sql.RecordCount <= 0 then begin
        novoalbum;
        limpacapa;
        exit;
     end;
     ab_cod.Caption:= dm.ds_sql.fieldbyname('codigo').AsString;
     if dm.ds_sql.fieldbyname('cod_ls').AsInteger=1 then ab_default.Checked:=true
     else ab_default.Checked:=false;
     ab_titulo.Text:= dm.ds_sql.fieldbyname('descricao').AsString;
     ComboBox_model.Enabled:=true;
     if dm.executa5.Locate('codigo',dm.ds_sql.fieldbyname('cod_psn').AsInteger,[]) then begin
        ComboBox_model.Text:=dm.executa5.fieldbyname('descricao').AsString;
        //icon foto
        galeria_conf.ic_w := dm.executa5.fieldbyname('ic_w').AsFloat;
        galeria_conf.ic_h := dm.executa5.fieldbyname('ic_w').AsFloat;
        galeria_conf.ic_dpi := dm.executa5.fieldbyname('ic_dpi').AsFloat;
        galeria_conf.ic_desc := dm.executa5.fieldbyname('ic_desc').AsBoolean;
        galeria_conf.ic_ajt := dm.executa5.fieldbyname('ic_ajt').AsBoolean;
        //larg foto
        galeria_conf.il_w := dm.executa5.fieldbyname('il_w').AsFloat;
        galeria_conf.il_h := dm.executa5.fieldbyname('il_w').AsFloat;
        galeria_conf.il_dpi := dm.executa5.fieldbyname('il_dpi').AsFloat;
        galeria_conf.il_desc := dm.executa5.fieldbyname('il_desc').AsBoolean;
        galeria_conf.il_ajt := dm.executa5.fieldbyname('il_ajt').AsBoolean;
        //icon album
        galeria_conf.ab_w := dm.executa5.fieldbyname('ab_w').AsFloat;
        galeria_conf.ab_h := dm.executa5.fieldbyname('ab_w').AsFloat;
        galeria_conf.ab_dpi := dm.executa5.fieldbyname('ab_dpi').AsFloat;
        galeria_conf.ab_desc := dm.executa5.fieldbyname('ab_desc').AsBoolean;
        galeria_conf.ab_ajt := dm.executa5.fieldbyname('ab_ajt').AsBoolean;
     end else begin
        ComboBox_model.Text:='em branco';
        //icon foto
        galeria_conf.ic_w := 0;
        galeria_conf.ic_h := 0;
        galeria_conf.ic_dpi := 0;
        galeria_conf.ic_desc := true;
        galeria_conf.ic_ajt := true;
        //larg foto
        galeria_conf.il_w := 0;
        galeria_conf.il_h := 0;
        galeria_conf.il_dpi := 0;
        galeria_conf.il_desc := true;
        galeria_conf.il_ajt := true;
        //icon album
        galeria_conf.ab_w := 0;
        galeria_conf.ab_h := 0;
        galeria_conf.ab_dpi := 0;
        galeria_conf.ab_desc := true;
        galeria_conf.ab_ajt := true;
     end;
     ComboBox_model.Enabled:=false;
     Try
        st_stream := TMemoryStream.Create;
        TBlobField(dm.ds_sql.FieldByName('textft')).SaveToStream(st_stream);
        st_stream.Seek(0,soFromBeginning);
        ab_detalhes.Lines.LoadFromStream(st_stream);
     Finally
        st_stream.Free;
     End;
     dm.ds_sql3.Filter:='cod_gal='+#39+dm.ds_sql.fieldbyname('codigo').AsString+#39;
     montamusica;
     atualizacapa;
end;

procedure Tgaleriadefotos.novoalbum;
begin
     ab_cod.Caption:='0';
     ab_default.Checked:=true;
     ab_titulo.Text:='';
     ab_detalhes.Clear;
     ComboBox_model.Enabled:=true;
     limpacapa;
end;

procedure Tgaleriadefotos.montamusica;
begin
     if dm.ds_sql3.RecordCount <= 0 then begin
        novamusica;
        exit;
     end;
     ms_cod.Caption:= dm.ds_sql3.fieldbyname('codigo').AsString;
     ms_musica.Text:= dm.ds_sql3.fieldbyname('descricao').AsString;
     Try
        st_stream := TMemoryStream.Create;
        TBlobField(dm.ds_sql3.FieldByName('textft')).SaveToStream(st_stream);
        st_stream.Seek(0,soFromBeginning);
        ms_detalhes.Lines.LoadFromStream(st_stream);
     Finally
        st_stream.Free;
     End;
     atualizacapa2;
end;

procedure Tgaleriadefotos.novamusica;
begin
     ms_cod.Caption:='0';
     ms_musica.Text:='';
     ms_detalhes.Clear;
     limpacapa2;
end;

procedure Tgaleriadefotos.db_cdsCellClick(Column: TColumn);
begin
     montaalbum;
end;

procedure Tgaleriadefotos.db_cdsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     montaalbum;
end;

procedure Tgaleriadefotos.db_cdsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     montaalbum;
end;

procedure Tgaleriadefotos.db_musicsCellClick(Column: TColumn);
begin
     montamusica;
end;

procedure Tgaleriadefotos.db_musicsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     montamusica;
end;

procedure Tgaleriadefotos.db_musicsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     montamusica;
end;

procedure Tgaleriadefotos.SpeedButton8Click(Sender: TObject);
begin
     novoalbum;
end;

procedure Tgaleriadefotos.SpeedButton1Click(Sender: TObject);
begin
     novamusica;
end;

procedure Tgaleriadefotos.SpeedButton5Click(Sender: TObject);
var  stImagem: TFileStream;
     cod_ax : integer;
     addalbum : boolean;
     cod_ax_psn : integer;
begin
     if ab_titulo.Text='' then begin
        hwsf.BtMensagem('Digite o título do álbum.');
        ab_titulo.SetFocus;
        exit;
     end;
     if dm.executa5.Locate('descricao',ComboBox_model.Text,[]) then begin
        cod_ax_psn := dm.executa5.fieldbyname('codigo').AsInteger;
        //icon foto
        galeria_conf.ic_w := dm.executa5.fieldbyname('ic_w').AsFloat;
        galeria_conf.ic_h := dm.executa5.fieldbyname('ic_w').AsFloat;
        galeria_conf.ic_dpi := dm.executa5.fieldbyname('ic_dpi').AsFloat;
        galeria_conf.ic_desc := dm.executa5.fieldbyname('ic_desc').AsBoolean;
        galeria_conf.ic_ajt := dm.executa5.fieldbyname('ic_ajt').AsBoolean;
        //larg foto
        galeria_conf.il_w := dm.executa5.fieldbyname('il_w').AsFloat;
        galeria_conf.il_h := dm.executa5.fieldbyname('il_w').AsFloat;
        galeria_conf.il_dpi := dm.executa5.fieldbyname('il_dpi').AsFloat;
        galeria_conf.il_desc := dm.executa5.fieldbyname('il_desc').AsBoolean;
        galeria_conf.il_ajt := dm.executa5.fieldbyname('il_ajt').AsBoolean;
        //icon album
        galeria_conf.ab_w := dm.executa5.fieldbyname('ab_w').AsFloat;
        galeria_conf.ab_h := dm.executa5.fieldbyname('ab_w').AsFloat;
        galeria_conf.ab_dpi := dm.executa5.fieldbyname('ab_dpi').AsFloat;
        galeria_conf.ab_desc := dm.executa5.fieldbyname('ab_desc').AsBoolean;
        galeria_conf.ab_ajt := dm.executa5.fieldbyname('ab_ajt').AsBoolean;
     end else begin
        hwsf.BtMensagem('Selecione o modelo do álbum.');
        ComboBox_model.SetFocus;
        ComboBox_model.SelectAll;
        exit;
     end;
     if not (dm.conecta_sql.InTransaction) then begin
        TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.conecta_sql.StartTransaction(TD);
     end;
     With dm.executa do begin
        if ab_cod.Caption='0' then begin
           addalbum:=true;
           cod_ax:=dm.GetCodMax(getTabs[0]);
           dm.gravar_logsys('Gravar novo album de fotos: '+Inttostr(cod_ax));
           SQL.Text:='INSERT INTO '+getTabs[0]+' (codigo,cod_web,cod_psn,descricao,textft,cod_ls) '+
                     'VALUES(:p0,:p1,:p2,:p3,:p4,:p5)';
           Params[0].AsInteger:=cod_ax;
           Params[1].AsInteger:=Clientconect.vrf00;
           Params[2].AsInteger:=cod_ax_psn;
           Params[3].AsString:=ab_titulo.Text;
           Try
                st_stream := TMemoryStream.Create;
                ab_detalhes.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[4].LoadFromStream(st_stream,ftBlob);
           Finally
                st_stream.Free;
           End;
           if ab_default.Checked then Params[5].AsInteger:=1
           else Params[5].AsInteger:=0;
         end else begin
             addalbum:=false;
             cod_ax:=StrtoInt(ab_cod.Caption);
             dm.gravar_logsys('Gravar dados album de fotos: '+Inttostr(cod_ax));
             SQL.Text:='UPDATE '+getTabs[0]+' SET descricao=:p0,textft=:p1,cod_ls=:p2 '+
                       'WHERE codigo=:p3';
             Params[0].AsString:=ab_titulo.Text;
             Try
                st_stream := TMemoryStream.Create;
                ab_detalhes.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[1].LoadFromStream(st_stream,ftBlob);
             Finally
                st_stream.Free;
             End;
             if ab_default.Checked then Params[2].AsInteger:=1
             else Params[2].AsInteger:=0;
             Params[3].AsInteger:=cod_ax;
          end;
          Try
             ExecSQL;
          Except
             hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
             dm.conecta_sql.RollBack(TD);
             exit;
          End;
          if addalbum then begin
             SQL.Text:='INSERT INTO '+getTabs[1]+' (codigo,cod_gal,icon) '+
                       'VALUES(:p0,:p1,:p2)';
             Params[0].AsInteger:=dm.GetCodMax(getTabs[1]);
             Params[1].AsInteger:=cod_ax;
             if xfotorefresh<>'' then begin
                Try
                  stImagem := TFileStream.Create(xfotorefresh, fmOpenRead or fmShareDenyWrite );
                  dm.ds_sql.Edit;
                  stImagem.Seek(0,soFromBeginning);
                  Params[2].LoadFromStream(stImagem,ftBlob);
                Finally
                  stImagem.Free;
                End;
             end else begin
                Params[2].AsString:='';
             end;
          end else begin
             SQL.Text:='UPDATE '+getTabs[1]+' SET icon=:p0 '+
                       'WHERE cod_gal=:p1';
             if xfotorefresh<>'' then begin
                Try
                  stImagem := TFileStream.Create(xfotorefresh, fmOpenRead or fmShareDenyWrite );
                  dm.ds_sql.Edit;
                  stImagem.Seek(0,soFromBeginning);
                  Params[0].LoadFromStream(stImagem,ftBlob);
                Finally
                  stImagem.Free;
                End;
             end else begin
                Params[0].AsString:='';
             end;
             Params[1].AsInteger:=cod_ax;
          end;
          Try
             ExecSQL;
          Except
             hwsf.BtMensagem('Ocorreu um erro ao gravar capa do álbum.');
             dm.conecta_sql.RollBack(TD);
             exit;
          End;
          dm.conecta_sql.Commit(TD);
     end;
     dm.ds_sql.Refresh;
     ab_cod.Caption:=InttoStr(cod_ax);
     montamusica;
     hwsf.BtMensagem('Processo efetuado com êxito.');
end;

procedure Tgaleriadefotos.SpeedButton7Click(Sender: TObject);
var cod_ax : integer;
begin
      if ab_cod.Caption='0' then begin
         novoalbum;
         exit;
      end;
      if hwsf.BtConfirma('Excluir álbum '+ab_titulo.Text+'?') then begin
         if not (dm.conecta_sql.InTransaction) then begin
            TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
            TD.IsolationLevel := xilREADCOMMITTED;
            dm.conecta_sql.StartTransaction(TD);
         end;
         With dm.executa do begin
            cod_ax:=StrtoInt(ab_cod.Caption);
            SQL.Text:='DELETE FROM '+getTabs[0]+
                      ' WHERE codigo=:p0';
            Params[0].AsInteger:=cod_ax;
            Try
               ExecSQL;
            Except
               hwsf.BtMensagem('Ocorreu um erro ao excluir álbum.');
               dm.conecta_sql.RollBack(TD);
               exit;
            End;
            SQL.Text:='DELETE FROM '+getTabs[1]+
                      ' WHERE cod_gal=:p0';
            Params[0].AsInteger:=cod_ax;
            Try
               ExecSQL;
            Except
               hwsf.BtMensagem('Ocorreu um erro ao exluir icone do álbum.');
               dm.conecta_sql.RollBack(TD);
               exit;
            End;
            dm.executa6.SQL.Text:='SELECT * FROM '+getTabs[2]+
                                  ' WHERE cod_gal='+#39+InttoStr(cod_ax)+#39;
            dm.executa6.Open;
            dm.executa6.First;
            While not dm.executa6.Eof do begin
               SQL.Text:='DELETE FROM '+getTabs[3]+
                         ' WHERE cod_img=:p0';
               Params[0].AsInteger:=dm.executa6.FieldByName('codigo').AsInteger;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir fotos.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;
               dm.executa6.Next;
            end;
            dm.executa6.Close;
            SQL.Text:='DELETE FROM '+getTabs[2]+
                      ' WHERE cod_gal=:p0';
            Params[0].AsInteger:=cod_ax;
            Try
               ExecSQL;
            Except
               hwsf.BtMensagem('Ocorreu um erro ao excluir fotos.');
               dm.conecta_sql.RollBack(TD);
               exit;
            End;
            dm.conecta_sql.Commit(TD);
         end;
         dm.ds_sql.Refresh;
         dm.ds_sql3.Refresh;
         montaalbum;
         hwsf.BtMensagem('Processo efetuado com êxito.');
      end;
end;

procedure Tgaleriadefotos.SpeedButton2Click(Sender: TObject);
var cod_ax : integer;
begin
      if ms_cod.Caption='0' then begin
         novamusica;
         exit;
      end;
      if hwsf.BtConfirma('Excluir foto '+ms_musica.Text+'?') then begin
         if not (dm.conecta_sql.InTransaction) then begin
            TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
            TD.IsolationLevel := xilREADCOMMITTED;
            dm.conecta_sql.StartTransaction(TD);
         end;
         With dm.executa do begin
               cod_ax:=StrtoInt(ms_cod.Caption);
               SQL.Text:='DELETE FROM '+getTabs[3]+
                         ' WHERE cod_ms=:p0';
               Params[0].AsInteger:=cod_ax;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir fotos.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;
               SQL.Text:='DELETE FROM '+getTabs[2]+
                         ' WHERE codigo=:p0';
               Params[0].AsInteger:=cod_ax;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir fotos.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;
               dm.conecta_sql.Commit(TD);
         end;
         dm.ds_sql3.Refresh;
         montamusica;
         hwsf.BtMensagem('Processo efetuado com êxito.');
      end;
end;

procedure Tgaleriadefotos.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  If not ((Screen.ActiveControl is TCustomMemo) or
         (Screen.ActiveControl is TCustomGrid) or
         (Screen.ActiveForm.ClassName = 'TMessageForm')) then begin
     If Msg.message = WM_KEYDOWN then begin
        Case Msg.wParam of
          VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
          VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
        end;
     end;
  end;
end;

procedure Tgaleriadefotos.SpeedButton3Click(Sender: TObject);
var stImagem: TFileStream;
    cod_ax : integer;
    addalbum: boolean;
begin
     if not (dm.conecta_sql.InTransaction) then begin
        TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.conecta_sql.StartTransaction(TD);
     end;
     With dm.executa do begin
        if ms_cod.Caption='0' then begin
             addalbum:=true;
             cod_ax:=dm.GetCodMax(getTabs[2]);
             dm.gravar_logsys('Gravar nova foto: '+Inttostr(cod_ax));
             SQL.Text:='INSERT INTO '+getTabs[2]+' (codigo,cod_gal,descricao,textft) '+
                       'VALUES(:p0,:p1,:p2,:p3)';
             Params[0].AsInteger:=cod_ax;
             Params[1].AsInteger:=StrToInt(ab_cod.Caption);
             Params[2].AsString:=ms_musica.Text;
             Try
                st_stream := TMemoryStream.Create;
                ms_detalhes.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[3].LoadFromStream(st_stream,ftBlob);
             Finally
                st_stream.Free;
             End;
        end else begin
             addalbum:=false;
             cod_ax:=StrtoInt(ms_cod.Caption);
             dm.gravar_logsys('Gravar dados da foto: '+Inttostr(cod_ax));
             SQL.Text:='UPDATE '+getTabs[2]+' SET descricao=:p0,textft=:p1 '+
                       'WHERE codigo=:p2';
             Params[0].AsString:=ms_musica.Text;
             Try
                st_stream := TMemoryStream.Create;
                ms_detalhes.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[1].LoadFromStream(st_stream,ftBlob);
             Finally
                st_stream.Free;
             End;
             Params[2].AsInteger:=cod_ax;
        end;
        Try
             ExecSQL;
        Except
             hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
             dm.conecta_sql.RollBack(TD);
             exit;
        End;
        if addalbum then begin
             SQL.Text:='INSERT INTO '+getTabs[3]+' (codigo,cod_img,img_ico,img_larg) '+
                       'VALUES(:p0,:p1,:p2,:p3)';
             Params[0].AsInteger:=dm.GetCodMax(getTabs[1]);
             Params[1].AsInteger:=cod_ax;
             if xfotorefresh<>'' then begin
                Try
                  stImagem := TFileStream.Create(xfotorefresh, fmOpenRead or fmShareDenyWrite );
                  dm.ds_sql.Edit;
                  stImagem.Seek(0,soFromBeginning);
                  Params[2].LoadFromStream(stImagem,ftBlob);
                Finally
                  stImagem.Free;
                End;
                Try
                  stImagem := TFileStream.Create(xfotorefresh, fmOpenRead or fmShareDenyWrite );
                  dm.ds_sql.Edit;
                  stImagem.Seek(0,soFromBeginning);
                  Params[3].LoadFromStream(stImagem,ftBlob);
                Finally
                  stImagem.Free;
                End;
             end else begin
                Params[2].AsString:='';
                Params[3].AsString:='';
             end;
        end else begin
             SQL.Text:='UPDATE '+getTabs[1]+' SET img_ico=:p0,img_larg=:p1 '+
                       'WHERE cod_img=:p2';
             if xfotorefresh<>'' then begin
                Try
                  stImagem := TFileStream.Create(xfotorefresh, fmOpenRead or fmShareDenyWrite );
                  dm.ds_sql.Edit;
                  stImagem.Seek(0,soFromBeginning);
                  Params[0].LoadFromStream(stImagem,ftBlob);
                Finally
                  stImagem.Free;
                End;
                Try
                  stImagem := TFileStream.Create(xfotorefresh, fmOpenRead or fmShareDenyWrite );
                  dm.ds_sql.Edit;
                  stImagem.Seek(0,soFromBeginning);
                  Params[1].LoadFromStream(stImagem,ftBlob);
                Finally
                  stImagem.Free;
                End;
             end else begin
                Params[0].AsString:='';
                Params[1].AsString:='';
             end;
             Params[2].AsInteger:=cod_ax;
        end;
        Try
             ExecSQL;
        Except
             hwsf.BtMensagem('Ocorreu um erro ao gravar capa do álbum.');
             dm.conecta_sql.RollBack(TD);
             exit;
        End;
        dm.conecta_sql.Commit(TD);
     end;
     dm.ds_sql3.Refresh;
     ms_cod.Caption:= InttoStr(cod_ax);
     montamusica;
     hwsf.BtMensagem('Processo efetuado com êxito.');
end;

procedure Tgaleriadefotos.SpeedButton9Click(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then begin
        Try
           Imagebase2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
           xfotorefresh2:=OpenPictureDialog1.FileName;
        Except End;
     end;
end;

procedure Tgaleriadefotos.SpeedButton10Click(Sender: TObject);
begin
     limpacapa2;
end;

end.
