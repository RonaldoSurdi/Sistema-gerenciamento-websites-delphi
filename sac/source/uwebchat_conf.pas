unit uwebchat_conf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ToolWin, ComCtrls, ImgList, ExtCtrls, jpeg, Grids,
  DBGrids, Buttons, DBCtrls, CheckLst, AppEvnts, RXCtrls;

type
  Twebchat_conf = class(TForm)
    PageControl_principal: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbcp2: TLabeledEdit;
    lbcp4: TRadioButton;
    lbcp5: TRadioButton;
    lbcp6_date: TDateTimePicker;
    lbcp6_time: TDateTimePicker;
    TabSheet3: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    lbcp12: TCheckBox;
    lbcp13: TLabeledEdit;
    lbcp14: TCheckBox;
    lbcp15: TCheckBox;
    lbcp17: TCheckBox;
    lbcp9: TCheckBox;
    lbcp10: TDateTimePicker;
    StatusBar1: TStatusBar;
    CoolBar3: TCoolBar;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    lbcp16: TCheckBox;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    bt_new2: TSpeedButton;
    bt_edit2: TSpeedButton;
    CoolBar1: TCoolBar;
    ToolBar2: TToolBar;
    bt_new: TSpeedButton;
    bt_acess: TSpeedButton;
    GroupBox4: TGroupBox;
    lbcp11: TCheckBox;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    cl_cod: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lbcp18: TCheckBox;
    lbcp3: TMemo;
    ToolBar4: TToolBar;
    bt_print: TSpeedButton;
    bt_export: TSpeedButton;
    DBGrid3_usr: TDBGrid;
    DBGrid2_usr: TDBGrid;
    DBGrid1_usr: TDBGrid;
    DBMemo1: TDBMemo;
    GroupBox9: TGroupBox;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    GroupBox10: TGroupBox;
    DBGrid3: TDBGrid;
    DBMemo3: TDBMemo;
    bt_edit: TSpeedButton;
    Label_ativa: TLabel;
    bt_view: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox7: TGroupBox;
    StatusBar3: TStatusBar;
    ToolBar7: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Splitter1: TSplitter;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    bt_email: TSpeedButton;
    ToolBar6: TToolBar;
    bt_del: TSpeedButton;
    bt_finale: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    bt_exclui1: TSpeedButton;
    bt_finaliza1: TSpeedButton;
    bt_exclui2: TSpeedButton;
    listUsrCheck: TRxCheckListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_edit2Click(Sender: TObject);
    procedure PageControl_principalChange(Sender: TObject);
    procedure lbcp4Click(Sender: TObject);
    procedure lbcp5Click(Sender: TObject);
    procedure lbcp9Click(Sender: TObject);
    procedure lbcp12Click(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure bt_new2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_finaleClick(Sender: TObject);
    procedure DBGrid1_usrDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3_usrDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_acessClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure lbcp13Change(Sender: TObject);
    procedure bt_emailClick(Sender: TObject);
    procedure bt_viewClick(Sender: TObject);
    procedure bt_printClick(Sender: TObject);
    procedure bt_exportClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    listCodUsr,listMailUsr,listXtpUsr: TStringList;
    xeditpass: Boolean;
    xeditpassSQL: String;
    procedure BackPage(xslec:Integer);
    procedure AddConf;
    function montaTableUsr():Boolean;
    procedure montalstUSR(xnew:Boolean);
    procedure montaTablConf(xtype,xcodselect:Integer);
    procedure AtualizaConf(xtype:Integer);
    procedure setFormView(xcad:Boolean);
    procedure FinalizeConf(xidFinaliz:Integer);
    procedure SelectUsrs(xselect:Boolean);
    procedure ConfirmUsrs();
    function btGravardados():Boolean;
    function checkpassusr:Boolean;
    function AtualizaCOD:Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  webchat_conf: Twebchat_conf;

implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher, Math;

{$R *.dfm}

procedure Twebchat_conf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if dm3.ds_sql3.Active then dm3.ds_sql3.Close;
    if dm3.ds_sql4.Active then dm3.ds_sql4.Close;
    if dm3.ds_sql5.Active then dm3.ds_sql5.Close;
    if dm3.ds_sql11.Active then dm3.ds_sql11.Close;
    Action:=caFree;
end;

procedure Twebchat_conf.FormCreate(Sender: TObject);
begin
    cl_cod.Caption:='novo';
    listCodUsr:= TStringList.Create;
    listMailUsr:= TStringList.Create;
    listXtpUsr:= TStringList.Create;
    setFormView(false);
    DBGrid1.DataSource:=dm3.source_sql3;
    DBGrid2.DataSource:=dm3.source_sql3;
    DBGrid3.DataSource:=dm3.source_sql3;
    DBGrid1_usr.DataSource:=dm3.source_sql11;
    DBGrid2_usr.DataSource:=dm3.source_sql11;
    DBGrid3_usr.DataSource:=dm3.source_sql11;
    DBMemo1.DataSource:=dm3.source_sql3;
    DBMemo1.DataField:='cp14';
    DBMemo2.DataSource:=dm3.source_sql3;
    DBMemo2.DataField:='cp14';
    DBMemo3.DataSource:=dm3.source_sql3;
    DBMemo3.DataField:='cp14';
    With DBGrid1.Columns do begin
         Clear;
         Add;
         Items[0].Title.Caption:='ID';
         Items[0].FieldName:='codigo';
         Items[0].Width:=50;
         Add;
         Items[1].Title.Caption:='Data';
         Items[1].FieldName:='cp2';
         Items[1].Width:=200;
         Add;
         Items[2].Title.Caption:='Tema';
         Items[2].FieldName:='cp13';
         Items[2].Width:=400;
    end;
    DBGrid2.Columns:=DBGrid1.Columns;
    DBGrid3.Columns:=DBGrid1.Columns;
    With DBGrid1_usr.Columns do begin
         Clear;
         Add;
         Items[0].Title.Caption:='Acessos';
         Items[0].FieldName:='cp11';
         Items[0].Width:=50;
         Add;
         Items[1].Title.Caption:='Último acesso';
         Items[1].FieldName:='cp10';
         Items[1].Width:=200;
         Add;
         Items[2].Title.Caption:='Usuário';
         Items[2].FieldName:='cp3';
         Items[2].Width:=400;
    end;
    DBGrid2_usr.Columns:=DBGrid1_usr.Columns;
    DBGrid3_usr.Columns:=DBGrid1_usr.Columns;
    PageControl_principal.TabIndex:=0;
    montaTableUsr();
    montaTablConf(1,0);
end;

function Twebchat_conf.montaTableUsr():Boolean;
begin
     try
        With dm3.ds_sql4 do begin
          if Active then Close;
          CommandText:= 'SELECT codigo,cp3,cp13,cp37,xtp FROM '+dm3.LstTables.Table[5]+
                        ' WHERE cod_ent='+#39+dm3.axcod_web+#39+
                        ' AND xtp='+#39+dm3.axparmSAC+#39+
                        ' ORDER BY cp3';
          Open;
          listCodUsr.Clear;
          listMailUsr.Clear;
          listXtpUsr.Clear;
          listUsrCheck.Items.Clear;
          dm3.ds_sql4.First;
          While not dm3.ds_sql4.Eof do begin
              listCodUsr.Add(dm3.ds_sql4.fieldbyname('codigo').AsString);
              listMailUsr.Add(dm3.ds_sql4.fieldbyname('cp13').AsString);
              listXtpUsr.Add(dm3.ds_sql4.fieldbyname('xtp').AsString);
              listUsrCheck.Items.Add(dm3.ds_sql4.fieldbyname('cp3').AsString);
              dm3.ds_sql4.Next;
           end;
        end;
        Result:=true;
     except
        Result:=false;
     end;
end;

procedure Twebchat_conf.montalstUSR(xnew:Boolean);
var xidusrlst,axcodconf: Integer;
    function LocationUsrLst(xcodidus:String):Boolean;
    var xidusrlst2: Integer;
    begin
         Result:=false;
         for xidusrlst2:=0 to listCodUsr.Count-1 do
         if listCodUsr.Strings[xidusrlst2]=xcodidus then begin
            listUsrCheck.Checked[xidusrlst2]:=true;
            Result:=true;
            break;
         end;
    end;
begin
//aqui, atualizar lista de usuários para a conf
    for xidusrlst:=0 to listCodUsr.Count-1 do begin
        listUsrCheck.Checked[xidusrlst]:=false;
        if xnew then begin
           if listCodUsr.Strings[xidusrlst]=dm3.axcod_Usr then
           listUsrCheck.Checked[listUsrCheck.Items.Count-1]:=true;
        end;
    end;
    if (cl_cod.Caption<>'novo') then begin
        try
          axcodconf:=StrToInt(cl_cod.Caption);
          With dm3.ds_sql5 do begin
             if Active then Close;
             CommandText:= 'SELECT A.codigo,A.cod_usr,A.cod_cnf,A.tp_usr,A.cp10,A.cp11,A.xtp,B.cp3,B.cp13,B.cp37,B.xtp FROM '+
                           dm3.LstTables.Table[15]+' A,'+
                           dm3.LstTables.Table[5]+' B'+
                           ' WHERE B.codigo=A.cod_usr'+
                           ' AND B.cod_ent='+#39+dm3.axcod_web+#39+
                           ' AND A.cod_cnf='+#39+IntToStr(axcodconf)+#39+
                           ' ORDER BY B.cp3';
             Open;
             if RecordCount>0 then begin
                First;
                While not Eof do begin
                    LocationUsrLst(fieldbyname('cod_usr').AsString);
                    Next;
                end;
             end;
             //Close;
          end;
       except
          hwsf.BtMensagem('Erro ao montar lista de usuários');
          exit;
       end;
    end else begin
       if dm3.ds_sql5.Active then
          dm3.ds_sql5.Close;
    end;
end;

procedure Twebchat_conf.montaTablConf(xtype,xcodselect:Integer);
var xfieldsNum: Integer;
    xacessUsr: Boolean;
begin
    if dm3.ds_sql11.Active then dm3.ds_sql11.Close;
    With dm3.ds_sql3 do begin
        if Active then Close;
        CommandText:='SELECT * from '+dm3.LstTables.Table[14]+
        ' WHERE cod_web='+#39+dm3.axcod_web+#39+
        ' AND xstat='+#39+IntToStr(xtype)+#39;
        Open;
        if xcodselect<>0 then
           Locate('codigo',xcodselect,[]);
        xfieldsNum:=RecordCount;
    end;
    StatusBar1.Panels.Items[0].Text:= IntToStr(xfieldsNum)+' registros encontrados';
    xacessUsr:=(xfieldsNum>0);
    Case xtype of
       1:begin
         bt_acess.Enabled:=xacessUsr;
         bt_edit.Enabled:=xacessUsr;
         bt_finaliza1.Enabled:=xacessUsr;
         bt_exclui1.Enabled:=xacessUsr;
         Label_ativa.Visible:=not xacessUsr;
         if xcodselect<>0 then
            DBGrid1.SetFocus;
       end;
       2:begin
         bt_edit2.Enabled:=xacessUsr;
         bt_exclui2.Enabled:=xacessUsr;
         bt_email.Enabled:=xacessUsr;
         if xcodselect<>0 then
            DBGrid2.SetFocus;
       end;
       3:begin
         bt_print.Enabled:=xacessUsr;
         bt_export.Enabled:=xacessUsr;
         bt_view.Enabled:=xacessUsr;
         if xcodselect<>0 then
            DBGrid3.SetFocus;
       end;
    End;
    AtualizaConf(xtype);
end;

procedure Twebchat_conf.AtualizaConf(xtype:Integer);
var testUSRLoc,testUSR,testhist,tested: Boolean;
    xcodConfCnf: String;
begin
   if dm3.ds_sql3.RecordCount=0 then exit;
   xcodConfCnf:=dm3.ds_sql3.FieldByName('codigo').AsString;
   testUSR:= (dm3.ds_sql3.FieldByName('cod_ent').AsInteger=StrToInt(dm3.axcod_Usr));
   tested:= ((not testUSR and not StrToBool(dm3.ds_sql3.FieldByName('cp10').AsString)) OR (testUSR));
   try
       With dm3.ds_sql11 do begin
          if Active then Close;
          CommandText:= 'SELECT A.codigo,A.cod_usr,A.cod_cnf,A.tp_usr,A.cp10,A.cp11,A.xtp,B.cp3,B.cp13,B.cp37,B.xtp FROM '+
                        dm3.LstTables.Table[15]+' A,'+
                        dm3.LstTables.Table[5]+' B'+
                        ' WHERE B.codigo=A.cod_usr'+
                        ' AND B.cod_ent='+#39+dm3.axcod_web+#39+
                        ' AND A.cod_cnf='+#39+xcodConfCnf+#39+
                        ' ORDER BY B.cp3';
          Open;
          testUSRLoc:=(RecordCount>0);
          if testUSRLoc then
             testUSRLoc:=Locate('cod_usr',StrToInt(dm3.axcod_Usr),[]);
       end;
    except
       hwsf.BtMensagem('Erro ao montar lista de usuários');
       //PageControl_principal.TabIndex:=0;
       exit;
   end;
   if not testUSRLoc then tested:=testUSRLoc;
   Case xtype of
       1:begin
         bt_acess.Enabled:=testUSRLoc;
         bt_edit2.Enabled:=tested;
         bt_finaliza1.Enabled:=tested;
         bt_exclui1.Enabled:=tested;
       end;
       2:begin
         bt_edit.Enabled:=tested;
         bt_exclui2.Enabled:=tested;
       end;
       3:begin
         testhist:= ((not testUSR and StrToBool(dm3.ds_sql3.FieldByName('cp9').AsString)) OR (testUSR));
         bt_print.Enabled:=testhist;
         bt_export.Enabled:=testhist;
         bt_view.Enabled:=testhist;
       end;
    End;
    AtualizaCOD;
end;

procedure Twebchat_conf.setFormView(xcad:Boolean);
begin
    //if TabSheet1.TabVisible<>(not xcad) then begin
       TabSheet1.TabVisible:=not xcad;
       TabSheet2.TabVisible:=not xcad;
       TabSheet3.TabVisible:=not xcad;
       TabSheet4.TabVisible:=xcad;
    //end;
end;

function Twebchat_conf.checkpassusr:Boolean;
var axcnfSenhaTX:String;
    axcnfSenha: Boolean;
begin
    Result:=true;
    if StrToBool(dm3.ds_sql3.fieldbyname('cp6').AsString) then begin
       if not dm3.ds_sql11.Locate('cod_usr',StrToInt(dm3.axcod_Usr),[]) then begin
          hwsf.BtMensagem('Seu Usuário não está autorizado para esta Conferência.');
          Result:=false;
       end else begin
         axcnfSenha:=StrToBool(dm3.ds_sql3.fieldbyname('cp6').AsString);
         if axcnfSenha then begin
            axcnfSenhaTX:=hwsf.BtDesc('Digite a senha para Acesso a Conferência:');
            axcnfSenhaTX:=MD5Hash(axcnfSenhaTX);
            if axcnfSenhaTX<>dm3.ds_sql3.fieldbyname('cp7').AsString then begin
               hwsf.BtMensagem('Autenticação Inválida!!!');
               Result:=false;
            end;
         end;
       end;
    end;
end;

function Twebchat_conf.AtualizaCOD:Boolean;
begin
      try
        if dm3.ds_sql3.RecordCount>0 then begin
           cl_cod.Caption := dm3.ds_sql3.fieldbyname('codigo').AsString;
           lbcp2.Text:= dm3.ds_sql3.fieldbyname('cp13').AsString;
           GroupBox4.Caption:= 'Usuários Autorizados: '+lbcp2.Text;
        end else GroupBox4.Caption:= 'Nenhum registro Localizado';
        Result:=true;
      except
        Result:=false;
      end;
end;

procedure Twebchat_conf.bt_edit2Click(Sender: TObject);
begin
    if not checkpassusr then exit;
    xeditpass:=false;
    TabSheet4.Caption:='Ficha cadastral da Conferência';
    bt_del.Enabled:=true;
    bt_finale.Enabled:=true;
    setFormView(true);
    PageControl_principal.TabIndex:=0;
    With dm3.ds_sql3 do begin
        cl_cod.Caption := fieldbyname('codigo').AsString;
        lbcp2.Text:= fieldbyname('cp13').AsString;
        lbcp3.Lines.Assign(fieldbyname('cp14'));
        if StrToBool(fieldbyname('cp1').AsString) then lbcp4.Checked:=true
        else lbcp5.Checked:=true;
        lbcp6_date.Date:=fieldbyname('cp2').AsDateTime;
        lbcp6_time.Time:=fieldbyname('cp2').AsDateTime;
        lbcp9.Checked:=StrToBool(fieldbyname('cp3').AsString);
        try
          lbcp10.Time:=fieldbyname('cp4').AsDateTime;
        except
          lbcp10.Time:=StrToTime('01:00:00');
        end;
        lbcp11.Checked:=StrToBool(fieldbyname('cp5').AsString);
        lbcp12.Checked:=StrToBool(fieldbyname('cp6').AsString);
        if lbcp12.Checked then begin
           xeditpassSQL:=fieldbyname('cp7').AsString;
           lbcp13.Text:='KillofKey';
        end else begin
           xeditpassSQL:='';
           lbcp13.Text:='';
        end;
        lbcp14.Checked:=StrToBool(fieldbyname('cp8').AsString);
        lbcp15.Checked:=StrToBool(fieldbyname('cp9').AsString);
        lbcp16.Checked:=StrToBool(fieldbyname('cp10').AsString);
        lbcp17.Checked:=StrToBool(fieldbyname('cp11').AsString);
        lbcp18.Checked:=StrToBool(fieldbyname('cp12').AsString);
    end;
    montalstUSR(false);
end;

procedure Twebchat_conf.BackPage(xslec:Integer);
var xcodpg: Integer;
begin
       setFormView(false);
       try
       if ((xslec>0) and (cl_cod.Caption <> 'novo')) then
          xcodpg:=StrToInt(cl_cod.Caption)
       else xcodpg:=0;
       if xslec=3 then begin
          PageControl_principal.TabIndex:=2;
          montaTablConf(3,xcodpg);
       end else begin
          if lbcp4.Checked then begin
             PageControl_principal.TabIndex:=0;
             montaTablConf(1,xcodpg);
          end else begin
             PageControl_principal.TabIndex:=1;
             montaTablConf(2,xcodpg);
          end;
       end;
       except
       end;
end;

procedure Twebchat_conf.PageControl_principalChange(Sender: TObject);
begin
    if TabSheet1.TabVisible then
       montaTablConf(PageControl_principal.TabIndex+1,0);
end;

function Twebchat_conf.btGravardados():Boolean;
var axcod: integer;
    axnew: Boolean;
    AXeditpassSQL: String;
begin
    Result:=false;
    axnew:= (cl_cod.Caption = 'novo');
    {if not axnew then
    if not hwsf.BtConfirma('Alterar os dados da Conferência selecionada?') then begin
       setFormView(false);
       exit;
    end;}
    //banco de imagens
     if lbcp2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o Tema da Conferência.');
        lbcp2.SetFocus;
        exit;
     end;
     if lbcp5.Checked then lbcp6_date.Time:=lbcp6_time.Time
     else lbcp6_date.DateTime:=Now;
     if lbcp10.Time<StrToTime('00:00:05') then
        lbcp10.Time:=StrToTime('00:00:05');
     AXeditpassSQL:='';
     if lbcp12.Checked then begin
        if xeditpass then begin
           if Length(lbcp13.Text)<4 then begin
              hwsf.BtMensagem('É digitar uma senha de 4 à 255 caracteres.');
              lbcp13.SetFocus;
              lbcp13.SelectAll;     
              exit;
           end;
           AXeditpassSQL:=MD5Hash(lbcp13.Text);
        end else AXeditpassSQL:=xeditpassSQL;
     end;
     PageControl_principal.Enabled:=false;
     StatusBar1.Panels.Items[0].Text:='Gravando Dados...';
     StatusBar1.Repaint;
     if axnew then begin
        axcod:=dm3.GetCodMax(dm3.LstTables.Table[14],'codigo','');
        with dm3.executa do begin
             CommandText:= 'INSERT INTO '+dm3.LstTables.Table[14]+' (codigo, cod_web, cod_ent, cp1, cp2, cp3, cp4, cp5, cp6, cp7, cp8, cp9, cp10, cp11, cp12, cp13, cp14, cp15, cp16, xstat, xtp) '+
                           'VALUES(:p0,:p1,:p2,:p3,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',lbcp6_date.DateTime)+#39+',:p4,'+#39+FormatDateTime('yyyymmdd',lbcp6_date.Date)+' '+FormatDateTime('hh:nn:ss',lbcp10.Time)+#39+',:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+',:p15,:p16)';
             Params[0].AsInteger:=axcod;
             Params[1].AsInteger:=StrToInt(dm3.axcod_web);
             Params[2].AsInteger:=StrToInt(dm3.axcod_Usr);
             Params[3].AsString:=BoolToStr(lbcp4.Checked);
             Params[4].AsString:=BoolToStr(lbcp9.Checked);
             Params[5].AsString:=BoolToStr(lbcp11.Checked);
             Params[6].AsString:=BoolToStr(lbcp12.Checked);
             Params[7].AsString:=AXeditpassSQL;
             Params[8].AsString:=BoolToStr(lbcp14.Checked);
             Params[9].AsString:=BoolToStr(lbcp15.Checked);
             Params[10].AsString:=BoolToStr(lbcp16.Checked);
             Params[11].AsString:=BoolToStr(lbcp17.Checked);
             Params[12].AsString:=BoolToStr(lbcp18.Checked);
             Params[13].AsString:=lbcp2.Text;
             Params[14].Assign(lbcp3.Lines);
             if lbcp4.Checked then Params[15].AsInteger:=1
             else Params[15].AsInteger:=2;
             Params[16].AsString:=dm3.axparmSAC;
        end;
     end else begin
        with dm3.executa do begin
            axcod:=StrToInt(cl_cod.Caption);
            CommandText:= 'UPDATE '+dm3.LstTables.Table[14]+' SET cod_ent=:p0, cp1=:p1, cp2='+#39+FormatDateTime('yyyymmdd hh:nn:ss',lbcp6_date.DateTime)+#39+
                          ', cp3=:p2, cp4='+#39+FormatDateTime('yyyymmdd',lbcp6_date.Date)+' '+FormatDateTime('hh:nn:ss',lbcp10.Time)+#39+', cp5=:p3, cp6=:p4, cp7=:p5, cp8=:p6, cp9=:p7, cp10=:p8, cp11=:p9, cp12=:p10, cp13=:p11, cp14=:p12,'+
                          ' cp16='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+', xstat=:p13'+
                          ' WHERE codigo=:p14';
            Params[0].AsInteger:=StrToInt(dm3.axcod_Usr);
            Params[1].AsString:=BoolToStr(lbcp4.Checked);
            Params[2].AsString:=BoolToStr(lbcp9.Checked);
            Params[3].AsString:=BoolToStr(lbcp11.Checked);
            Params[4].AsString:=BoolToStr(lbcp12.Checked);
            Params[5].AsString:=AXeditpassSQL;
            Params[6].AsString:=BoolToStr(lbcp14.Checked);
            Params[7].AsString:=BoolToStr(lbcp15.Checked);
            Params[8].AsString:=BoolToStr(lbcp16.Checked);
            Params[9].AsString:=BoolToStr(lbcp17.Checked);
            Params[10].AsString:=BoolToStr(lbcp18.Checked);
            Params[11].AsString:=lbcp2.Text;
            Params[12].Assign(lbcp3.Lines);
            if lbcp4.Checked then Params[13].AsInteger:=1
            else Params[13].AsInteger:=2;
            Params[14].AsInteger:=axcod;
        end;
     end;
     try
        dm3.executa.Execute;
     except
        StatusBar1.Panels.Items[0].Text:='Erro ao gravar os dados, tente novamente...';
        StatusBar1.Repaint;
        hwsf.BtMensagem('Erro ao gravar dados.');
        PageControl_principal.Enabled:=true;
        exit;
     end;
     Application.ProcessMessages;
     PageControl_principal.Enabled:=true;
     if axnew then begin
        TabSheet4.Caption:='Ficha cadastral da Conferência';
        cl_cod.Caption := IntToStr(axcod);
     end;
     StatusBar1.Panels.Items[0].Text:='Dados gravados com sucesso...';
     StatusBar1.Repaint;
     Result:=true;
     ConfirmUsrs();
