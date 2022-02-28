unit uwebchat_msgMonitor;

interface

uses
  Classes, SysUtils, Forms, Windows;

type
  MsgMonitor = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure ReceiveMessageHWSMonitor;
  public
    InExcec: Boolean;
    xdtenvRead: String;
  end;

implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher, uwebchat_menu, RxRichEd;

procedure MsgMonitor.ReceiveMessageHWSMonitor;
var xiniCool, VvalidUser: Boolean;
    VusrName,VusrXtp,VusrStatCaption,VusrTable: String;//,xVmscHWS
    VusrCod, VusrStat, VusrType: Integer;
    //conf
    axcnfCod,axcnfNome,axcnfSenhaTX: String;
    testUSRLocCount,testUSRCODac:Integer;
    axcnfSenha: Boolean;
    axListUsrAX: String;
    HprevHist : HWND;
begin
      Application.ProcessMessages;
      if InExcec then exit;
      if not webchat_menu.ConnectionActive then
         exit;
      InExcec:=true;
      xiniCool:=false;
      try
         with dm3.ds_sql8 do begin
              Application.ProcessMessages;
              VvalidUser:=false;
              if Active then Close;
              CommandText:= 'SELECT '+
                            'A.codigo,A.cod_msg,A.cod_usrb,A.tp_usrb,A.cp11,A.xtp,'+
                            'B.codigo,B.cod_ent,B.cod_usra,B.tp_usra,'+
                            'C.cp3,C.cp37'+
                            ' FROM '+
                            dm3.LstTables.Table[7]+' A, '+ //dest
                            dm3.LstTables.Table[6]+' B, '+ //msg
                            dm3.LstTables.Table[5]+' C '+ //msg
                            'WHERE A.cod_usrb='+#39+dm3.axcod_Usr+#39+
                            ' AND A.tp_usrb=0'+
                            ' AND B.tp_usra=0'+
                            //' AND B.cp2<>5'+
                            ' AND A.cp11='+#39+'0'+#39+
                            ' AND B.codigo=A.cod_msg'+
                            ' AND C.codigo=B.cod_usra'+
                            ' limit 0, 1';
                            //' AND A.xtp='+#39+dm3.axparmSAC+#39+
                            //xVmscHWS+
              Open;
              Application.ProcessMessages;
              VvalidUser:=(RecordCount>0);
              if VvalidUser then begin
                 VusrXtp:=fieldbyname('xtp').AsString;
                 VusrCod:=fieldbyname('cod_usra').AsInteger;
                 VusrType:=fieldbyname('tp_usra').AsInteger;
                 VusrName:=fieldbyname('cp3').AsString;
                 VusrStat:=fieldbyname('cp37').AsInteger;
                 Case VusrStat of
                      1: VusrStatCaption:='Ocupado';
                      2: VusrStatCaption:='Ausente';
                      3: VusrStatCaption:='Desconectado';
                 End;
              end;
              Close;
              if VvalidUser then
                 dm3.OpenChat(false,VusrName,VusrXtp,VusrStatCaption,VusrCod,VusrStat,VusrType);

              if not VvalidUser then begin
              if Active then Close;
              CommandText:= 'SELECT '+
                            'A.codigo,A.cod_msg,A.cod_usrb,A.tp_usrb,A.cp11,A.xtp,'+
                            'B.codigo,B.cod_ent,B.cod_usra,B.tp_usra,'+
                            'C.cp3,C.cp37'+
                            ' FROM '+
                            dm3.LstTables.Table[7]+' A, '+ //dest
                            dm3.LstTables.Table[6]+' B, '+ //msg
                            dm3.LstTables.Table[12]+' C '+ //msg
                            'WHERE A.cod_usrb='+#39+dm3.axcod_Usr+#39+
                            ' AND A.tp_usrb=0'+
                            ' AND B.tp_usra=1'+
                            //' AND B.cp2<>5'+
                            ' AND A.cp11='+#39+'0'+#39+
                            ' AND B.codigo=A.cod_msg'+
                            ' AND C.codigo=B.cod_usra'+
                            ' limit 0, 1';
                            //' AND A.xtp='+#39+dm3.axparmSAC+#39+
                            //xVmscHWS+
              Open;
              Application.ProcessMessages;
              VvalidUser:=(RecordCount>0);
              if VvalidUser then begin
                 VusrXtp:=fieldbyname('xtp').AsString;
                 VusrCod:=fieldbyname('cod_usra').AsInteger;
                 VusrType:=fieldbyname('tp_usra').AsInteger;
                 VusrName:=fieldbyname('cp3').AsString;
                 VusrStat:=fieldbyname('cp37').AsInteger;
                 Case VusrStat of
                      1: VusrStatCaption:='Ocupado';
                      2: VusrStatCaption:='Ausente';
                      3: VusrStatCaption:='Desconectado';
                 End;
              end;
              Close;
              if VvalidUser then
                 dm3.OpenChat(false,VusrName,VusrXtp,VusrStatCaption,VusrCod,VusrStat,VusrType);
              end;

              if not VvalidUser then begin
                HprevHist := FindWindow(Nil, PChar('HWSsac Conferências'));
                if (HprevHist = 0) then begin
                 if webchat_menu.axListUsr<>'' then axListUsrAX:='('+webchat_menu.axListUsr+')'
                 else axListUsrAX:='';
                 CommandText:='SELECT A.codigo,A.codigo,A.cod_web,A.cod_ent,A.cp6,A.cp7,A.cp13,A.cp14,B.codigo,B.cod_usr,B.cp10,B.cp11 FROM '+
                               dm3.LstTables.Table[14]+' A, '+
                               dm3.LstTables.Table[15]+' B '+
                              ' WHERE B.cod_cnf=A.codigo'+
                              ' AND A.xstat=1'+
                              ' AND B.cod_usr='+#39+dm3.axcod_Usr+#39+
                              //' AND A.cod_ent<>'+#39+dm3.axcod_Usr+#39+
                              ' AND B.tp_usr=0'+
                              ' AND ((B.cp10<(NOW()-120)) OR (B.cp10 is null))'+
                              webchat_menu.axListUsr;
                 Open;
                 VvalidUser:=(RecordCount>0);
                 if VvalidUser then begin
                    testUSRLocCount:=fieldbyname('cp11').AsInteger+1;
                    VvalidUser:=(testUSRLocCount=1);
                    if webchat_menu.axListUsr<>'' then
                       webchat_menu.axListUsr:=webchat_menu.axListUsr+' AND';
                    webchat_menu.axListUsr:=webchat_menu.axListUsr+' A.codigo<>'+#39+axcnfCod+#39;
                 end;
                 if VvalidUser then begin
                    axcnfNome:=fieldbyname('cp13').AsString;
                    if hwsf.BtConfirma('CONVITE: Entrar em Conferência?'+#13+axcnfNome) then begin
                    axcnfCod:=fieldbyname('codigo').AsString;
                    testUSRCODac:=fieldbyname('codigo_2').AsInteger;
                    axcnfSenha:=StrToBool(fieldbyname('cp6').AsString);
                    if axcnfSenha then begin
                       axcnfSenhaTX:=hwsf.BtDesc('Digite a senha para Acesso a Conferência:');
                       axcnfSenhaTX:=MD5Hash(axcnfSenhaTX);
                       axcnfSenha:=(axcnfSenhaTX<>fieldbyname('cp7').AsString);
                       if axcnfSenha then
                          hwsf.BtMensagem('Autenticação Inválida!!!');
                    end;
                    if not axcnfSenha then
                       dm3.OpenConferencia(axcnfCod,axcnfNome,testUSRLocCount,testUSRCODac);
                    end;
                 end;
                end;
              end;
              xiniCool:=true;
         end;
      except
         xiniCool:=false;
      end;
      Application.ProcessMessages;
      InExcec:=false;
      webchat_menu.inExecMonitor:=false;
end;

procedure MsgMonitor.Execute;
begin
      if (not InExcec) then
          synchronize(ReceiveMessageHWSMonitor);
end;

end.
 