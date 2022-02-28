unit uwebchat_dadoscad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls, AppEvnts;

type
  Twebchat_dadoscad = class(TForm)
    GroupBox4: TGroupBox;
    ScrollBox3: TScrollBox;
    Panel5: TPanel;
    Panel10: TPanel;
    Label25: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    lbcp_dtcad2: TLabel;
    xcodigo2: TLabeledEdit;
    xcpw6: TLabeledEdit;
    xcpw7: TLabeledEdit;
    xcpw7_ax: TLabeledEdit;
    Panel12: TPanel;
    xcpw9: TLabeledEdit;
    xcpw3: TLabeledEdit;
    xcpw5: TLabeledEdit;
    xcpw22: TLabeledEdit;
    xcpw23: TLabeledEdit;
    Panel13: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    xcpw24: TLabeledEdit;
    xcpw24_ax: TComboBox;
    xcpw25_ax: TComboBox;
    xcpw25: TLabeledEdit;
    Panel14: TPanel;
    Label31: TLabel;
    SpeedButton8: TSpeedButton;
    Label33: TLabel;
    Label32: TLabel;
    xcpw4: TDateTimePicker;
    xcpw10: TLabeledEdit;
    xcpw11: TLabeledEdit;
    xcpw12: TLabeledEdit;
    xcpw13: TLabeledEdit;
    xcpw16: TLabeledEdit;
    xcpw15: TLabeledEdit;
    xcpw17: TLabeledEdit;
    xcpw18_axuf: TLabeledEdit;
    xcpw18_ax: TComboBox;
    xcpw19: TLabeledEdit;
    xcpw31: TCheckBox;
    xcpw27: TMemo;
    Panel11: TPanel;
    xcpw8: TLabeledEdit;
    ToolBar4: TToolBar;
    Panel6: TPanel;
    bt_save2: TSpeedButton;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    xcpw18: Integer;
    procedure monta_tableUsr;
    procedure atualiza_dadosusr;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  webchat_dadoscad: Twebchat_dadoscad;

implementation
uses udm3, hwsfunctions, U_Cipher, uwebchat_menu;

{$R *.dfm}

procedure Twebchat_dadoscad.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
     dm3.ds_sql4.Close;
     loadx.Progressloading.position:=50;
     dm3.executa7.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Twebchat_dadoscad.FormCreate(Sender: TObject);
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
      monta_tableUsr;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Close;
end;

procedure Twebchat_dadoscad.monta_tableUsr;
begin
     //cidades
     loadx.Progressloading.position:=25;
     With dm3.executa5 do begin
        CommandText:='SELECT codigo,cidade,uf FROM '+dm3.LstTables.Table[3]+' ORDER BY cidade';
        Open;
        loadx.Progressloading.position:=50;
        First;
        xcpw18_ax.Clear;
        While not Eof do begin
            xcpw18_ax.Items.Add(fieldbyname('cidade').AsString);
            Next;
        end;
        loadx.Progressloading.position:=75;
     end;
     With dm3.ds_sql4 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,cod_ent,cp3,cp4,cp5,'+
                      'cp6,cp10,cp11,cp12,cp13,cp15,cp16,cp17,cp18,cp19,cp22,cp23,cp24,cp25,'+
                      'cp27,cp28,cp29,cp30,cp31,cp32,cp33 FROM '+dm3.LstTables.Table[5]+
                      ' WHERE cod_ent='+#39+dm3.axcod_web+#39+
                      ' AND codigo='+#39+dm3.axcod_Usr+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=100;
     atualiza_dadosusr;
end;