end;

procedure Twebchat_conf.lbcp4Click(Sender: TObject);
begin
      Label2.Enabled:=false;
      Label4.Enabled:=false;
      lbcp6_date.Enabled:=false;
      lbcp6_time.Enabled:=false;
      TabSheet4.Caption:='Adicionar nova Conferência';
end;

procedure Twebchat_conf.lbcp5Click(Sender: TObject);
begin
      TabSheet4.Caption:='Agendar nova Conferência';
      Label2.Enabled:=true;
      Label4.Enabled:=true;
      lbcp6_date.Enabled:=true;
      lbcp6_time.Enabled:=true;
end;

procedure Twebchat_conf.lbcp9Click(Sender: TObject);
begin
      lbcp10.Enabled:=lbcp9.Checked;
end;

procedure Twebchat_conf.lbcp12Click(Sender: TObject);
begin
      lbcp13.Enabled:=lbcp12.Checked;
end;

procedure Twebchat_conf.AddConf;
begin
    xeditpass:=false;
    bt_del.Enabled:=false;
    bt_finale.Enabled:=false;
    cl_cod.Caption:='novo';
    lbcp2.Text:='';
    lbcp3.Clear;
    lbcp9.Checked:=true;
    lbcp11.Checked:=true;
    lbcp12.Checked:=false;
    lbcp13.Text:='';
    lbcp13.Enabled:=lbcp12.Checked;
    lbcp14.Checked:=false;
    lbcp15.Checked:=true;
    lbcp16.Checked:=true;
    lbcp17.Checked:=true;
    lbcp18.Checked:=false;
    StatusBar1.Panels.Items[0].Text:='Crie uma nova conferência, e adicione os usuários autorizados.';
    lbcp6_date.Date:=now;
    lbcp6_time.Time:=now;
    lbcp10.Time:=StrToTime('01:00:00');
    montalstUSR(true);
