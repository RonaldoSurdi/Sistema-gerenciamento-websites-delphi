{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para website.
Data: 17 de outubro de 2005.
By HWS Web Solutions

Relatório de acessos:
17/10/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}
unit umdl_contaclist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  XPMan, AppEvnts, Menus, ComboSpeedButton, backup, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdFTP;


type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  Tmdl_contactlist = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    XPManifest1: TXPManifest;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    GroupBox1: TGroupBox;
    xstatusList: TMemo;
    CompressCSV: TBackupFile;
    Progress_pos: TProgressBar;
    Progress_lb: TLabel;
    IdFTP1: TIdFTP;
    Splitter1: TSplitter;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    TOTAL_limitreg: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    TOTAL_filesreg: TLabel;
    GroupBox4: TGroupBox;
    ToolBar_grp: TToolBar;
    bt_newgrp: TSpeedButton;
    bt_updategrp: TSpeedButton;
    bt_delgrp: TSpeedButton;
    Panel8: TPanel;
    TOTAL_grpreg: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    ToolBar_bts: TToolBar;
    bt_new: TSpeedButton;
    bt_update: TSpeedButton;
    bt_del: TSpeedButton;
    ToolBar_cancel: TToolBar;
    bt_cancel: TSpeedButton;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    bt_move: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure bt_delClick(Sender: TObject);
    procedure CompressCSVProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure bt_cancelClick(Sender: TObject);
    procedure IdFTP1Work(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure IdFTP1WorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure bt_newClick(Sender: TObject);
    procedure bt_updateClick(Sender: TObject);
    procedure ToolBar_btsResize(Sender: TObject);
    procedure ToolBar_grpResize(Sender: TObject);
    procedure ToolBar_cancelResize(Sender: TObject);
    procedure bt_newgrpClick(Sender: TObject);
    procedure bt_updategrpClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_delgrpClick(Sender: TObject);
    procedure bt_moveClick(Sender: TObject);
  private
    xlogotmp : TMemoryStream;
    LstTables: TLstTables;
    procedure monta_table1(xcodgrpid:Integer);
    procedure monta_table2;
    function DelRegSelect(xtableid,xidReg:Integer):Boolean;
    procedure SetFTPcfng();
    procedure ImportCSV(xtypImp:Boolean; xFileFullNameImport:String; IdataImp_ch1,IdataImp_Auto,IdataImp_IgnoreErros: Boolean);
    procedure DialogTypeImp(xtypedglip:Boolean; xtitledglip:string);
    procedure DialogGrp(xtypedglip:Boolean; xtitledglip:string);
    { Private declarations }
  public
    xcancelProgress: Boolean;
    xfileName_sizefile: Integer;
    xfileName_perc: Real;
    { Public declarations }
  end;

var
  mdl_contactlist: Tmdl_contactlist;

implementation
uses udm, hwsfunctions, DateUtils, Math, U_Cipher, umdl_contactlistGrp, umdl_contactlistType, umdl_contactlistMove;

{$R *.dfm}

procedure Tmdl_contactlist.FormClose(Sender: TObject; var Action: TCloseAction);
var axshowing: Boolean;
begin
     if (not xcancelProgress) then begin
        xcancelProgress:=true;
        Action:=caNone;
        exit;
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
     xlogotmp.Free;
     if dm.ds_sql3.Active then dm.ds_sql3.Close;
     loadx.Progressloading.position:=50;
     if dm.ds_sql4.Active then dm.ds_sql4.Close;
     loadx.Progressloading.position:=75;
     if dm.ds_sql5.Active then dm.ds_sql5.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_contactlist.FormCreate(Sender: TObject);
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
      xcancelProgress:=true;
      loadx.Progressloading.position:=5;
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     mdl_contactlist.Caption := AxDadosUsr.axtitle;
     loadx.Progressloading.position:=10;
     SendMessage(xstatusList.Handle, EM_LIMITTEXT, 0, $FFFFFF);
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
     loadx.Progressloading.position:=50;
     DBGrid2.DataSource:=dm.source_sql4;
     DBGrid2.Columns.Clear;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='cp1';
     DBGrid2.Columns.Items[0].Title.Caption:='Arquivo';
     DBGrid2.Columns.Items[0].Width:=200;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='cp7';
     DBGrid2.Columns.Items[1].Title.Caption:='Total de Registros';
     DBGrid2.Columns.Items[1].Width:=100;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='cp6';
     DBGrid2.Columns.Items[2].Title.Caption:='Data de Cadastro';
     DBGrid2.Columns.Items[2].Width:=130;
     loadx.Progressloading.position:=75;
     DBGrid1.DataSource:=dm.source_sql3;
     DBGrid1.Columns.Clear;
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='descricao';
     DBGrid1.Columns.Items[0].Title.Caption:='Grupo';
     DBGrid1.Columns.Items[0].Width:=300;
     loadx.lbloading.Caption:='Montando tabelas';
     loadx.lbloading.Repaint;
     monta_table1(0);
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
end;

procedure Tmdl_contactlist.monta_table1(xcodgrpid:Integer);
begin
     With dm.ds_sql3 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,descricao,textft FROM '+LstTables.Table[1]+
                      ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=false;
        if (xcodgrpid=0) then First
        else Locate('codigo',xcodgrpid,[]);
     end;
     TOTAL_grpreg.Caption:= Formatfloat('#,###,##0',dm.ds_sql3.RecordCount);
     monta_table2;
end;

procedure Tmdl_contactlist.monta_table2;
var xcodgrpax: Integer;
begin
     if (dm.ds_sql3.RecordCount>0) then xcodgrpax:=dm.ds_sql3.fieldbyname('codigo').AsInteger
     else xcodgrpax:=0;
     With dm.ds_sql4 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,cp1,cp2,cp6,cp7 FROM '+LstTables.Table[0]+
                      ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND cod_grp='+#39+IntToStr(xcodgrpax)+#39+
                      ' AND cp8='+#39+'0'+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=false;
        First;
     end;
     TOTAL_filesreg.Caption:=IntToStr(dm.ds_sql4.RecordCount);
     With dm.ds_sql5 do begin
        if Active then Close;
        CommandText:= 'SELECT SUM(cp7)as soma FROM '+LstTables.Table[0]+
                      ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND cod_grp='+#39+IntToStr(xcodgrpax)+#39+
                      ' AND cp8='+#39+'0'+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=false;
     end;
     TOTAL_filesreg.Caption:= Formatfloat('#,###,##0',dm.ds_sql4.RecordCount);
     TOTAL_limitreg.Caption:= Formatfloat('#,###,##0',dm.ds_sql5.fieldbyname('soma').AsInteger);
end;

procedure Tmdl_contactlist.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      if (not xcancelProgress) then begin
         Progress_lb.Caption:='';
         Progress_pos.Position:=0;
         ToolBar_cancel.Visible:=false;
         bt_new.Enabled:=true;
         bt_del.Enabled:=true;
         bt_update.Enabled:=true;
      end;
      hwsf.BtMensagem('AVISO: Falha na conexão.');
      xstatusList.Lines.add('');
      xstatusList.Lines.add('AVISO: Falha na conexão.');
end;

function Tmdl_contactlist.DelRegSelect(xtableid,xidReg:Integer):Boolean;
var xresultdel: Boolean;
begin
    with dm.executa do begin
         {CommandText:='UPDATE '+LstTables.Table[0]+' SET cp8=:p0,'+
                      'cp6='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                      ' WHERE codigo=:p1';
         Params[0].AsString:='1';
         Params[1].AsInteger:=xidReg;}
         CommandText:='DELETE FROM '+LstTables.Table[xtableid]+
                      ' WHERE codigo=:p0';
         Params[0].AsInteger:=xidReg;
         try
            dm.executa.Execute;
            xresultdel:=true;
         except
            xresultdel:=false;
         end;
    end;
    Result:=xresultdel;
end;

procedure Tmdl_contactlist.SetFTPcfng();
begin
      IdFTP1.Username := 'FsrXer67Io32Y25d';
      IdFTP1.Password := 'fjaioe5647GEi394Giesxcas93hJiue';
      IdFTP1.Host := '187.45.225.67';
end;

procedure Tmdl_contactlist.bt_delClick(Sender: TObject);
var axcoddel:Integer;
    axshowing,xresultdel2: Boolean;
    xfilnmdel:String;
begin
    if (dm.ds_sql4.RecordCount>0) then begin
        if hwsf.BtConfirma('Excluir Registro ['+dm.ds_sql4.fieldbyname('cp1').AsString+']?') then begin
           axshowing:= loadx.Showing;
           if not axshowing then begin
             loadx := Tloadx.Create(Application);
             loadx.lbloading.Caption:='Excluindo registro';
             loadx.Show;
             loadx.Update;
           end else begin
             loadx.lbloading.Caption:='Excluindo registro';
             loadx.lbloading.Repaint;
           end;
           axcoddel:=dm.ds_sql4.fieldbyname('codigo').AsInteger;

           if IdFTP1.Connected then IdFTP1.Quit;
           try
              SetFTPcfng();
              IdFTP1.Connect;
           except
              hwsf.BtMensagem('Falha na conexão com servidor!!!');
              IdFTP1.Quit;
              exit;
           end;
           if not IdFTP1.Connected then begin
              hwsf.BtMensagem('Falha na conexão com servidor!!!');
              exit;
           end else begin
              xfilnmdel:=IntToStr(AxDadosUsr.cod_web)+'_'+IntToStr(axcoddel)+'_'+LowerCase(dm.ds_sql4.fieldbyname('cp1').AsString)+'.hws';
              try
                 IdFTP1.Rename(xfilnmdel,'rmv/'+xfilnmdel);
              except
              end;
              IdFTP1.Quit;
           end;
           xresultdel2:=DelRegSelect(0,axcoddel);
           if not axshowing then loadx.Close;
           if xresultdel2 then begin
              monta_table2;
              hwsf.BtMensagem('Registro Excluido com sucesso.');
           end else begin
              hwsf.BtMensagem('Ocorreu algum erro.');
           end;
        end;
    end else begin
        hwsf.BtMensagem('Nenhum arquivo localizado.');
    end;
end;

procedure Tmdl_contactlist.ImportCSV(xtypImp:Boolean; xFileFullNameImport:String; IdataImp_ch1,IdataImp_Auto,IdataImp_IgnoreErros: Boolean);
var axlistmail,axlistmail_Res,axlistFiles: TStringList;
    axStrFile: TMemoryStream;
    xCabecalhoFilePos,xlimitreg,lincount,xstrcount,countvirg,countvirg2,xidstrlin,xidlin,xPercentLst,axcod,axcod_grp: Integer;
    xPercentID: Real;
    xlinetx,xstr_nome,xstr_mail,xmsgerrror,
    xFileNameImport,xFileExtImport,xFilePathImport,xFileNameImport_TMP,xfilnmUPD,xTestFileNm: String;
    xerrorLocate,SuccessCSV: Boolean;
    xnumbCorr,xnumbErr,xnumbValid: Integer;
    procedure cancelProgress(xmsgcancel:String);
    begin
         xcancelProgress:=true;
         xmsgerrror:=xmsgcancel;
         hwsf.BtMensagem(xmsgerrror);
         xstatusList.Lines.Add(xmsgerrror);
         Progress_lb.Caption:=xmsgerrror;
         Progress_pos.Position:=0;
         ToolBar_cancel.Visible:=false;
         bt_new.Enabled:=true;
         bt_del.Enabled:=true;
         bt_update.Enabled:=true;
         DBGrid2.Enabled:=true;
         axlistmail.Free;
         axlistmail_Res.Free;
    end;
    function FindDelEndPos(fdep_text,fdep_find:string):string;
    var fdep_resul: String;
        fdep_posIni: Integer;
        fdep_posEnd: Integer;
    begin
        fdep_resul := fdep_text;
        fdep_posIni := Pos (fdep_find, fdep_resul);
        fdep_posEnd:= fdep_posIni+(Length(fdep_find));
        if fdep_posIni <> 0 then begin
           Delete(fdep_resul, fdep_posEnd,Length(fdep_text));
        end;
        Result := fdep_resul;
    end;
    function CorrigiEmail(strMAIL:String):String;
    var actid: Integer;
        strMAILini: String;
    begin
         strMAIL:= LowerCase(strMAIL);
         strMAIL:= StringReplace(strMAIL,' ','',[rfReplaceAll]);
         strMAILini:=strMAIL;
         if IdataImp_Auto then begin
            for actid := 1 to Length(strMAIL) do
              case strMAIL[actid] of
              'á': strMAIL[actid] := 'a';
              'é': strMAIL[actid] := 'e';
              'í': strMAIL[actid] := 'i';
              'ó': strMAIL[actid] := 'o';
              'ú': strMAIL[actid] := 'u';
              'à': strMAIL[actid] := 'a';
              'è': strMAIL[actid] := 'e';
              'ì': strMAIL[actid] := 'i';
              'ò': strMAIL[actid] := 'o';
              'ù': strMAIL[actid] := 'u';
              'â': strMAIL[actid] := 'a';
              'ê': strMAIL[actid] := 'e';
              'î': strMAIL[actid] := 'i';
              'ô': strMAIL[actid] := 'o';
              'û': strMAIL[actid] := 'u';
              'ä': strMAIL[actid] := 'a';
              'ë': strMAIL[actid] := 'e';
              'ï': strMAIL[actid] := 'i';
              'ö': strMAIL[actid] := 'o';
              'ü': strMAIL[actid] := 'u';
              'ã': strMAIL[actid] := 'a';
              'õ': strMAIL[actid] := 'o';
              'ñ': strMAIL[actid] := 'n';
              'ç': strMAIL[actid] := 'c';
            end;
            //SINTAXE INICIO
            strMAIL:=StringReplace(strMAIL,' ','',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'>','.',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'<','.',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'/','.',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,',','.',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,';','.',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,':','.',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'...','.',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'..','.',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'#','@',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'!','@',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'`','@',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'"','@',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@@@','@',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@@','@',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.@','@',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@.','@',[rfReplaceAll]);
            //strMAIL:=StringReplace(strMAIL,'.br.com','.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.com.br.','.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.cm.br','.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.co.br','.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.com.ber','.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.com.be','.com.br',[rfReplaceAll]);
            strMAIL:=FindDelEndPos(strMAIL,'.com.br');
            //hotmail
            strMAIL:=StringReplace(strMAIL,'@ohtmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmai.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@homtmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@homail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hoymail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hoitmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmaill.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotamail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmial.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmeil.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotnail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmaisl.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmaill.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmal.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hoymail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmaiol.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@otmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotima.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gotmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmqail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@htomail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotamail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hortmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmael.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@notmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotomail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'2hotmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmailcom','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.hotmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hot.ail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmail.br','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotimail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmail.cm','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hhotmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmai.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmaiil.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotimael.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@ghotmail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hormail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@homail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotamil.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotimaii.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotaill.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotail.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmil.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotimel.com','@hotmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmail.co.br','@hotmail.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@hotmail.co.','@hotmail.com',[rfReplaceAll]);
            strMAIL:=FindDelEndPos(strMAIL,'@hotmail.com.br');
            //live
            strMAIL:=FindDelEndPos(strMAIL,'@live.com.br');
            //yahoo
            strMAIL:=StringReplace(strMAIL,'@yahoo.br','@yahoo.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yohoo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yahool.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yayoo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yaroo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yahooh.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yhaoo.de','@yahoo.de',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yhaoo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yayyo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yaho.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yahho.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yhoo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yahooo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yahoocom','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.yahoo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'2yahoo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@yahhoo.com','@yahoo.com',[rfReplaceAll]);
            strMAIL:=FindDelEndPos(strMAIL,'@yahoo.com.br');
            //gmail
            strMAIL:=StringReplace(strMAIL,'@gmail.br','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gmailo.com','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gmailcom','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gmil.com','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gemail.com','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gmaii.com','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gmali.com','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gmial.com','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@gmail.com.','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'.gmail.com','@gmail.com',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'2gmail.com','@gmail.com',[rfReplaceAll]);
            strMAIL:=FindDelEndPos(strMAIL,'@gmail.com');
            //bol
            strMAIL:=StringReplace(strMAIL,'@bol.br','@bol.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'2bol.com.br','@bol.com.br',[rfReplaceAll]);
            strMAIL:=FindDelEndPos(strMAIL,'@bol.com.br');
            //zipmail
            strMAIL:=StringReplace(strMAIL,'@zipamil.com.br','@zipmail.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'@zipmil.com.br','@zipmail.com.br',[rfReplaceAll]);
            strMAIL:=StringReplace(strMAIL,'2zipmail.com.br','@zipmail.com.br',[rfReplaceAll]);
            strMAIL:=FindDelEndPos(strMAIL,'@zipmail.com.br');
            //brturbo
            strMAIL:=StringReplace(strMAIL,'2brturbo.com.br','@brturbo.com.br',[rfReplaceAll]);
            strMAIL:=FindDelEndPos(strMAIL,'@brturbo.com.br');
            //globo
            strMAIL:=StringReplace(strMAIL,'2globo.com','@globo.com',[rfReplaceAll]);
            strMAIL:=FindDelEndPos(strMAIL,'@globo.com.br');
            //SINTAXE FIM
            if (strMAILini<>strMAIL) then Inc(xnumbCorr);
            //xstatusList.Lines.Add('Auto Correção ['+strMAILini+' para '+strMAIL+']');
       end;
       Result := strMAIL;
    end;
begin
     axcod_grp:=dm.ds_sql3.fieldbyname('codigo').AsInteger;
     xnumbCorr:=0;
     xnumbErr:=0;
     xnumbValid:=0;
     if (xtypImp) then xlimitreg:=dm.ds_sql5.fieldbyname('soma').AsInteger
     else begin
         axcod:=dm.ds_sql4.fieldbyname('codigo').AsInteger;
         xfilnmUPD:=IntToStr(AxDadosUsr.cod_web)+'_'+IntToStr(axcod)+'_'+LowerCase(dm.ds_sql4.fieldbyname('cp1').AsString)+'.hws';
         xlimitreg:=dm.ds_sql5.fieldbyname('soma').AsInteger-dm.ds_sql4.fieldbyname('cp7').AsInteger;
         xTestFileNm:= dm.ds_sql4.fieldbyname('cp2').AsString;
     end;
     if (xlimitreg>=3000000) then begin
         hwsf.BtMensagem('Limite de 3 milhões registros excedido...');
         exit;
     end;
     xstatusList.Lines.Clear;

        xFileFullNameImport:=StringReplace(xFileFullNameImport,'\\','\',[rfReplaceAll]);
        xfileextImport:=LowerCase(ExtractFileExt(xFileFullNameImport));
        xfilepathImport:=ExtractFilePath(xFileFullNameImport);
        xfilepathImport:=StringReplace(xfilepathImport,'\\','\',[rfReplaceAll]);
        xFileNameImport:=ExtractFileName(xFileFullNameImport);
        xFileNameImport:=copy(xFileNameImport,1,Length(xFileNameImport)-(Length(xfileextImport)));
        DBGrid2.Enabled:=false;
        xcancelProgress:=false;
        ToolBar_cancel.Visible:=true;
        bt_new.Enabled:=false;
        bt_del.Enabled:=false;
        bt_update.Enabled:=false;
        if ((not xtypImp) and (xTestFileNm<>LowerCase(xFileNameImport+xfileextImport))) then begin
           if dm.ds_sql4.Locate('cp2',LowerCase(xFileNameImport+xfileextImport),[]) then begin
              cancelProgress('Cancelado, Arquivo já importado ['+xFileFullNameImport+'].');
              exit;
           end;
        end;
        Progress_lb.Caption:='Lendo arquivo';
        Progress_pos.Position:=0;
        axlistmail:= TStringList.Create;
        axlistmail.Clear;
        axlistmail_Res:= TStringList.Create;
        axlistmail_Res.Clear;
        xstatusList.Lines.Add('Preparando para Importar Lista');
        xstatusList.Lines.Add('Arquivo: '+xFileFullNameImport);
        Application.ProcessMessages;
        axlistmail.LoadFromFile(xFileFullNameImport);
        lincount:= axlistmail.Count;
        if (lincount<2) then begin
            cancelProgress('Nenhum registro localizado...');
            exit;
        end;
        xlinetx:= axlistmail.Strings[0];
        xlinetx:= StringReplace(xlinetx,' ','',[rfReplaceAll]);
        xlinetx:= StringReplace(xlinetx,'\','',[rfReplaceAll]);
        xlinetx:= LowerCase(xlinetx);
        if IdataImp_ch1 then begin
           xCabecalhoFilePos:=1;
           xstrcount:= Length(xlinetx);
           countvirg:=1;
           countvirg2:=0;
           xstr_nome:='';
           xstr_mail:='';
           for xidstrlin:=1 to xstrcount do begin
               Application.ProcessMessages;
               if xcancelProgress then begin
                  cancelProgress('Processo Cancelado...');
                  exit;
               end;
               if copy(xlinetx,xidstrlin,1)=';' then begin
                  Inc(countvirg);
               end else if (countvirg<=2) then begin
                  if IdataImp_ch1 then begin
                     if countvirg = 1 then begin
                        xstr_nome:=xstr_nome+copy(xlinetx,xidstrlin,1);
                     end else if countvirg = 2 then begin
                        xstr_mail:=xstr_mail+copy(xlinetx,xidstrlin,1);
                     end;
                  end else begin
                     xstr_mail:=xstr_mail+copy(xlinetx,xidstrlin,1);
                  end;
                end else break;
           end;
           Application.ProcessMessages;
           if IdataImp_ch1 then begin
              if ((xstr_nome<>'nome') or ((xstr_mail<>'e-mail') and (xstr_mail<>'email'))) then begin
                 cancelProgress('Cabeçalho do arquivo contém Erro!!!'+#13+' (Utilize o formato "nome;e-mail")');
                 exit;
              end;
           end else begin
             if ((xstr_mail<>'e-mail') and (xstr_mail<>'email')) then begin
                cancelProgress('Cabeçalho do arquivo contém Erro!!!'+#13+' (Utilize o formato "email")');
                exit;
             end;
           end;
        end else begin
           if ((xlinetx='e-mail') or (xlinetx='email')) then xCabecalhoFilePos:=1
           else xCabecalhoFilePos:=0;
        end;
        axlistmail_Res.Add('id;nome;email');
        xlimitreg:=xlimitreg+(lincount-1);
        xstatusList.Lines.Add('Registros Localizados: '+IntToStr(lincount-1));
        if (xlimitreg>=3000000) then begin
            cancelProgress('Limite de 3 milhões registros excedido...');
            exit;
        end;
         if (lincount>=2000000) then begin
            cancelProgress('Limite máximo por arquivo 2 milhões registros!!!');
            exit;
        end;
        xerrorLocate:=false;
        xstatusList.Lines.Add('');
        xstatusList.Lines.Add('Verificando Integridade do Arquivo...');
        xstatusList.Lines.Add(Formatfloat('#,###,###',(lincount-1))+' registros localizados.');
        xstatusList.Lines.Add('');
        Progress_lb.Caption:='Verificando Integridade do Arquivo';
        Progress_pos.Position:=0;
        xPercentID:=100/lincount;
        for xidlin:=xCabecalhoFilePos to lincount-1 do begin
            Application.ProcessMessages;
            if xcancelProgress then begin
               cancelProgress('Processo Cancelado...');
               exit;
            end;
            xPercentLst:=StrtoInt(Formatfloat('0',(xidlin*xPercentID)));
            Progress_lb.Caption:='Verificando Integridade do Arquivo '+IntToStr(xPercentLst)+'%';
            Progress_pos.Position:=xPercentLst;
            xlinetx:= axlistmail.Strings[xidlin];
            xlinetx:= StringReplace(xlinetx,'\','',[rfReplaceAll]);
            xlinetx:= StringReplace(xlinetx,'#','',[rfReplaceAll]);
            xstrcount:= Length(xlinetx);
            countvirg:=1;
            countvirg2:=0;
            xstr_nome:='';
            xstr_mail:='';
            for xidstrlin:=1 to xstrcount do begin
                Application.ProcessMessages;
                if xcancelProgress then begin
                   cancelProgress('Processo Cancelado...');
                   exit;
                end;
                if copy(xlinetx,xidstrlin,1)=';' then begin
                   Inc(countvirg);
                end else begin
                   if IdataImp_ch1 then begin
                      if countvirg = 1 then begin
                         xstr_nome:=xstr_nome+copy(xlinetx,xidstrlin,1);
                      end else if countvirg = 2 then begin
                          xstr_mail:=xstr_mail+copy(xlinetx,xidstrlin,1);
                      end;
                   end else begin
                      if copy(xlinetx,xidstrlin,1)='@' then countvirg2:=1;
                      if countvirg2=0 then xstr_nome:=xstr_nome+copy(xlinetx,xidstrlin,1);
                      xstr_mail:=xstr_mail+copy(xlinetx,xidstrlin,1);
                   end;
                end;
            end;
            if IdataImp_ch1 then begin
               if (xstr_nome='') then begin
                   xstatusList.Lines.Add('ERRO Linha '+IntToStr(xidlin+1)+': Nome em branco');
                   Inc(xnumbErr);
                   xerrorLocate:=true;
               end;
            end;
            xstr_mail:= CorrigiEmail(xstr_mail);
            if (xstr_mail='') then begin
               xstatusList.Lines.Add('ERRO Linha '+IntToStr(xidlin+1)+': e-mail em branco');
               Inc(xnumbErr);
               xerrorLocate:=true;
            end else if not Verifyemail(xstr_mail) then begin
               xstatusList.Lines.Add('ERRO Linha '+IntToStr(xidlin+1)+': Formato de e-mail inválido ['+xstr_mail+']');
               Inc(xnumbErr);
               xerrorLocate:=true;
            end;
            if (not xerrorLocate) then begin
               axlistmail_Res.Add('0'+';'+xstr_nome+';'+xstr_mail);
               Inc(xnumbValid);
            end;
            if IdataImp_IgnoreErros then xerrorLocate:=false;
        end;
        lincount:=axlistmail_Res.Count;
        xstatusList.Lines.Add('Registros válidos: '+IntToStr(lincount-1));
        axlistmail.Clear;
        //Importa Arquivo
        Application.ProcessMessages;
        if xcancelProgress then begin
           cancelProgress('Processo Cancelado...');
           exit;
        end;
        xstatusList.Lines.Add('');
        if (xerrorLocate) then begin
            xmsgerrror:='ERRO: O Arquivo não foi importado, pois contém Erros!!!';
        end else begin
            xstatusList.Lines.Add('Arquivo Verificado, e não contém Erros.');
            xstatusList.Lines.Add('');
            xstatusList.Lines.Add('');
            xmsgerrror:='Preparando Arquivo...';
            xstatusList.Lines.Add(xmsgerrror);
            Progress_lb.Caption:=xmsgerrror;
            Progress_pos.Position:=0;
            xstatusList.Lines.Add('');

            Application.ProcessMessages;

            axlistFiles:= TStringList.Create;
            axlistFiles.Clear;
            axStrFile:= TMemoryStream.Create;
            axStrFile.Clear;
            axStrFile.Position:=0;
            xFileNameImport_TMP:=ExtractSystemDir+LowerCase(xFileNameImport)+'.crh';//xfilepathImport+
            try
                axlistmail_Res.SaveToStream(axStrFile);
                axStrFile.Position:=0;
                axStrFile:=EnDecryptStream(axStrFile,12847);
                axStrFile.Position:=0;
                axStrFile.SaveToFile(xFileNameImport_TMP);
                //axlistmail_Res.SaveToFile(xFileNameImport_TMP);
                Application.ProcessMessages;
            finally
                axlistmail_Res.Clear;
                axStrFile.Clear;
                axStrFile.Position:=0;
            end;
            axlistFiles.Add(xFileNameImport_TMP);
            try
                SuccessCSV := CompressCSV.BackupToStream(axlistFiles,axStrFile);
            finally
                DeleteFile(xFileNameImport_TMP);
            end;
            Application.ProcessMessages;
            axStrFile.Position:=0;
            axStrFile.SaveToFile(xFileNameImport_TMP);
            axStrFile.Position:=0;
            xfileName_sizefile:=axStrFile.Size;
            Application.ProcessMessages;
            //enviando arquivo
            if IdFTP1.Connected then IdFTP1.Quit;
            try
               SetFTPcfng();
               IdFTP1.Connect;
            except
            end;
            if not IdFTP1.Connected then begin
               DeleteFile(xFileNameImport_TMP);
               axlistFiles.Free;
               axStrFile.Free;
               xmsgerrror:='Erro ao conectar Servidor, Contate o Administrador!!!';
               cancelProgress(xmsgerrror);
               exit;
            end else begin
               xmsgerrror:='Enviando Arquivo...';
               xstatusList.Lines.Add(xmsgerrror);
               Progress_lb.Caption:=xmsgerrror;
               try
                   if (not xtypImp) then
                       IdFTP1.Rename(xfilnmUPD,'rmv/'+xfilnmUPD);
               except
               end;
               try
                   IdFTP1.Put(xFileNameImport_TMP, LowerCase(xFileNameImport)+'.hws');
               except
                   DeleteFile(xFileNameImport_TMP);
                   axlistFiles.Free;
                   axStrFile.Free;
                   xmsgerrror:='Falha na conexão com servidor!!!';
                   IdFTP1.Quit;
                   cancelProgress(xmsgerrror);
                   exit;
               end;
               Application.ProcessMessages;
               DeleteFile(xFileNameImport_TMP);
            end;
            //gravando registro
            xmsgerrror:='Gravando dados...';
            xstatusList.Lines.Add(xmsgerrror);
            if (xtypImp) then begin
                axcod:=dm.GetCodMax(LstTables.Table[0],'codigo','');
                with dm.executa do begin
                     CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_ent,cod_grp,cp1,cp2,cp3,cp7,cp8,xtp,cp5,cp6) '+
                                   'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,'+
                                   #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                                   #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+')';
                     Params[0].AsInteger:=axcod;
                     Params[1].AsInteger:=AxDadosUsr.cod_web;
                     Params[2].AsInteger:=axcod_grp;
                     Params[3].AsString:=xFileNameImport;
                     Params[4].AsString:=LowerCase(xFileNameImport+xFileExtImport);
                     Params[5].AsString:=xFileFullNameImport;
                     Params[6].AsInteger:=(lincount-1);
                     Params[7].AsInteger:=0;
                     Params[8].AsString:=AxDadosUsr.axparm;
                end;
            end else begin
                with dm.executa do begin
                     CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cp1=:p0,cp2=:p1,cp3=:p2,cp7=:p3,'+
                                   'cp6='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                                   ' WHERE codigo=:cp4';
                     Params[0].AsString:=xFileNameImport;
                     Params[1].AsString:=LowerCase(xFileNameImport+xFileExtImport);
                     Params[2].AsString:=xFileFullNameImport;
                     Params[3].AsInteger:=(lincount-1);
                     Params[4].AsInteger:=axcod;
                end;
            end;
            try
                 dm.executa.Execute;
            except
                 axlistFiles.Free;
                 axStrFile.Free;
                 xmsgerrror:='Ocorreu ao gravar os dados, tente novamente...';
                 cancelProgress(xmsgerrror);
                 exit;
            end;
            if not IdFTP1.Connected then begin
               try
                  SetFTPcfng();
                  IdFTP1.Connect;
               except
               end;
            end;
            if not IdFTP1.Connected then begin
               axlistFiles.Free;
               axStrFile.Free;
               xmsgerrror:='Erro ao finalizar processo, Contate o Administrador!!!';
               cancelProgress(xmsgerrror);
               exit;
            end else begin
               IdFTP1.Rename(LowerCase(xFileNameImport)+'.hws',IntToStr(AxDadosUsr.cod_web)+'_'+IntToStr(axcod)+'_'+LowerCase(xFileNameImport)+'.hws');
               Application.ProcessMessages;
               IdFTP1.Quit;
               DeleteFile(xFileNameImport_TMP);
            end;

            dm.ds_sql4.Close;
            dm.ds_sql4.Open;
            dm.ds_sql5.Close;
            dm.ds_sql5.Open;
            TOTAL_filesreg.Caption:= Formatfloat('#,###,##0',dm.ds_sql4.RecordCount);
            TOTAL_limitreg.Caption:= Formatfloat('#,###,##0',dm.ds_sql5.fieldbyname('soma').AsInteger);
            axlistFiles.Free;
            axStrFile.Free;
            xmsgerrror:='Arquivo Importado com sucesso...';
        end;
        cancelProgress(xmsgerrror);
        xstatusList.Lines.Add(Formatfloat('#,###,##0',xnumbValid)+' e-mail(s) importados.');
        xstatusList.Lines.Add(Formatfloat('#,###,##0',xnumbCorr)+' e-mail(s) corridos.');
        xstatusList.Lines.Add(Formatfloat('#,###,##0',xnumbErr)+' e-mail(s) inválidos.');
end;

procedure Tmdl_contactlist.CompressCSVProgress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
begin
     Progress_pos.Position:=Percent;
end;

procedure Tmdl_contactlist.bt_cancelClick(Sender: TObject);
begin
     xcancelProgress:=true;
end;

procedure Tmdl_contactlist.IdFTP1Work(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
var xfileName_id: Integer;
begin
      xfileName_id:=StrtoInt(Formatfloat('0',(AWorkCount*xfileName_perc)));
      Progress_lb.Caption:='Enviando Arquivo '+IntToStr(xfileName_id)+'%';
      Progress_pos.Position := xfileName_id;//AWorkCount;
      Application.ProcessMessages;
      if xcancelProgress then begin
         xfileName_sizefile:=100;
         Progress_pos.Position := 0;
         IdFTP1.CancelWriteBuffer;
         IdFTP1.Quit;
      end;
end;

procedure Tmdl_contactlist.IdFTP1WorkBegin(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCountMax: Integer);
begin
    Progress_pos.Position := 0;
    xfileName_perc:=100/xfileName_sizefile;
end;

procedure Tmdl_contactlist.bt_newClick(Sender: TObject);
begin
      DialogTypeImp(true,'Importar Novo Arquivo');
end;

procedure Tmdl_contactlist.bt_updateClick(Sender: TObject);
begin
      DialogTypeImp(true,'Atualizar Arquivo '+dm.ds_sql4.FieldByName('cp2').AsString);
end;

procedure Tmdl_contactlist.DialogTypeImp(xtypedglip:Boolean; xtitledglip:string);
var xdataImp_path: String;
    xdataImp_Process,xdataImp_ch1,xdataImp_Auto,xdataImp_IgnoreErros: Boolean;
begin
     if (dm.ds_sql3.RecordCount = 0) then begin
        hwsf.BtMensagem('Nenhum grupo de Classificação Criado.');
        exit;
     end;
     Try
        Application.CreateForm(Tmdl_contactlistType, mdl_contactlistType);
        mdl_contactlistType.Caption:=xtitledglip;
        mdl_contactlistType.ShowModal;
        xdataImp_Process:=mdl_contactlistType.PdataImp_Process;
        if (xdataImp_Process) then begin
           xdataImp_path:=mdl_contactlistType.PdataImp_path;
           xdataImp_ch1:=mdl_contactlistType.PdataImp_ch1;
           xdataImp_Auto:=mdl_contactlistType.PdataImp_Auto;
           xdataImp_IgnoreErros:=mdl_contactlistType.PdataImp_IgnoreErros;
        end;
     finally
        mdl_contactlistType.Free;
        if (xdataImp_Process) then ImportCSV(xtypedglip,xdataImp_path,xdataImp_ch1,xdataImp_Auto,xdataImp_IgnoreErros);
     End;
end;

procedure Tmdl_contactlist.ToolBar_btsResize(Sender: TObject);
var xcalcwdth: Integer;
begin
     xcalcwdth:=ToolBar_bts.Width-(bt_new.Width+bt_update.Width+bt_del.Width+bt_move.Width);
     if (xcalcwdth<0) then xcalcwdth:=0;
     Panel5.Width:=xcalcwdth;
     xcalcwdth:=ToolBar_bts.Width-265;
     if (xcalcwdth<200) then xcalcwdth:=200;
     DBGrid2.Columns.Items[0].Width:=xcalcwdth;
end;

procedure Tmdl_contactlist.ToolBar_grpResize(Sender: TObject);
var xcalcwdth: Integer;
begin
     xcalcwdth:=ToolBar_grp.Width-(bt_newgrp.Width+bt_updategrp.Width+bt_delgrp.Width);
     if (xcalcwdth<0) then xcalcwdth:=0;
     Panel6.Width:=xcalcwdth;
     xcalcwdth:=ToolBar_bts.Width-20;
     if (xcalcwdth<200) then xcalcwdth:=200;
     DBGrid1.Columns.Items[0].Width:=xcalcwdth;
end;

procedure Tmdl_contactlist.ToolBar_cancelResize(Sender: TObject);
begin
      bt_cancel.Width:=ToolBar_cancel.Width;
end;

procedure Tmdl_contactlist.bt_newgrpClick(Sender: TObject);
begin
      DialogGrp(true, 'Novo Grupo de Classificação');
end;

procedure Tmdl_contactlist.bt_updategrpClick(Sender: TObject);
begin
      DialogGrp(false, 'Alterar Grupo de Classificação');
end;

procedure Tmdl_contactlist.DialogGrp(xtypedglip:Boolean; xtitledglip:string);
var xdataGrp_Process: Boolean;
    xdataGrp_cod: Integer;
begin
     if (not xtypedglip) then begin
         if (dm.ds_sql3.RecordCount = 0) then begin
            hwsf.BtMensagem('Nenhum grupo de Classificação Selecionado.');
            exit;
         end;
     end;
     Try
        Application.CreateForm(Tmdl_contactlistGrp, mdl_contactlistGrp);
        mdl_contactlistGrp.Caption:=xtitledglip;
        mdl_contactlistGrp.PdataGrp_table:=LstTables.Table[1];
        if (not xtypedglip) then begin
            mdl_contactlistGrp.PdataGrp_cod:=dm.ds_sql3.fieldbyname('codigo').AsInteger;
            mdl_contactlistGrp.lb_desc.Text:=dm.ds_sql3.fieldbyname('descricao').AsString;
            mdl_contactlistGrp.lb_text.Text:=dm.ds_sql3.fieldbyname('textft').AsString;
        end else mdl_contactlistGrp.PdataGrp_cod:=0;
        mdl_contactlistGrp.ShowModal;
        xdataGrp_Process:=mdl_contactlistGrp.PdataGrp_Process;
        xdataGrp_cod:=mdl_contactlistGrp.PdataGrp_cod;
        if (xdataGrp_Process) then monta_table1(xdataGrp_cod);
     finally
        mdl_contactlistGrp.Free;
     End;
end;


procedure Tmdl_contactlist.DBGrid1CellClick(Column: TColumn);
begin
      monta_table2;
end;

procedure Tmdl_contactlist.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      monta_table2;
end;

procedure Tmdl_contactlist.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      monta_table2;
end;

procedure Tmdl_contactlist.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      monta_table2;
end;

procedure Tmdl_contactlist.bt_delgrpClick(Sender: TObject);
var axcoddel:Integer;
    axshowing,xresultdel2: Boolean;
    xfilnmdel:String;
begin
      if (dm.ds_sql4.RecordCount>0) then begin
         hwsf.BtMensagem('Não é possivel excluir paras, pois existem arquivos nesta pasta.');
         exit;
      end;
      if (dm.ds_sql3.RecordCount>0) then begin
        if hwsf.BtConfirma('Excluir Registro ['+dm.ds_sql3.fieldbyname('descricao').AsString+']?') then begin
           axshowing:= loadx.Showing;
           if not axshowing then begin
             loadx := Tloadx.Create(Application);
             loadx.lbloading.Caption:='Excluindo registro';
             loadx.Show;
             loadx.Update;
           end else begin
             loadx.lbloading.Caption:='Excluindo registro';
             loadx.lbloading.Repaint;
           end;
           axcoddel:=dm.ds_sql3.fieldbyname('codigo').AsInteger;
           xresultdel2:=DelRegSelect(1,axcoddel);
           if not axshowing then loadx.Close;
           if xresultdel2 then begin
              hwsf.BtMensagem('Registro Excluido com sucesso.');
              monta_table1(0);
           end else begin
              hwsf.BtMensagem('Ocorreu algum erro.');
           end;
        end;
    end else begin
        hwsf.BtMensagem('Nenhum registro localizado.');
    end;
end;

procedure Tmdl_contactlist.bt_moveClick(Sender: TObject);
var xdataMov_Process: Boolean;
begin
    if (not dm.ds_sql4.Active) then begin
        hwsf.BtMensagem('Erro ao selecionar arquivo.');
        exit;
    end;
    if (dm.ds_sql4.RecordCount<=0) then begin
        hwsf.BtMensagem('Nenhum arquivo localizado.');
        exit;
    end;
    if (dm.ds_sql4.fieldbyname('codigo').AsInteger<=0) then begin
        hwsf.BtMensagem('Favor selecionar um arquivo.');
        exit;
    end;
    Try
        Application.CreateForm(Tmdl_contactlistMove, mdl_contactlistMove);
        mdl_contactlistMove.Caption:='Mover '+dm.ds_sql4.fieldbyname('cp1').AsString;
        mdl_contactlistMove.PdataMov_table0:=LstTables.Table[0];
        mdl_contactlistMove.PdataMov_table1:=LstTables.Table[1];
        mdl_contactlistMove.PdataMov_codFile:=dm.ds_sql4.fieldbyname('codigo').AsInteger;
        mdl_contactlistMove.PdataMov_codGrp:=dm.ds_sql3.fieldbyname('codigo').AsInteger;
        mdl_contactlistMove.ShowModal;
        xdataMov_Process:=mdl_contactlistMove.PdataMov_Process;
        if (xdataMov_Process) then monta_table2;
     finally
        mdl_contactlistMove.Free;
     End;
end;

end.
