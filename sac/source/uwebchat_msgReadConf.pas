unit uwebchat_msgReadConf;

interface

uses
  Classes, SysUtils, Forms;

type
  MsgReadConf = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure ReceiveMessageHWS;
  public
    axcodConf: String;
  end;

implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher, uwebchat_admsac, RxRichEd;

procedure MsgReadConf.ReceiveMessageHWS;
var xiniCool,VvalidUserAX: Boolean;
    axResulCodIT,xcodcdIDmsg:Integer;
    AxMsgSRead1,AxMsgMRead2: TStringList;
    AxMsgMRead3: TMemoryStream;
    xVmscHWS2: String;

    VusrNameAX,VusrStatCaptionAX,xdtenvRead: String;
    VusrCodAX,VusrStatAX,xtypeMsgID: Integer;
begin
      //Application.ProcessMessages;
      try
         xiniCool:=false;
         with dm3.ds_sql8 do begin
              {if webchat_menu.axcod_web = '2' then xVmscHWS2:=''
              else xVmscHWS2:=' AND (B.cod_ent='+#39+webchat_menu.axcod_web+#39+
                             ' OR B.cod_ent='+#39+'2'+#39+')';}
              //xVmscHWS2:=' AND B.cod_ent='+#39+dm3.axcod_web+#39;
              if Active then Close;
              CommandText:= 'SELECT '+
                            'A.codigo,A.cod_msg,A.cod_usrb,A.tp_usrb,A.cp10,A.cp11,A.cp12,A.xtp,'+
                            'B.codigo,B.cod_ent,B.cod_usra,B.tp_usra,B.cod_sec,B.cp1,B.cp2,B.cp3,B.cp4,B.cp5,B.cp6,B.cp7,B.xtp,'+
                            'C.cp3,C.cp37'+
                            ' FROM '+
                            dm3.LstTables.Table[17]+' A, '+ //dest
                            dm3.LstTables.Table[16]+' B, '+ //msg
                            dm3.LstTables.Table[5]+' C '+ //msg
                            'WHERE A.cod_usrb='+#39+dm3.axcod_Usr+#39+
                            ' AND A.tp_usrb=0'+
                            //' AND B.cp2<>5'+
                            //' AND A.xtp='+#39+dm3.axparmSAC+#39+
                            ' AND B.cod_cnf='+#39+axcodConf+#39+
                            //xVmscHWS2+
                            ' AND A.cp11='+#39+'0'+#39+
                            ' AND B.codigo=A.cod_msg'+
                            ' AND C.codigo=B.cod_usra'+
                            ' limit 0, 20';
              Open;
              if (recordCount>0) then begin
                  AxMsgSRead1:= TStringList.Create;
                  AxMsgMRead2:= TStringList.Create;
                  AxMsgMRead3:= TMemoryStream.Create;
                  First;
                  While not Eof do begin
                     AxMsgSRead1.Clear;
                     VusrCodAX:=fieldbyname('cod_usra').AsInteger;
                     xcodcdIDmsg:=fieldbyname('codigo').AsInteger;
                     AxMsgSRead1.Add(fieldbyname('codigo').AsString);
                     AxMsgSRead1.Add(fieldbyname('cod_msg').AsString);
                     AxMsgSRead1.Add(fieldbyname('cod_sec').AsString);
                     AxMsgSRead1.Add(fieldbyname('cod_usra').AsString);
                     AxMsgSRead1.Add(fieldbyname('tp_usra').AsString);
                     AxMsgSRead1.Add(fieldbyname('cp1').AsString);
                     AxMsgSRead1.Add(fieldbyname('cp2').AsString);
                     AxMsgSRead1.Add(fieldbyname('cp3').AsString);
                     AxMsgSRead1.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss',fieldbyname('cp6').AsDateTime));
                     AxMsgSRead1.Add(fieldbyname('cp12').AsString);
                     //Tipo mensagem (0-text,1-rich,2-link,3-linkopen,4-imagem,5-email,6-Chamar atenção)
                     xtypeMsgID:=fieldbyname('cp2').AsInteger;
                     //msg txt
                     AxMsgMRead2.Clear;
                     if xtypeMsgID=0 then
                        AxMsgMRead2.Assign(fieldbyname('cp5'));
                     //sent msg Blb
                     AxMsgMRead3.Clear;
                     AxMsgMRead3.Position:=0;
                     if xtypeMsgID=1 then begin
                        TBlobField(fieldbyname('cp4')).SaveToStream(AxMsgMRead3);
                        AxMsgMRead3.Position:=0;
                        AxMsgMRead3:=EnDecryptStream(AxMsgMRead3,36521);
                        AxMsgMRead3.Position:=0;
                     end;
                        VusrNameAX:=fieldbyname('cp3_1').AsString;
                        VusrStatAX:=fieldbyname('cp37').AsInteger;
                        Case VusrStatAX of
                           1: VusrStatCaptionAX:='Ocupado';
                           2: VusrStatCaptionAX:='Ausente';
                           3: VusrStatCaptionAX:='Desconectado';
                        End;
                     if (xcodcdIDmsg>0) then
                        axResulCodIT:=dm3.SetCountSec5('4658843',dm3.LstTables.Table[17],IntToStr(xcodcdIDmsg),xdtenvRead)
                     else axResulCodIT:=0;
                     if axResulCodIT > 0 then
                        xiniCool:=webchat_admsac.ReadMenssager(AxMsgMRead2,AxMsgSRead1,AxMsgMRead3,VusrNameAX,VusrStatCaptionAX,xdtenvRead,VusrCodAX,VusrStatAX,xtypeMsgID);
                    Next;
                    Application.ProcessMessages;
                  end;
              end;
              Close;
         end;
      except
         xiniCool:=false;
      end;
      webchat_admsac.xMsgReadThConfINI:=false;
      Application.ProcessMessages;
end;

procedure MsgReadConf.Execute;
begin
      synchronize(ReceiveMessageHWS);
end;


end.