end;

procedure Twebchat_conf.bt_newClick(Sender: TObject);
begin
    AddConf;
    TabSheet4.Caption:='Adicionar nova Conferência';
    setFormView(true);
    PageControl_principal.TabIndex:=0;
    lbcp4.Checked:=true;
    lbcp2.SetFocus;
end;

procedure Twebchat_conf.bt_new2Click(Sender: TObject);
begin
    AddConf;
    TabSheet4.Caption:='Agendar nova Conferência';
    setFormView(true);
    PageControl_principal.TabIndex:=0;
    lbcp5.Checked:=true;
    lbcp2.SetFocus;
end;

procedure Twebchat_conf.DBGrid1CellClick(Column: TColumn);
begin
      AtualizaConf(1);
end;

procedure Twebchat_conf.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      AtualizaConf(1);
end;

procedure Twebchat_conf.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      AtualizaConf(1);
end;

procedure Twebchat_conf.DBGrid2CellClick(Column: TColumn);
begin
      AtualizaConf(2);
end;

procedure Twebchat_conf.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      AtualizaConf(2);
end;

procedure Twebchat_conf.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      AtualizaConf(2);
end;

procedure Twebchat_conf.DBGrid3CellClick(Column: TColumn);
begin
      AtualizaConf(3);
end;

