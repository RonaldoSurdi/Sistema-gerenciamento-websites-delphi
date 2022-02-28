{###############################################################################
Programa: HWSplayer
Módulo: Módulo para configuração de álbuns, músicas, capa, letras do player.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit ueditorplayerflash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, DB, ExtDlgs, JPEG,
  Grids, SqlExpr, DBXpress, DBGrids;

type
  Teditorplayerflash = class(TForm)
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
    Label5: TLabel;
    ab_numero: TEdit;
    UpDown1: TUpDown;
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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ms_cod: TLabel;
    ms_track: TEdit;
    UpDown2: TUpDown;
    ms_musica: TEdit;
    ms_detalhes: TMemo;
    SpeedButton9: TSpeedButton;
    Splitter1: TSplitter;
    Label12: TLabel;
    ab_default: TCheckBox;
    Label13: TLabel;
    ab_artista: TComboBox;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    ms_artista: TComboBox;
    Label14: TLabel;
    SpeedButton12: TSpeedButton;
    Ano: TLabel;
    ab_ano: TEdit;
    UpDown3: TUpDown;
    OpenDialog_mp3: TOpenDialog;
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
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    xfotorefresh: TFileName;
    st_stream : TMemoryStream;
    getTabs : array[0..1000] of String;
    procedure limpacapa;
    procedure atualizacapa;
    procedure montaalbum;
    procedure novoalbum;
    procedure montamusica;
    procedure novamusica;
    procedure atualizaartistas;
    procedure cadastraartista(xcombo: TComboBox);
    function mp3tobase(nomedoarquivo: TFileName):Boolean;
    { Private declarations }
  public
     mv_mouse : TPoint;
     cp_mouse : bool;
     procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  editorplayerflash: Teditorplayerflash;

implementation

uses hwsfunctions, udm, DateUtils, ueditortextflash;

{$R *.dfm}

procedure Teditorplayerflash.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(editorplayerflash.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Teditorplayerflash.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(editorplayerflash.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Teditorplayerflash.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      editorplayerflash.Left:= editorplayerflash.Left-(mv_mouse.x-x);
      editorplayerflash.Top:= editorplayerflash.Top - (mv_mouse.y-y);
  end;
end;

procedure Teditorplayerflash.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      editorplayerflash.Left := editorplayerflash.Left - (mv_mouse.x -x);
      editorplayerflash.Top := editorplayerflash.Top - (mv_mouse.y - y);
  end;
end;

procedure Teditorplayerflash.FormCreate(Sender: TObject);
var xtbcount: integer;
begin
      Application.OnMessage := tabtoenterpress;
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      //DoubleBuffered:=True;
      Panel5.DoubleBuffered:=True;
      xfotorefresh:='';

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
      db_cds.Columns.Items[0].FieldName:='numero';
      db_cds.Columns.Items[0].Title.Caption:='Número';
      db_cds.Columns.Add;
      db_cds.Columns.Items[1].FieldName:='descricao';
      db_cds.Columns.Items[1].Title.Caption:='Álbum';
      With dm.ds_sql do begin
        DataSet.CommandText:= 'select * from '+getTabs[0]+
                              ' Where cod_web='+#39+InttoStr(Clientconect.vrf00)+#39+
                              ' order by numero';
        Filter:='';
        Filtered:=false;
        Open;
      end;
      //musicas
      db_musics.DataSource:= dm.source_sql3;
      db_musics.Columns.Clear;
      db_musics.Columns.Add;
      db_musics.Columns.Items[0].FieldName:='numero';
      db_musics.Columns.Items[0].Title.Caption:='Track';
      db_musics.Columns.Add;
      db_musics.Columns.Items[1].FieldName:='descricao';
      db_musics.Columns.Items[1].Title.Caption:='Música';
      With dm.ds_sql3 do begin
        DataSet.CommandText:= 'select * from '+getTabs[2]+
                              ' order by numero';
        Filter:='cod_cd='+#39+'0'+#39;
        Filtered:=true;
        Open;
      end;
      //artistas
      With dm.executa4 do begin
         SQL.Text:= 'select * from '+getTabs[4]+
                    ' order by nome';
         Open;
      end;
      atualizaartistas;
      montaalbum;
end;

procedure Teditorplayerflash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if FileExists(xfotorefresh) then DeleteFile(xfotorefresh);
     dm.ds_sql.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.executa4.Close;
     Action := caFree;
end;

procedure Teditorplayerflash.bt_fecharClick(Sender: TObject);
begin
     Close;
end;

procedure Teditorplayerflash.bt_maximizaClick(Sender: TObject);
begin
    if editorplayerflash.WindowState=wsMaximized then editorplayerflash.WindowState:=wsNormal
    else editorplayerflash.WindowState:=wsMaximized;
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
end;

procedure Teditorplayerflash.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Teditorplayerflash.bt_sobreClick(Sender: TObject);
begin
    hwsf.BtSobre;
end;

procedure Teditorplayerflash.SpeedButton4Click(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then begin
        Try
           Imagebase.Picture.LoadFromFile(OpenPictureDialog1.FileName);
           xfotorefresh:=OpenPictureDialog1.FileName;
        Except End;
     end;
end;

procedure Teditorplayerflash.SpeedButton6Click(Sender: TObject);
begin
     limpacapa;
end;

procedure Teditorplayerflash.FormResize(Sender: TObject);
begin
     ab_detalhes.Height:= Panel8.Height - 91;
     ms_detalhes.Height:= Panel11.Height - 91;
end;

procedure Teditorplayerflash.limpacapa;
begin
    Try
        Imagebase.Picture.Assign(nil);
        if FileExists(xfotorefresh) then DeleteFile(xfotorefresh);
        xfotorefresh:='';
    Except End;
end;

procedure Teditorplayerflash.atualizacapa;
var jpgImg: TJPEGImage;
    stMem: TMemoryStream;
begin
     if ab_cod.Caption='0' then begin
        limpacapa;
        exit;
     end;
     if FileExists(xfotorefresh) then DeleteFile(xfotorefresh);
     dm.executa5.SQL.Text:='SELECT * FROM '+getTabs[1]+
                           ' WHERE cod_cd='+#39+ab_cod.Caption+#39;
     dm.executa5.Open;
     if dm.executa5.FieldByName('capa').AsString<>'' then begin
        Try
           jpgImg := TJPEGImage.Create;
           stMem := TMemoryStream.Create;
           TBlobField(dm.executa5.FieldByName('capa')).SaveToStream(stMem);
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

procedure Teditorplayerflash.montaalbum;
begin
     if dm.ds_sql.RecordCount <= 0 then begin
        novoalbum;
        limpacapa;
        exit;
     end;
     ab_cod.Caption:= dm.ds_sql.fieldbyname('codigo').AsString;
     ab_numero.Text:= dm.ds_sql.fieldbyname('numero').AsString;
     if dm.ds_sql.fieldbyname('cod_def').AsInteger=1 then ab_default.Checked:=true
     else ab_default.Checked:=false;
     ab_ano.Text:=dm.ds_sql.fieldbyname('ano').AsString;
     ab_titulo.Text:= dm.ds_sql.fieldbyname('descricao').AsString;
     if dm.executa4.Locate('codigo',dm.ds_sql.fieldbyname('cod_art').AsInteger,[]) then
        ab_artista.Text:=dm.executa4.fieldbyname('nome').AsString
     else ab_artista.Text:='';
     Try
        st_stream := TMemoryStream.Create;
        TBlobField(dm.ds_sql.FieldByName('obs')).SaveToStream(st_stream);
        st_stream.Seek(0,soFromBeginning);
        ab_detalhes.Lines.LoadFromStream(st_stream);
     Finally
        st_stream.Free;
     End;
     dm.ds_sql3.Filter:='cod_cd='+#39+dm.ds_sql.fieldbyname('codigo').AsString+#39;
     montamusica;
     atualizacapa;
end;

procedure Teditorplayerflash.novoalbum;
begin
    ab_cod.Caption:='0';
    ab_numero.Text:=InttoStr(dm.GetNumMax(getTabs[0],'numero','cod_web='+#39+InttoStr(Clientconect.vrf00)+#39));
    ab_default.Checked:=true;
    ab_ano.Text:=InttoStr(YearOf(Now));
    ab_titulo.Text:='';
    ab_detalhes.Clear;
    //ab_artista.Text:='';
end;

procedure Teditorplayerflash.montamusica;
begin
    if dm.ds_sql3.RecordCount <= 0 then begin
        novamusica;
        exit;
     end;
     ms_cod.Caption:= dm.ds_sql3.fieldbyname('codigo').AsString;
     ms_track.Text:= dm.ds_sql3.fieldbyname('numero').AsString;
     ms_musica.Text:= dm.ds_sql3.fieldbyname('descricao').AsString;
     if dm.executa4.Locate('codigo',dm.ds_sql3.fieldbyname('cod_art').AsInteger,[]) then
        ms_artista.Text:=dm.executa4.fieldbyname('nome').AsString
     else ms_artista.Text:='';
     Try
        st_stream := TMemoryStream.Create;
        TBlobField(dm.ds_sql3.FieldByName('obs')).SaveToStream(st_stream);
        st_stream.Seek(0,soFromBeginning);
        ms_detalhes.Lines.LoadFromStream(st_stream);
     Finally
        st_stream.Free;
     End;
end;

procedure Teditorplayerflash.novamusica;
begin
    ms_cod.Caption:='0';
    ms_track.Text:=InttoStr(dm.GetNumMax(getTabs[2],'numero','cod_cd='+#39+ab_cod.Caption+#39));
    ms_musica.Text:='';
    ms_detalhes.Clear;
    ms_artista.Text:=ab_artista.text;
end;

procedure Teditorplayerflash.db_cdsCellClick(Column: TColumn);
begin
      montaalbum;
end;

procedure Teditorplayerflash.db_cdsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      montaalbum;
end;

procedure Teditorplayerflash.db_cdsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      montaalbum;
end;

procedure Teditorplayerflash.db_musicsCellClick(Column: TColumn);
begin
      montamusica;
end;

procedure Teditorplayerflash.db_musicsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      montamusica;
end;

procedure Teditorplayerflash.db_musicsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      montamusica;
end;

procedure Teditorplayerflash.SpeedButton8Click(Sender: TObject);
begin
      novoalbum;
      ab_numero.SelectAll;
      ab_numero.SetFocus;
end;

procedure Teditorplayerflash.SpeedButton1Click(Sender: TObject);
begin
      novamusica;
      ms_track.SelectAll;
      ms_track.SetFocus;
end;

procedure Teditorplayerflash.atualizaartistas;
begin
     ab_artista.Clear;
     ms_artista.Clear;
     dm.executa4.First;
     While not dm.executa4.Eof do begin
        ab_artista.Items.Add(dm.executa4.fieldbyname('nome').asstring);
        ms_artista.Items.Add(dm.executa4.fieldbyname('nome').asstring);
        dm.executa4.Next;
     end;
end;

procedure Teditorplayerflash.cadastraartista(xcombo: TComboBox);
var ax_artista : string;
begin
      ax_artista := xcombo.Text;
      if ax_artista='' then begin
         hwsf.BtMensagem('Digite o nome do artista.');
         xcombo.SetFocus;
         exit;
      end;
      if dm.executa4.Locate('nome',ax_artista,[]) then begin
         hwsf.BtMensagem('Artista já foi cadastrado.');
         xcombo.SetFocus;
         exit;
      end;
      dm.gravar_logsys('Cadastro de artista '+ax_artista);
      With dm.executa do begin
           Try
              SQL.Text:='INSERT INTO '+getTabs[4]+' (codigo,nome) '+
                        'VALUES(:p0,:p1) ';
              Params[0].AsInteger:= dm.GetCodMax(getTabs[4]);
              Params[1].AsString:= ax_artista;
              ExecSQL;
           Except
           End;
      end;
      dm.executa4.Close;
      dm.executa4.Open;
      atualizaartistas;
      xcombo.Text:=ax_artista;
end;

procedure Teditorplayerflash.SpeedButton10Click(Sender: TObject);
begin
      cadastraartista(ab_artista);
end;

procedure Teditorplayerflash.SpeedButton11Click(Sender: TObject);
begin
      cadastraartista(ms_artista);
end;

procedure Teditorplayerflash.SpeedButton5Click(Sender: TObject);
var stImagem: TFileStream;
    cod_ax : integer;
    addalbum : boolean;
begin
     if ab_titulo.Text='' then begin
        hwsf.BtMensagem('Digite o título do álbum.');
        ab_titulo.SetFocus;
        exit;
     end;
     Try
        StrtoInt(ab_numero.Text);
     Except
        ab_numero.Text:='1';
     End;
     Try
        StrtoInt(ab_ano.Text);
     Except
        ab_ano.Text:=InttoStr(YearOf(Now));
     End;
     if not (dm.conecta_sql.InTransaction) then begin
         TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
         TD.IsolationLevel := xilREADCOMMITTED;
         dm.conecta_sql.StartTransaction(TD);
     end;
     With dm.executa do begin
          if ab_cod.Caption='0' then begin
             addalbum:=true;
             cod_ax:=dm.GetCodMax(getTabs[0]);
             dm.gravar_logsys('Gravar novo album: '+Inttostr(cod_ax));
             SQL.Text:='INSERT INTO '+getTabs[0]+' (codigo,cod_web,cod_art,numero,descricao,obs,ano,cod_def) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
             Params[0].AsInteger:=cod_ax;
             Params[1].AsInteger:=Clientconect.vrf00;
             if dm.executa4.Locate('nome',ab_artista.Text,[]) then
                Params[2].AsInteger:= dm.executa4.fieldbyname('codigo').AsInteger
             else Params[2].AsInteger:=0;
             Params[3].AsInteger:=StrToInt(ab_numero.Text);
             Params[4].AsString:=ab_titulo.Text;
             Try
                st_stream := TMemoryStream.Create;
                ab_detalhes.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[5].LoadFromStream(st_stream,ftBlob);
             Finally
                st_stream.Free;
             End;
             Params[6].AsInteger:=StrToInt(ab_ano.Text);
             if ab_default.Checked then Params[7].AsInteger:=1
             else Params[7].AsInteger:=0;
          end else begin
             addalbum:=false;
             cod_ax:=StrtoInt(ab_cod.Caption);
             dm.gravar_logsys('Gravar dados album: '+Inttostr(cod_ax));
             SQL.Text:='UPDATE '+getTabs[0]+' SET cod_art=:p0,numero=:p1,descricao=:p2,obs=:p3,ano=:p4,cod_def=:p5 '+
                       'WHERE codigo=:p6';
             if dm.executa4.Locate('nome',ab_artista.Text,[]) then
                Params[0].AsInteger:= dm.executa4.fieldbyname('codigo').AsInteger
             else Params[0].AsInteger:=0;
             Params[1].AsInteger:=StrToInt(ab_numero.Text);
             Params[2].AsString:=ab_titulo.Text;
             Try
                st_stream := TMemoryStream.Create;
                ab_detalhes.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[3].LoadFromStream(st_stream,ftBlob);
             Finally
                st_stream.Free;
             End;
             Params[4].AsInteger:=StrToInt(ab_ano.Text);
             if ab_default.Checked then Params[5].AsInteger:=1
             else Params[5].AsInteger:=0;
             Params[6].AsInteger:=cod_ax;
          end;
          Try
             ExecSQL;
          Except
             hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
             dm.conecta_sql.RollBack(TD);
             exit;
          End;
          if addalbum then begin
             SQL.Text:='INSERT INTO '+getTabs[1]+' (codigo,cod_cd,capa) '+
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
             SQL.Text:='UPDATE '+getTabs[1]+' SET capa=:p0 '+
                       'WHERE cod_cd=:p1';
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

procedure Teditorplayerflash.SpeedButton7Click(Sender: TObject);
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
                      ' WHERE cod_cd=:p0';
            Params[0].AsInteger:=cod_ax;
            Try
               ExecSQL;
            Except
               hwsf.BtMensagem('Ocorreu um erro ao exluir capa do álbum.');
               dm.conecta_sql.RollBack(TD);
               exit;
            End;
            dm.executa6.SQL.Text:='SELECT * FROM '+getTabs[2]+
                                  ' WHERE cod_cd='+#39+InttoStr(cod_ax)+#39;
            dm.executa6.Open;
            dm.executa6.First;
            While not dm.executa6.Eof do begin
               SQL.Text:='DELETE FROM '+getTabs[3]+
                         ' WHERE cod_ms=:p0';
               Params[0].AsInteger:=dm.executa6.FieldByName('codigo').AsInteger;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir músicas.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;
               SQL.Text:='DELETE FROM '+getTabs[5]+
                         ' WHERE cod_ms=:p0';
               Params[0].AsInteger:=dm.executa6.FieldByName('codigo').AsInteger;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir músicas.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;
               SQL.Text:='DELETE FROM '+getTabs[5]+'_ax'+
                         ' WHERE cod_ms=:p0';
               Params[0].AsInteger:=dm.executa6.FieldByName('codigo').AsInteger;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir músicas.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;
               dm.executa6.Next;
            end;
            dm.executa6.Close;
            SQL.Text:='DELETE FROM '+getTabs[2]+
                      ' WHERE cod_cd=:p0';
            Params[0].AsInteger:=cod_ax;
            Try
               ExecSQL;
            Except
               hwsf.BtMensagem('Ocorreu um erro ao excluir músicas.');
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

procedure Teditorplayerflash.SpeedButton9Click(Sender: TObject);
begin
      if ms_cod.Caption='0' then begin
         hwsf.BtMensagem('Primeiro você deve gravar os dados');
         exit;
      end;
      if OpenDialog_mp3.Execute then begin
         mp3tobase(OpenDialog_mp3.FileName);
      end;
end;

function Teditorplayerflash.mp3tobase(nomedoarquivo: TFileName):Boolean;
var arqmp3,outmp3: TMemoryStream;
    imp3 : integer;
    bmp3 : byte;
begin
     Try
        editorplayerflash.Refresh;
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Importando mp3';
        loadx.Show;
        loadx.Update;
        outmp3:= TMemoryStream.Create;
        outmp3.Clear;
        arqmp3:= TMemoryStream.Create;
        arqmp3.LoadFromFile(nomedoarquivo);
        arqmp3.Position:=0;
        for imp3:=0 to (arqmp3.Size - 1) do begin
            arqmp3.Read(bmp3,1);
            outmp3.Write(bmp3,1);
        end;
        Try
          loadx.lbloading.Caption:='Finalizando';
          loadx.lbloading.Repaint;
          With dm.executa do begin
            //elimina existentes
            SQL.Text:='DELETE FROM '+getTabs[3]+
                      ' WHERE cod_ms=:p0';
            Params[0].AsInteger:= StrtoInt(ms_cod.Caption);
            ExecSQL;
            //cadastra
            SQL.Text:='INSERT INTO '+getTabs[3]+' (codigo,cod_ms,numero,trilha) '+
                      'VALUES (:p0,:p1,:p2,:p3)';
            Params[0].AsInteger:= dm.GetCodMax(getTabs[3]);
            Params[1].AsInteger:= StrtoInt(ms_cod.Caption);
            Params[2].AsInteger:= dm.GetNumMax(getTabs[3],'numero','cod_ms='+#39+ms_cod.Caption+#39);
            //outmp3.Seek(0,soFromBeginning);
            outmp3.Position:=0;
            Params[3].LoadFromStream(outmp3,ftBlob);
            ExecSQL;
          end;
        Except
          hwsf.BtMensagem('Ocorreu um erro ao importar mp3');
        End;
     Finally
        arqmp3.Free;
        outmp3.Free;
        loadx.Free;
     End;
end;

procedure Teditorplayerflash.SpeedButton12Click(Sender: TObject);
begin
      if ms_cod.Caption='0' then begin
         hwsf.BtMensagem('Primeiro você deve gravar os dados');
         exit;
      end;
      try
         Application.CreateForm(Teditortextflash,editortextflash);
         editortextflash.tb_mnt.Caption:='Editor de Letras - Álbum: '+ab_titulo.Text+' - Música: '+ms_musica.Text;
         editortextflash.x_entrafrom:= 1;
         editortextflash.x_table_form1:= getTabs[6];
         editortextflash.x_table_form2:= getTabs[7];
         editortextflash.x_campo_form:='letra';
         editortextflash.x_cpcod_form:='cod_ms';
         editortextflash.xcod_tab:=StrtoInt(ms_cod.Caption);
         editortextflash.ShowModal;
      finally
         editortextflash.Release;
      end;

end;

procedure Teditorplayerflash.SpeedButton2Click(Sender: TObject);
var cod_ax : integer;
begin
      if ms_cod.Caption='0' then begin
         novamusica;
         exit;
      end;                          
      if hwsf.BtConfirma('Excluir música '+ms_musica.Text+'?') then begin
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
                 hwsf.BtMensagem('Ocorreu um erro ao excluir músicas.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;
               SQL.Text:='DELETE FROM '+getTabs[5]+
                         ' WHERE cod_ms=:p0';
               Params[0].AsInteger:=cod_ax;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir músicas.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;
               SQL.Text:='DELETE FROM '+getTabs[5]+'_ax'+
                         ' WHERE cod_ms=:p0';
               Params[0].AsInteger:=cod_ax;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir músicas.');
                 dm.conecta_sql.RollBack(TD);
                 exit;
               End;

               SQL.Text:='DELETE FROM '+getTabs[2]+
                         ' WHERE codigo=:p0';
               Params[0].AsInteger:=cod_ax;
               Try
                 ExecSQL;
               Except
                 hwsf.BtMensagem('Ocorreu um erro ao excluir músicas.');
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

procedure Teditorplayerflash.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Teditorplayerflash.SpeedButton3Click(Sender: TObject);
var cod_ax : integer;
begin
     if ms_musica.Text='' then begin
        hwsf.BtMensagem('Digite o nome da música.');
        ms_musica.SetFocus;
        exit;
     end;
     Try
        StrtoInt(ms_track.Text);
     Except
        ms_track.Text:='1';
     End;
     if not (dm.conecta_sql.InTransaction) then begin
         TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
         TD.IsolationLevel := xilREADCOMMITTED;
         dm.conecta_sql.StartTransaction(TD);
     end;
     With dm.executa do begin
          if ms_cod.Caption='0' then begin
             cod_ax:=dm.GetCodMax(getTabs[2]);
             dm.gravar_logsys('Gravar nova música: '+Inttostr(cod_ax));
             SQL.Text:='INSERT INTO '+getTabs[2]+' (codigo,cod_cd,cod_art,numero,descricao,obs) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5)';
             Params[0].AsInteger:=cod_ax;
             Params[1].AsInteger:=StrToInt(ab_cod.Caption);
             if dm.executa4.Locate('nome',ms_artista.Text,[]) then
                Params[2].AsInteger:= dm.executa4.fieldbyname('codigo').AsInteger
             else Params[2].AsInteger:=0;
             Params[3].AsInteger:=StrToInt(ms_track.Text);
             Params[4].AsString:=ms_musica.Text;
             Try
                st_stream := TMemoryStream.Create;
                ms_detalhes.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[5].LoadFromStream(st_stream,ftBlob);
             Finally
                st_stream.Free;
             End;
          end else begin
             cod_ax:=StrtoInt(ms_cod.Caption);
             dm.gravar_logsys('Gravar dados da música: '+Inttostr(cod_ax));
             SQL.Text:='UPDATE '+getTabs[2]+' SET cod_art=:p0,numero=:p1,descricao=:p2,obs=:p3 '+
                       'WHERE codigo=:p4';
             if dm.executa4.Locate('nome',ms_artista.Text,[]) then
                Params[0].AsInteger:= dm.executa4.fieldbyname('codigo').AsInteger
             else Params[0].AsInteger:=0;
             Params[1].AsInteger:=StrToInt(ms_track.Text);
             Params[2].AsString:=ms_musica.Text;
             Try
                st_stream := TMemoryStream.Create;
                ms_detalhes.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[3].LoadFromStream(st_stream,ftBlob);
             Finally
                st_stream.Free;
             End;
             Params[3].AsInteger:=cod_ax;
          end;
          Try
             ExecSQL;
          Except
             hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
             dm.conecta_sql.RollBack(TD);
             exit;
          End;
          dm.conecta_sql.Commit(TD);
     end;
     dm.ds_sql3.Refresh;
     ms_cod.Caption:=InttoStr(cod_ax);
     montamusica;
     hwsf.BtMensagem('Processo efetuado com êxito.');
end;

end.
