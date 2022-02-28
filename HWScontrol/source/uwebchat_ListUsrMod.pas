unit uwebchat_ListUsrMod;

interface

uses
  Classes, SysUtils, Forms;

type
  MsgMonitor = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure ReceiveMessageHWSMonitor;
  public
    InExcec, InDigtExec: Boolean;
    xdtenvRead: String;
  end;

var iCfrmMon: Boolean;

implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher, uwebchat_menu, RxRichEd;

procedure MsgMonitor.ReceiveMessageHWSMonitor;
var xiniCool, VvalidUser: Boolean;
    VusrName,VusrXtp,VusrStatCaption,xVmscHWS: String;
    VusrCod, VusrStat, VusrType: Integer;
begin
      Application.ProcessMessages;
      if InExcec then exit;
      InExcec:=true;
      xiniCool:=false;
      try
         with dm3.ds_sql9 do begin
              Application.ProcessMessages;
              VvalidUser:=false;
              if dm3.axcod_web = '2' then xVmscHWS:=''
              else xVmscHWS:=' AND (B.cod_ent='+#39+dm3.axcod_web+#39+
                             ' OR B.cod_ent='+#39+'2'+#39+')';
              if Active then Close;
              CommandText:= 'SELECT '+
                            'A.codigo,A.cod_msg,A.cod_usrb,A.tp_usrb,A.cp11,A.xtp,'+
                            'B.codigo,B.cod_ent,B.cod_usra,B.tp_usra'+
                            ' FROM '+
                            dm3.LstTables.Table[7]+' A, '+ //dest
                            dm3.LstTables.Table[6]+' B '+ //msg
                            'WHERE A.cod_usrb='+#39+dm3.axcod_Usr+#39+
                            //' AND A.xtp='+#39+dm3.axparmSAC+#39+
                            xVmscHWS+
                            ' AND A.cp11='+#39+'0'+#39+
                            ' AND B.codigo=A.cod_msg'+
                            ' limit 0, 1';
              Open;
              Application.ProcessMessages;
              VvalidUser:=(RecordCount>0);
              if VvalidUser then begin
                 VusrXtp:=fieldbyname('xtp').AsString;
                 VusrCod:=fieldbyname('cod_usra').AsInteger;
                 VusrType:=fieldbyname('tp_usra').AsInteger;
              end;
              Close;
              CommandText:= 'SELECT codigo,cod_ent,cp3,cp37 FROM '+dm3.LstTables.Table[5]+
                            ' WHERE codigo='+#39+IntToStr(VusrCod)+#39+
                            ' AND xtp='+#39+VusrXtp+#39+
                            ' ORDER BY codigo';
              Open;
              VvalidUser:=(RecordCount>0);
              if VvalidUser then begin
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
              xiniCool:=true;
         end;
      except
         xiniCool:=false;
      end;
      Application.ProcessMessages;
      InExcec:=false;
end;

procedure MsgMonitor.Execute;
begin
      While not iCfrmMon do begin
         //sleep(1000);
         if ((not InExcec) and InDigtExec) then
            synchronize(ReceiveMessageHWSMonitor);
      end;
end;

end.
 