procedure Twebchat_conf.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      AtualizaConf(3);
end;

procedure Twebchat_conf.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      AtualizaConf(3);
end;

procedure Twebchat_conf.FinalizeConf(xidFinaliz:Integer);
var axcod: integer;
begin
     try
     if (cl_cod.Caption = 'novo') then exit;
     PageControl_principal.Enabled:=false;
     StatusBar1.Panels.Items[0].Text:='Processando...';
     StatusBar1.Repaint;
     Application.ProcessMessages;
     with dm3.executa do begin
            axcod:=StrToInt(cl_cod.Caption);
            CommandText:= 'UPDATE '+dm3.LstTables.Table[14]+' SET cod_ent=:p0,'+
                          ' cp16='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+', xstat=:p1'+
                          ' WHERE codigo=:p2';
            Params[0].AsInteger:=StrToInt(dm3.axcod_Usr);
            Params[1].AsInteger:=xidFinaliz;
            Params[2].AsInteger:=axcod;
            try
                Execute;
            except
                StatusBar1.Panels.Items[0].Text:='Erro ao gravar dados, tente novamente...';
                StatusBar1.Repaint;
                hwsf.BtMensagem('Erro ao gravar dados.');
                PageControl_principal.Enabled:=true;
                exit;
            end;
     end;
     PageControl_principal.Enabled:=true;
     Application.ProcessMessages;
     StatusBar1.Panels.Items[0].Text:='Operação concluída com sucesso...';
     StatusBar1.Repaint;
     if xidFinaliz=0 then hwsf.BtMensagem('Conferência excluída com sucesso.')
     else if xidFinaliz=3 then hwsf.BtMensagem('Conferência finalizada com sucesso.');
     except
     end;
     BackPage(xidFinaliz);