procedure Twebchat_dadoscad.atualiza_dadosusr;
begin
     if dm3.ds_sql4.RecordCount <= 0 then begin
         hwsf.BtMensagem('Dados inválidos');
         close;
     end else begin
         xcpw18:=0;
         with dm3.ds_sql4 do begin
            if xcodigo2.Text=fieldbyname('codigo').AsString then exit;
            xcodigo2.Text:=fieldbyname('codigo').AsString;
            xcpw3.Text:= fieldbyname('cp3').AsString;
            xcpw4.Date:= fieldbyname('cp4').AsDateTime;
            xcpw5.Text:= fieldbyname('cp5').AsString;
            xcpw6.Text:= fieldbyname('cp6').AsString;
            xcpw7.Text:= '';
            xcpw7_ax.Text:= '';
            xcpw8.Text:= '';
            xcpw9.Text:= '';
            xcpw10.Text:= fieldbyname('cp10').AsString;
            xcpw11.Text:= fieldbyname('cp11').AsString;
            xcpw12.Text:= fieldbyname('cp12').AsString;
            xcpw13.Text:= fieldbyname('cp13').AsString;
            xcpw15.Text:= fieldbyname('cp15').AsString;
            xcpw16.Text:= fieldbyname('cp16').AsString;
            xcpw17.Text:= fieldbyname('cp17').AsString;
            xcpw18:= fieldbyname('cp18').AsInteger;
            if dm3.executa5.Locate('codigo',xcpw18,[]) then begin
               xcpw18_ax.Text:=dm3.executa5.fieldbyname('cidade').AsString;
               xcpw18_axuf.Text:=dm3.executa5.fieldbyname('uf').AsString;
            end else begin
               xcpw18_ax.Text:='';
               xcpw18_axuf.Text:='';
            end;
            xcpw19.Text:= fieldbyname('cp19').AsString;
            xcpw22.Text:= fieldbyname('cp22').AsString;
            xcpw23.Text:= fieldbyname('cp23').AsString;
            xcpw24.Text:= fieldbyname('cp24').AsString;
            xcpw25.Text:= fieldbyname('cp25').AsString;
            xcpw27.Lines.Assign(fieldbyname('cp27'));
            xcpw31.Checked:= StrToBool(fieldbyname('cp31').AsString);
            {if fieldbyname('cp32').AsString = 'B' then lbcp_rb2.Checked:=true
            else if fieldbyname('cp32').AsString = 'X' then lbcp_rb3.Checked:=true
            else lbcp_rb1.Checked:=true;}
            //xcpw33.Checked:= StrToBool(fieldbyname('cp33').AsString);
            lbcp_dtcad2.Caption:= fieldbyname('cp28').AsString;
         end;
         //monta_HistDown;
     end;
end;

procedure Twebchat_dadoscad.bt_save2Click(Sender: TObject);
var axcod,axsqlid,axforid,axsqlidx1,axsqlidx2,axsqlidx3: integer;
    axmntquy,axmd5pass: String;
    varupdtPass,varupdtFrase,varupdtDica: Boolean;
    AUXxcpw6,AUXxcpw7:String;
    function axsqlidADD():Integer;
    begin
        Result:=axsqlid;
        Inc(axsqlid);
    end;
