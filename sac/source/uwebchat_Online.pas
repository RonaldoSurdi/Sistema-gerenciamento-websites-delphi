unit uwebchat_Online;

interface

uses
  Classes, SysUtils, Forms;

type
  OnLine = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure ReceiveOnLine;
  public
    InExcec, InDigt, xOnLine:Boolean;
    xmsgLst,xmsgLstCnfg:TStringList;
    xtypeMsgID: Integer;
    xmsgStr:TMemoryStream;
    xdtenvRead, axcodURSa, axcodTPSa, axTPSa: String;
  end;

var iCfrm: Boolean;

implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher, uwebchat_menu, RxRichEd;

procedure OnLine.ReceiveOnLine;
var xiniCool: Boolean;
    axResulCodIT,xcodcdIDmsg:Integer;
    AxMsgSRead1,AxMsgMRead2: TStringList;
    AxMsgMRead3: TMemoryStream;
    xVmscHWS2: String;
begin
      Application.ProcessMessages;
      if InExcec or xOnLine then exit;
      InExcec:=true;
      xiniCool:=false;
      try
         with dm3.ds_sql8 do begin
              Application.ProcessMessages;
              if webchat_menu.axcod_web = '2' then xVmscHWS2:=''
              else xVmscHWS2:=' AND (B.cod_ent='+#39+webchat_menu.axcod_web+#39+
                             ' OR B.cod_ent='+#39+'2'+#39+')';
              if Active then Close;
              CommandText:= 'SELECT '+
                            'A.codigo,A.cod_msg,A.cod_usrb,A.tp_usrb,A.cp10,A.cp11,A.cp12,A.xtp,'+
                            'B.codigo,B.cod_ent,B.cod_usra,B.tp_usra,B.cod_sec,B.cp1,B.cp2,B.cp3,B.cp4,B.cp5,B.cp6,B.cp7,B.xtp'+
                            ' FROM '+
                            webchat_menu.LstTables.Table[7]+' A, '+ //dest
                            webchat_menu.LstTables.Table[6]+' B '+ //msg
                            'WHERE A.cod_usrb='+#39+webchat_menu.axcod_Usr+#39+
                            ' AND A.xtp='+#39+webchat_menu.axparmSAC+#39+
                            xVmscHWS2+
                            ' AND B.cod_usra='+#39+axcodURSa+#39+
                            ' AND B.tp_usra='+#39+axcodTPSa+#39+
                            ' AND B.xtp='+#39+axTPSa+#39+
                            ' AND A.cp11='+#39+'0'+#39+
                            ' AND B.codigo=A.cod_msg'+
                            ' limit 0, 1';
              Open;
              Application.ProcessMessages;
              if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then begin
                 AxMsgSRead1:= TStringList.Create;
                 AxMsgMRead2:= TStringList.Create;
                 AxMsgMRead3:= TMemoryStream.Create;
                 AxMsgSRead1.Clear;
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
                 xiniCool:=true;
              end;
              Application.ProcessMessages;
              Close;
              Application.ProcessMessages;
         end;
      except
         xiniCool:=false;
      end;
      if xiniCool and (xcodcdIDmsg>0) then
         axResulCodIT:=dm3.SetCountSec5('4658843',webchat_menu.LstTables.Table[7],IntToStr(xcodcdIDmsg),xdtenvRead);
      if axResulCodIT > 0 then begin
         xmsgLst.Clear;
         xmsgLst:=AxMsgMRead2;
         xmsgLstCnfg.Clear;
         xmsgLstCnfg:=AxMsgSRead1;
         xmsgStr.Clear;
         xmsgStr.Position:=0;
         xmsgStr:=AxMsgMRead3;
         xmsgStr.Position:=0;
         xOnLine:=true;
      end;
      Application.ProcessMessages;
      InExcec:=false;
end;

procedure OnLine.Execute;
begin
      While not iCfrm do begin
         //sleep(1000);
         if ((not InExcec) and (not xOnLine) and (not InDigt)) then
            synchronize(ReceiveOnLine);
      end;
end;


end.