end;

procedure Twebchat_conf.bt_delClick(Sender: TObject);
begin
     if not checkpassusr then exit;
     if not checkpassusr then exit;
     if hwsf.BtConfirma('Excluir Conferência '+lbcp2.Text+'?') then
        FinalizeConf(0);
end;

procedure Twebchat_conf.bt_finaleClick(Sender: TObject);
begin
     if not checkpassusr then exit;
     if hwsf.BtConfirma('Finalizar Conferência '+lbcp2.Text+'?') then
        FinalizeConf(3);
end;

procedure Twebchat_conf.DBGrid1_usrDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if dm3.ds_sql11.RecordCount=0 then exit;
      if dm3.ds_sql11.FieldByName('cp11').AsInteger=0 then DBGrid1_usr.Canvas.Font.Color := clRed
      else DBGrid1_usr.Canvas.Font.Color := clBlack;
      DBGrid1_usr.Canvas.FillRect(Rect);
      DBGrid1_usr.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure Twebchat_conf.DBGrid3_usrDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if dm3.ds_sql11.RecordCount=0 then exit;
      if dm3.ds_sql11.FieldByName('cp11').AsInteger=0 then DBGrid3_usr.Canvas.Font.Color := clRed
      else DBGrid3_usr.Canvas.Font.Color := clBlack;
      DBGrid3_usr.Canvas.FillRect(Rect);
      DBGrid3_usr.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure Twebchat_conf.bt_acessClick(Sender: TObject);