begin
     varupdtPass:=false;
     if Length(xcpw6.Text) < 4 then begin
        hwsf.BtMensagem('O nome do usuário tem que ser maior ou igual a 4 digitos.');
        xcpw6.SelectAll;
        xcpw6.SetFocus;
        exit;
     end;
     AUXxcpw6:=FilterCharsHWS(xcpw6.Text,['A'..'Z', 'a'..'z', '0'..'9']);
     if (xcpw6.Text<>AUXxcpw6) then begin
        hwsf.BtMensagem('O nome do Usuário possue digitos Invádos.'+#13+'Permidido: "A..Z", "a..z" e "0..9"');
        xcpw6.SelectAll;
        xcpw6.SetFocus;
        exit;
     end;
     if xcodigo2.Text = 'novo' then begin
        if Length(xcpw7.Text) < 4 then begin
           hwsf.BtMensagem('A Senha tem que ser maior ou igual a 4 digitos.');
           xcpw7.SelectAll;
           xcpw7.SetFocus;
           exit;
        end;
     end else begin
        if xcpw7.Text <> '' then
        if not hwsf.BtConfirma('Tem certeza que deseja mudar a Senha?') then
           xcpw7.Text:='';
     end;
     if xcpw7.Text <> '' then begin
        if xcpw7.Text <> xcpw7_ax.Text then begin
           hwsf.BtMensagem('As senhas digitadas não são iguais.');
           xcpw7.SelectAll;
           xcpw7.SetFocus;
           exit;
        end;
        AUXxcpw7:=FilterCharsHWS(xcpw7.Text,['A'..'Z', 'a'..'z', '0'..'9']);
        if (xcpw7.Text<>AUXxcpw7) then begin
           hwsf.BtMensagem('Sua Senha possue digitos Invádos.'+#13+'Permidido: "A..Z", "a..z" e "0..9"');
           xcpw7.SelectAll;
           xcpw7.SetFocus;
           exit;
        end;
     end;
     if xcpw3.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a Razão Social.');
        xcpw3.SelectAll;
        xcpw3.SetFocus;
        exit;
     end;
     if xcpw5.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o nome do Responsável.');
        xcpw5.SelectAll;
        xcpw5.SetFocus;
        exit;
     end;
     if xcpw13.Text='' then begin
        hwsf.BtMensagem('É necessário digitar um e-mail válido.');
        xcpw13.SelectAll;
        xcpw13.SetFocus;
        exit;
     end else if not Verifyemail(xcpw13.Text) then begin
        hwsf.BtMensagem('Formato de ['+xcpw13.Text+'] e-mail inválido.');
        xcpw13.SelectAll;
        xcpw13.SetFocus;
        exit;
     end;
     if not hwsf.BtConfirma('Alterar dados cadastrais do usuário?') then exit;
     try
        if (xcpw16.Text = '') then axsqlidx1:=0
        else axsqlidx1:=StrtoInt(xcpw16.Text);
     except
        axsqlidx1:=0;
     end;
     try
        if (xcpw24.Text = '') then axsqlidx1:=0
        else axsqlidx2:=StrtoInt(xcpw24.Text);
     except
        axsqlidx2:=0;
     end;
     try
        if (xcpw25.Text = '') then axsqlidx1:=0
        else axsqlidx3:=StrtoInt(xcpw25.Text);
     except
        axsqlidx3:=0;
     end;

     With dm3.executa4 do begin
        if Active then Close;
        if xcodigo2.Text = 'novo' then begin
           axmntquy := '(cp6 = '+#39+xcpw6.Text+#39+')'+
                       ' OR (cp13 = '+#39+xcpw13.Text+#39+')'+
                       ' OR (cp5 = '+#39+xcpw5.Text+#39+')';
        end else begin
           axmntquy := '';
           if (xcpw6.Text <> dm3.ds_sql4.FieldByName('cp6').AsString) then begin
              if axmntquy <> '' then  axmntquy := axmntquy + ' OR ';
              axmntquy := '(cp6 = '+#39+xcpw6.Text+#39+')';
           end;
           if (xcpw5.Text <> dm3.ds_sql4.fieldbyname('cp5').AsString) then begin
              if axmntquy <> '' then  axmntquy := axmntquy + ' OR ';
              axmntquy :=  '(cp5 = '+#39+xcpw5.Text+#39+')';
           end;
           if (xcpw13.Text <> dm3.ds_sql4.fieldbyname('cp13').AsString) then begin
              if axmntquy <> '' then  axmntquy := axmntquy + ' OR ';
              axmntquy :=  '(cp13 = '+#39+xcpw13.Text+#39+')';
           end;
        end;
        if axmntquy <> '' then begin
           axmntquy := '('+axmntquy +' AND cod_ent='+#39+dm3.axcod_web+#39+')';

          CommandText:= 'SELECT codigo,cp5,cp13 FROM '+dm3.LstTables.Table[5]+
                            ' WHERE '+ axmntquy;
          Open;
          if Fields[1].AsString <> '' then begin
             if (Fields[2].AsString = xcpw13.Text) then begin
                 hwsf.BtMensagem('e-mail já cadastrado.');
                 xcpw13.SelectAll;
                 xcpw13.SetFocus;
             end else if (Fields[1].AsString = xcpw5.Text) then begin
                 hwsf.BtMensagem('Apelido já cadastrado.');
                 xcpw13.SelectAll;
                 xcpw13.SetFocus;
             end else begin
                 hwsf.BtMensagem('Usuário já cadastrado.');
                 xcpw6.Text := '';
                 xcpw7.Text := '';
                 xcpw6.SetFocus;
             end;
             Close;
             exit;
          end else Close;
        end;
     end;
     axcod:=StrtoInt(xcodigo2.Text);
     with dm3.executa do begin
            axmntquy :='UPDATE '+dm3.LstTables.Table[5]+' SET cp3=:p0,'+
            'cp4='+#39+FormatDateTime('yyyymmdd',xcpw4.Date)+' 00:00:00'+#39+','+
            'cp5=:p1,cp6=:p2,';
            axsqlid:=3;
            varupdtPass:=(xcpw7.Text <> '');
            if varupdtPass then
              axmntquy := axmntquy+'cp7=:p'+IntToStr(axsqlidADD)+',';
            varupdtFrase:=(xcpw8.Text <> '');
            if varupdtFrase then
              axmntquy := axmntquy+'cp8=:p'+IntToStr(axsqlidADD)+',';
            varupdtDica:= (xcpw9.Text <> '');
            if varupdtDica then
              axmntquy := axmntquy+'cp9=:p'+IntToStr(axsqlidADD)+',';
            for axforid:=10 to 13 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            for axforid:=15 to 19 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            for axforid:=22 to 25 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axforid:=27;
            axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axmntquy := axmntquy+'cp30=NOW(),';
            axforid:=32;
            axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD);
            axmntquy := axmntquy+' WHERE codigo=:p'+IntToStr(axsqlid);
            CommandText:= axmntquy;
            axsqlid:=0;
            Params[axsqlidADD].AsString:=xcpw3.Text;
            Params[axsqlidADD].AsString:=xcpw5.Text;
            Params[axsqlidADD].AsString:=xcpw6.Text;

            if varupdtPass then begin
              Params[axsqlidADD].AsString:=MD5Hash(xcpw7.Text);
            end;
            if varupdtFrase then begin
              Params[axsqlidADD].AsString:=xcpw8.Text;
            end;
            if varupdtDica then
              Params[axsqlidADD].AsString:=xcpw9.Text;
            Params[axsqlidADD].AsString:=xcpw10.Text;
            Params[axsqlidADD].AsString:=xcpw11.Text;
            Params[axsqlidADD].AsString:=xcpw12.Text;
            Params[axsqlidADD].AsString:=xcpw13.Text;
            Params[axsqlidADD].AsString:=xcpw15.Text;
            Params[axsqlidADD].AsInteger:=axsqlidx1;
            Params[axsqlidADD].AsString:=xcpw17.Text;
            Params[axsqlidADD].AsInteger:=xcpw18;
            Params[axsqlidADD].AsString:=xcpw19.Text;
            Params[axsqlidADD].AsString:=xcpw22.Text;
            Params[axsqlidADD].AsString:=xcpw23.Text;
            Params[axsqlidADD].AsInteger:=axsqlidx2;
            Params[axsqlidADD].AsInteger:=axsqlidx3;
            Params[axsqlidADD].Assign(xcpw27.Lines);
            Params[axsqlidADD].AsString:=BoolToStr(xcpw31.Checked);
            Params[axsqlidADD].AsInteger:=axcod;
     end;
     try
          dm3.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm3.ax_UsrName:=xcpw3.Text;
     if varupdtPass then
        Controlcnfg.vrf17:= EnDecryptString(xcpw7.Text,15187);
     Controlcnfg.vrf16:= EnDecryptString(xcpw6.Text,23654);
     dm3.winsysreg(2,false,false);
     hwsf.BtMensagem('Dados gravados com sucesso.');
     Close;
end;

procedure Twebchat_dadoscad.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