var axcnfNome,axcnfCod,axcnfSenhaTX:String;
    testUSRCODac,testUSRLocCount: Integer;
    axcnfSenha: Boolean;
begin
      if not dm3.ds_sql11.Active then exit;
      if dm3.ds_sql11.RecordCount=0 then begin
         hwsf.BtMensagem('Não existem usuários cadastrados para esta Conferência.');
         exit;
      end;
      if not dm3.ds_sql11.Locate('cod_usr',StrToInt(dm3.axcod_Usr),[]) then begin
         hwsf.BtMensagem('Seu Usuário não está autorizado para esta Conferência.');
         exit;
      end else begin
         //testUSRLocCOD:=dm3.ds_sql11.fieldbyname('cod_usr').AsInteger;
         testUSRCODac:=dm3.ds_sql11.fieldbyname('codigo').AsInteger;
         testUSRLocCount:=dm3.ds_sql11.fieldbyname('cp11').AsInteger+1;
         axcnfCod:=dm3.ds_sql3.fieldbyname('codigo').AsString;
         axcnfNome:=dm3.ds_sql3.fieldbyname('cp13').AsString;
         axcnfSenha:=StrToBool(dm3.ds_sql3.fieldbyname('cp6').AsString);
         if axcnfSenha then begin
            axcnfSenhaTX:=hwsf.BtDesc('Digite a senha para Acesso a Conferência:');
            axcnfSenhaTX:=MD5Hash(axcnfSenhaTX);
            if axcnfSenhaTX<>dm3.ds_sql3.fieldbyname('cp7').AsString then begin
               hwsf.BtMensagem('Autenticação Inválida!!!');
               exit;
            end;
         end;
         if not hwsf.BtConfirma('Entrar em Conferência?'+#13+axcnfNome) then exit;
         if dm3.ds_sql3.Active then dm3.ds_sql3.Close;
         if dm3.ds_sql11.Active then dm3.ds_sql11.Close;
         dm3.OpenConferencia(axcnfCod,axcnfNome,testUSRLocCount,testUSRCODac);
         Close;
      end;
end;

procedure Twebchat_conf.SelectUsrs(xselect:Boolean);
var xidusrlst,xcountusr: Integer;
begin
      xcountusr:=listUsrCheck.Items.Count;
      if xcountusr>0 then begin
         for xidusrlst:=0 to xcountusr-1 do
             listUsrCheck.Checked[xidusrlst]:=xselect;
      end;
end;

procedure Twebchat_conf.SpeedButton1Click(Sender: TObject);
begin
      SelectUsrs(true);
end;

procedure Twebchat_conf.SpeedButton2Click(Sender: TObject);
begin
      SelectUsrs(false);
end;

procedure Twebchat_conf.ConfirmUsrs();
var xidusrlst,xcountusr,axcodconf,axcodmod,xidSelectusr: Integer;
    xerrorusr: Boolean;
    tlistusrselect: TStringList;
    tsqldelusr: String;
    function LocationUsrLst(xcodidus:String):Boolean;
    var xidusrlst2: Integer;
    begin
         Result:=false;
         for xidusrlst2:=0 to tlistusrselect.Count-1 do
         if listCodUsr.Strings[StrToInt(tlistusrselect.Strings[xidusrlst2])]=xcodidus then begin
            tlistusrselect.Delete(xidusrlst2);
            Result:=true;
            break;
         end;
    end;
begin
      if (cl_cod.Caption='novo') then exit;
      If listUsrCheck.Items.Count=0 then begin
         hwsf.BtMensagem('Nenhum usuário localizado');
         exit;
      end;
      axcodconf:=StrToInt(cl_cod.Caption);
      xerrorusr:=false;
      tlistusrselect:= TStringList.Create;
      tlistusrselect.Clear;
      for xidusrlst:=0 to listUsrCheck.Items.Count-1 do
      if listUsrCheck.Checked[xidusrlst] then begin
         tlistusrselect.Add(IntToStr(xidusrlst));
      end;
      xcountusr:=tlistusrselect.Count;
      if xcountusr>0 then begin
         tsqldelusr:='';
         With dm3.ds_sql5 do begin
             if not Active then begin
                 CommandText:= 'SELECT A.codigo,A.cod_usr,A.cod_cnf,A.tp_usr,A.cp10,A.cp11,A.xtp,B.cp3,B.cp13,B.cp37,B.xtp FROM '+
                               dm3.LstTables.Table[15]+' A,'+
                               dm3.LstTables.Table[5]+' B'+
                               ' WHERE B.codigo=A.cod_usr'+
                               ' AND B.cod_ent='+#39+dm3.axcod_web+#39+
                               ' AND A.cod_cnf='+#39+IntToStr(axcodconf)+#39+
                               ' ORDER BY B.cp3';
                 Open;
             end;
             if RecordCount>0 then begin
                First;
                While not Eof do begin
                    if not LocationUsrLst(fieldbyname('cod_usr').AsString) then begin
                       if tsqldelusr<>'' then tsqldelusr:=tsqldelusr+' AND ';
                       tsqldelusr:=tsqldelusr+'cod_usr='+#39+fieldbyname('cod_usr').AsString+#39;
                    end;
                    Next;
                end;
             end;
             if tsqldelusr<>'' then begin
                try
                   with dm3.executa do begin
                        CommandText:= 'DELETE FROM '+dm3.LstTables.Table[15]+
                                      ' WHERE cod_cnf='+#39+IntToStr(axcodconf)+#39+' AND ('+tsqldelusr+')';
                        Execute;
                   end;
                except
                   xerrorusr:=true;
                end;
             end;
             xcountusr:=tlistusrselect.Count;
             if xcountusr>0 then begin
                for xidusrlst:=0 to xcountusr-1 do begin
                    try
                       axcodmod:=dm3.GetCodMax(dm3.LstTables.Table[15],'codigo','');
                       xidSelectusr:=StrToInt(tlistusrselect.Strings[xidusrlst]);
                       with dm3.executa do begin
                            CommandText:= 'INSERT INTO '+dm3.LstTables.Table[15]+' (codigo, cod_cnf, cod_usr, tp_usr, cp11, xtp) '+
                                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5)';
                            Params[0].AsInteger:=axcodmod;
                            Params[1].AsInteger:=axcodconf;
                            Params[2].AsInteger:=StrToInt(listCodUsr.Strings[xidSelectusr]);
                            Params[3].AsInteger:=0;
                            Params[4].AsInteger:=0;
                            Params[5].AsString:=listXtpUsr.Strings[xidSelectusr];
                            Execute;
                       end;
                    except
                       xerrorusr:=true;
                    end;
                end;
             end;
         end;
         tlistusrselect.Free;
      end else begin
          try
             with dm3.executa do begin
                  CommandText:= 'DELETE FROM '+dm3.LstTables.Table[15]+
                                ' WHERE cod_cnf=:p0';
                  Params[0].AsInteger:=axcodconf;
                  Execute;
             end;
          except
             xerrorusr:=true;
          end;
      end;
      if xerrorusr then
         hwsf.BtMensagem('Ocorreu um erro ao salvar a lista de usuários, tente novamente.')
      else BackPage(1);
end;

procedure Twebchat_conf.SpeedButton3Click(Sender: TObject);
begin
     if hwsf.BtConfirma('Salvar Conferência '+lbcp2.Text+'?') then
        btGravardados();
end;

procedure Twebchat_conf.SpeedButton4Click(Sender: TObject);
begin
    if hwsf.BtConfirma('Fechar edição?') then
       BackPage(2); 
end;

procedure Twebchat_conf.lbcp13Change(Sender: TObject);
begin
      xeditpass:=true;
end;

procedure Twebchat_conf.bt_emailClick(Sender: TObject);
begin
    if not checkpassusr then exit;

end;

procedure Twebchat_conf.bt_viewClick(Sender: TObject);
begin
      if not checkpassusr then exit;
end;

procedure Twebchat_conf.bt_printClick(Sender: TObject);
begin
      if not checkpassusr then exit;
end;

procedure Twebchat_conf.bt_exportClick(Sender: TObject);
begin
      if not checkpassusr then exit;
end;

procedure Twebchat_conf.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

procedure Twebchat_conf.DBGrid1DblClick(Sender: TObject);
begin
      if bt_acess.Enabled then bt_acess.Click;
end;

end.
