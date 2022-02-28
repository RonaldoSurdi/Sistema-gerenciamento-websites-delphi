unit rebapp;

interface

uses                   
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  rebappTh, ExtCtrls, Forms, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, DB, AppEvnts, FMTBcd, DBXpress, SqlExpr, IdMessage,
  IdMessageClient, IdSMTP, IdTCPServer, IdSMTPServer, Provider, DBClient;

type
  Txfilename = Record
      xopen: Boolean;
      xfile: String;
      xcdcnfg: Integer;
      xcdenti: Integer;
  End;
  THWSsfMail = class(TService)
    TimerGetMsg: TTimer;
    ApplicationEvents1: TApplicationEvents;
    TimerINI: TTimer;
    executabinTB: TSQLDataSet;
    HWSconnection: TSQLConnection;
    SQLqueryTB: TSQLDataSet;
    SQLquery2TB: TSQLDataSet;
    smtpHWS: TIdSMTP;
    MessageHWS: TIdMessage;
    SQLqueryEX: TDataSetProvider;
    SQLqueryEX2: TDataSetProvider;
    executabinEX: TDataSetProvider;
    executabin: TClientDataSet;
    SQLquery: TClientDataSet;
    SQLquery2: TClientDataSet;
    SQLquery3TB: TSQLDataSet;
    SQLqueryEX3: TDataSetProvider;
    SQLquery3: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    executaNavBin1: TClientDataSet;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider2: TDataSetProvider;
    executaNavBin2: TClientDataSet;
    SQLDataSet3: TSQLDataSet;
    DataSetProvider3: TDataSetProvider;
    executaNavBin3: TClientDataSet;
    SQLDataSet4: TSQLDataSet;
    DataSetProvider4: TDataSetProvider;
    executaNavBin4: TClientDataSet;
    SQLDataSet5: TSQLDataSet;
    DataSetProvider5: TDataSetProvider;
    executaNavBin5: TClientDataSet;
    SQLDataSet6: TSQLDataSet;
    DataSetProvider6: TDataSetProvider;
    executaNavBin6: TClientDataSet;
    SQLquery4TB: TSQLDataSet;
    SQLqueryEX4: TDataSetProvider;
    SQLquery4: TClientDataSet;
    procedure TimerGetMsgTimer(Sender: TObject);
    procedure TimerINITimer(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
    xfilename: Txfilename;
    procedure gravar_log(xdateevn:Boolean; xmensa:String);
    function TimerCfEXEC:Boolean;
  public
    { Public declarations }
    function GetServiceController: TServiceController; override;
  end;

var
  HWSsfMail: THWSsfMail;

implementation

uses hwsfunctions, DateUtils, IdEMailAddress;

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
     HWSsfMail.Controller(CtrlCode);
end;

function THWSsfMail.GetServiceController: TServiceController;
begin
     Result := ServiceController;
end;

procedure THWSsfMail.gravar_log(xdateevn:Boolean; xmensa:String);
var F: TextFile;
    S,xtime: string;
    xfilenameDT,xfile: String;
begin
    if (not xfilename.xopen) then begin
       xfilename.xopen:=True;
       DateTimeToString(xfilenameDT,'ddmmyyyyhhnnss',Now);
       xfile := ExtractFileName(Application.ExeName);
       xfilename.xfile:=ExtractFilePath(Application.ExeName)+copy(xfile,0,Length(xfile)-4)+'_'+xfilenameDT+'_'+IntToStr(xfilename.xcdenti)+'_'+IntToStr(xfilename.xcdcnfg)+'.hws';
    end;
    AssignFile(F, xfilename.xfile);
    if xdateevn then begin
       DateTimeToString(xtime,'yyyy-mm-dd hh:nn:ss',now);
       xtime:=xtime+' - ';
    end else xtime:='';
    if FileExists(xfilename.xfile) then Append(F)
    else ReWrite(F);
    Writeln(F,xtime+xmensa);
    CloseFile(F);
end;

procedure THWSsfMail.TimerGetMsgTimer(Sender: TObject);
begin
     TimerGetMsg.Enabled:=false;
     HWSsfMail.TimerCfEXEC;
end;

function THWSsfMail.TimerCfEXEC:Boolean;
var axtime: TDateTime;
    axstrTime,xerrorID,xtypefin: String;
    axdateID: TDateTime;
    xincError: Integer;
    xtimerSendMailCount,
    totMailCount1,sndMailCount1,errMailCount1,invMailCount1,dupMailCount1,
    totMailCount2,sndMailCount2,errMailCount2,invMailCount2,dupMailCount2,
    totMailCount3,sndMailCount3,errMailCount3,invMailCount3,dupMailCount3,
    totMailCount4,sndMailCount4,errMailCount4,invMailCount4,dupMailCount4: Integer;

    xsqlaux,xRmt_webtmp: String;//allsend
    xRmt_sendAll,xRmt_Cabec: Boolean;
    xRmt_cod,xRmt_cod_ent,xRmt_codcnf,xRmt_sendTot,xRmt_Priority: Integer;
    xRmt_sendPerc: Real;
    xRmt_xtp: String;
    xRmt_Assunto, xRmt_cp3, xRmt_cp13, xmWeb,xmWebdom,xmUsersmtp,xmUser,xmPass,xmName: String;
    xRmt_cp16,xRmt_cp17,xRmt_cp18,xRmt_cp19: Integer;
    axmBody,axmBodyRDP,axmBodyTMP: WideString;
    xDst_cod,xDst_id: Integer;
    xDst_cp3, xDst_cp13: String;
    xProgressID,xProgressRefresh: Integer;
    xDst_cp13Res: String;
    xProgressCalc: Real;
    xTestMailResult: Boolean;
    xmensaid: Integer;
    xRmt_Name,xRmt_Address: String;
    xMemoryLstUsr: TMemoryStream;
    AxMsgSL2,xRmt_mensagem: TStringList;
    xRmt_SendLineBool: Boolean;
    xidErrorMail: Integer;

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

    function retornaxDst_cp13(xcodUSRsb:Integer; astringDst_cp13,xtable,cpmail:String):String;
    var xDst_cp13length,actid: Integer;
        xDst_cp13Alt,xDst_cp13AltAX: String;
    begin
        xDst_cp13Alt:=astringDst_cp13;
        xDst_cp13Alt:=LowerCase(xDst_cp13Alt);
        try
            for actid := 1 to Length(xDst_cp13Alt) do
              case xDst_cp13Alt[actid] of
              'á': xDst_cp13Alt[actid] := 'a';
              'é': xDst_cp13Alt[actid] := 'e';
              'í': xDst_cp13Alt[actid] := 'i';
              'ó': xDst_cp13Alt[actid] := 'o';
              'ú': xDst_cp13Alt[actid] := 'u';
              'à': xDst_cp13Alt[actid] := 'a';
              'è': xDst_cp13Alt[actid] := 'e';
              'ì': xDst_cp13Alt[actid] := 'i';
              'ò': xDst_cp13Alt[actid] := 'o';
              'ù': xDst_cp13Alt[actid] := 'u';
              'â': xDst_cp13Alt[actid] := 'a';
              'ê': xDst_cp13Alt[actid] := 'e';
              'î': xDst_cp13Alt[actid] := 'i';
              'ô': xDst_cp13Alt[actid] := 'o';
              'û': xDst_cp13Alt[actid] := 'u';
              'ä': xDst_cp13Alt[actid] := 'a';
              'ë': xDst_cp13Alt[actid] := 'e';
              'ï': xDst_cp13Alt[actid] := 'i';
              'ö': xDst_cp13Alt[actid] := 'o';
              'ü': xDst_cp13Alt[actid] := 'u';
              'ã': xDst_cp13Alt[actid] := 'a';
              'õ': xDst_cp13Alt[actid] := 'o';
              'ñ': xDst_cp13Alt[actid] := 'n';
              'ç': xDst_cp13Alt[actid] := 'c';
            end;
            //SINTAXE INICIO
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,' ','',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'>','.',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'<','.',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'/','.',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,',','.',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,';','.',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,':','.',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'...','.',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'..','.',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'#','@',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'!','@',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'`','@',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'"','@',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@@@','@',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@@','@',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.@','@',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@.','@',[rfReplaceAll]);
            //xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.br.com','.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.com.br.','.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.cm.br','.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.co.br','.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.com.ber','.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.com.be','.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'.com.br');
            //hotmail
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@ohtmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmai.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@homtmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@homail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hoymail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hoitmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmaill.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotamail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmial.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmeil.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotnail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmaisl.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmaill.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmal.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hoymail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmaiol.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@otmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotima.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gotmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmqail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@htomail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotamail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hortmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmael.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@notmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotomail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'2hotmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmailcom','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.hotmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hot.ail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmail.br','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotimail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmail.cm','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hhotmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmai.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmaiil.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotimael.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@ghotmail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hormail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@homail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotamil.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotimaii.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotaill.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotail.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmil.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotimel.com','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmail.co.br','@hotmail.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@hotmail.co.','@hotmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'@hotmail.com.br');
            //live
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'@live.com.br');
            //yahoo
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yahoo.br','@yahoo.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yohoo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yahool.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yayoo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yaroo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yahooh.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yhaoo.de','@yahoo.de',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yhaoo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yayyo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yaho.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yahho.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yhoo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yahooo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yahoocom','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.yahoo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'2yahoo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@yahhoo.com','@yahoo.com',[rfReplaceAll]);
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'@yahoo.com.br');
            //gmail
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gmail.br','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gmailo.com','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gmailcom','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gmil.com','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gemail.com','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gmaii.com','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gmali.com','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gmial.com','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@gmail.com.','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'.gmail.com','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'2gmail.com','@gmail.com',[rfReplaceAll]);
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'@gmail.com');
            //bol
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@bol.br','@bol.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'2bol.com.br','@bol.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'@bol.com.br');
            //zipmail
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@zipamil.com.br','@zipmail.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'@zipmil.com.br','@zipmail.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'2zipmail.com.br','@zipmail.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'@zipmail.com.br');
            //brturbo
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'2brturbo.com.br','@brturbo.com.br',[rfReplaceAll]);
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'@brturbo.com.br');
            //globo
            xDst_cp13Alt:=StringReplace(xDst_cp13Alt,'2globo.com','@globo.com',[rfReplaceAll]);
            xDst_cp13Alt:=FindDelEndPos(xDst_cp13Alt,'@globo.com.br');

            //enviar
            xerrorID:='N8_15';
            //verificando e gravando
            {if ((astringDst_cp13<>xDst_cp13Alt) and (xRmt_cod_ent<>2)) then begin
                executaNavBin1.CommandText:='UPDATE '+xtable+' SET '+cpmail+'=:p0'+
                                            ' WHERE codigo=:p1';
                executaNavBin1.Params[0].AsString:=xDst_cp13Alt;
                executaNavBin1.Params[1].AsInteger:=xcodUSRsb;
                executaNavBin1.Execute;
                HWSsfMail.gravar_log(true,'Envio news E-MAIL UPDATE ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+xDst_cp13+'->'+xDst_cp13Alt+']');
            end;}
        except
            on E : Exception do begin
               HWSsfMail.gravar_log(true,'Envio news ERRO E-MAIL NULL ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+xDst_cp13+'->'+xDst_cp13Alt+']'+#13+E.Message);
               xDst_cp13Alt:=astringDst_cp13;
            end;
        end;
        Result:=xDst_cp13Alt;
    end;

    function setMailInvalid(axcodUSRsb:Integer; axtable:String):Boolean;
    var axresultmailSet: Boolean;
    begin
        axresultmailSet:=true;
        try
            executaNavBin2.CommandText:='UPDATE '+axtable+' SET cp55=:p0'+
                                        ' WHERE codigo=:p1';
            executaNavBin2.Params[0].AsInteger:=xidErrorMail;
            executaNavBin2.Params[1].AsInteger:=axcodUSRsb;
            executaNavBin2.Execute;
        except
            on E : Exception do begin
               axresultmailSet:=false;
               HWSsfMail.gravar_log(true,'Envio news ERRO GRAVAR E-MAIL NULL ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+IntToStr(axcodUSRsb)+']'+#13+E.Message);
            end;
        end;
        Result:=axresultmailSet;
    end;

    function finalizaERRO(xerrorlog:string):boolean;
    begin
        HWSsfMail.gravar_log(true,'Mensagem['+xerrorlog+']:'+xerrorID+'/'+IntToStr(xincError)+' <'+IntToStr(xRmt_cod)+'|'+IntToStr(xRmt_cod_ent)+'|'+IntToStr(xRmt_codcnf)+'> ');
        try
            if SQLquery.Active then SQLquery.Close;
            if SQLquery2.Active then SQLquery2.Close;
            if SQLquery3.Active then SQLquery3.Close;
            if SQLquery4.Active then SQLquery4.Close;
        except
        end;
        //if not TimerGetMsg.Enabled then TimerGetMsg.Enabled:=true;
        Result:=false;
    end;

    function VerifyMailMsg(xDst_cp13Test:String):Boolean;
    var xresultTest: Boolean;
        xcodDUP,xErrorCod: Integer;
        xErrorText: String;
    begin
        try
             xErrorCod:=0;
             xresultTest:=true;
             Inc(xErrorCod);
             if SQLquery3.Active then SQLquery3.Close;
             Inc(xErrorCod);
             xErrorText:='SELECT codigo FROM m7_fky398 '+
                         ' WHERE cod_msg='+#39+IntToStr(xRmt_codcnf)+#39+
                         ' AND cp13='+#39+xDst_cp13Test+#39;
             SQLquery3.CommandText:=xErrorText;
             Inc(xErrorCod);
             SQLquery3.Open;
             Inc(xErrorCod);
             if (SQLquery3.RecordCount>0) then begin
                xresultTest:=false;
                xidErrorMail:=660;
                SQLquery3.Close;
                //HWSsfMail.gravar_log(true,'Envio news E-MAIL DUP ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+xDst_cp13Test+']');
             end else begin
                SQLquery3.Close;
                Inc(xErrorCod);
                SQLquery3.CommandText:='SELECT MAX(codigo) FROM m7_fky398';
                SQLquery3.Open;
                Inc(xErrorCod);
                if (SQLquery3.Fields[0].AsString<>'') and (SQLquery3.Fields[0].AsString<>'0') then
                   xcodDUP:= SQLquery3.Fields[0].AsInteger+1
                else xcodDUP:= 1;
                Inc(xErrorCod);
                SQLquery3.Close;
                xErrorText:='INSERT INTO m7_fky398 (codigo,cod_msg,cp13) '+
                            ' VALUES(:p0,:p1,:p2)';
                executaNavBin3.CommandText:=xErrorText;
                executaNavBin3.Params[0].AsInteger:=xcodDUP;
                executaNavBin3.Params[1].AsInteger:=xRmt_codcnf;
                executaNavBin3.Params[2].AsString:=xDst_cp13Test;
                Inc(xErrorCod);
                executaNavBin3.Execute;
                Inc(xErrorCod);
             end;
        except
             on E : Exception do begin
                HWSsfMail.gravar_log(true,'Envio news ERRO E-MAIL DUP ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+xDst_cp13Test+']'+' - '+E.Message+' - '+IntToStr(xErrorCod));
                //xresultTest:=false;
             end;
        end;
        Result:=xresultTest;
    end;

    function ClearMailMsg:Boolean;
    begin
        try
             executaNavBin4.CommandText:='DELETE FROM m7_fky398 '+
                                         ' WHERE cod_msg='+#39+IntToStr(xRmt_codcnf)+#39;
             executaNavBin4.Execute;
             Result:=true;
        except
             on E : Exception do begin
                HWSsfMail.gravar_log(true,'Envio news ERRO CLEAR E-MAIL DUP ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']'+#13+E.Message);
                Result:=false;
             end;
        end;
    end;

    function TestMail(email: string): boolean;
    var axcrtmail: String;
        tam_email,pos_aroba,pos_ponto,qtd_pontos_esq,qtd_pontos_dir,qtd_arroba,id1,id2: Integer;
        error_mail, vet_valido_error: Boolean;
    const
        vet_valido: array [0..55] of string = ('0','1','2','3','4','5','6','7','8','9',
                                               'a','b','c','d','e','f','g','h','i','j',
                                               'k','l','m','n','o','p','q','r','s','t',
                                               'u','v','w','x','y','z','ç','ã','à','á',
                                               'â','è','é','ê','ì','í','õ','ò','ó','ô',
                                               'û','ù','ú','ü','_','-');
    begin
        qtd_pontos_esq:=0;
        qtd_pontos_dir:=0;
        qtd_arroba:=0;
        pos_ponto:=0;
        pos_aroba:=0;
        tam_email:= Length(email);
        error_mail:=True;
        for id1:= 0 to tam_email-1 do begin
            axcrtmail:= Copy(email,id1+1,1);
            if axcrtmail = '@' then begin
               Inc(qtd_arroba);
               pos_aroba:=id1;
               if (qtd_arroba>1) or (id1=0) or (id1=tam_email-1) then begin // or (pos_ponto+1=id1)
                  error_mail:=False;
                  break;
               end;
            end else if axcrtmail = '.' then begin
               Inc(pos_ponto);
               if qtd_arroba = 0 then Inc(qtd_pontos_esq)
               else Inc(qtd_pontos_dir);
               if (id1=0) or (id1=tam_email-1) then begin // or (pos_aroba=id1-1)
                  error_mail:=False;
                  break;
               end;
            end else begin
               vet_valido_error:=False;
               for id2:=0 to 55 do begin
                   if axcrtmail=vet_valido[id2] then begin
                      vet_valido_error:=True;
                      break;
                   end;
               end;
               if not vet_valido_error then begin
                  error_mail:=False;
                  break;
               end;
            end;
        end;
        if error_mail then if (qtd_arroba=0) then error_mail:=False;
        if error_mail then if (qtd_arroba>1) then error_mail:=False;
        if error_mail then if (qtd_pontos_esq>20) then error_mail:=False;
        if error_mail then if (qtd_pontos_dir<1) then error_mail:=False;
        if error_mail then if (qtd_pontos_dir>4) then error_mail:=False;
        if (xRmt_cod_ent<>2) then begin
           if error_mail then error_mail:=VerifyMailMsg(email);
        end;
        Result:= error_mail;
    end;

    function VerifyMsgCancel(xmstMsgCnf:Integer):Boolean;
    begin
        try
             if SQLquery4.Active then SQLquery4.Close;
             SQLquery4.CommandText:='SELECT codigo FROM m7_fky396 '+
                                     ' WHERE codigo='+#39+IntToStr(xmstMsgCnf)+#39+
                                     ' AND cp8='+#39+'2'+#39;
             SQLquery4.Open;
             if (SQLquery4.RecordCount>0) then Result:=finalizaERRO('Envio CANCELADO PELO USUARIO')
             else Result:=true;
             SQLquery4.Close;
        except
             on E : Exception do begin
                Result:=finalizaERRO('Status Verificação Error'+#13+E.Message);
             end;
        end;
    end;

    {function ProgressSEND: boolean;
    begin
        try
           Inc(xProgressID);
           Inc(xProgressRefresh);
           if (xProgressRefresh>=25) then begin
              if not VerifyMsgCancel(xRmt_codcnf) then exit;
              xProgressRefresh:=0;
              xProgressCalc:=StrToFloat(FormatFloat('0.00',((xRmt_sendTot*100)/xProgressID)));
              xerrorID:='N7_2';
              executaNavBin7.CommandText:='UPDATE m7_fky396 SET cp8=:p0,cp14=:p1,cp12='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                                      ' WHERE codigo=:p2';
              executaNavBin7.Params[0].AsInteger:=1;
              executaNavBin7.Params[1].AsFloat:=xProgressCalc;
              executaNavBin7.Params[2].AsInteger:=xRmt_codcnf;
              executaNavBin7.ExecSQL(false);
           end;
           Result:=true;
        except
           on E : Exception do begin +#13+E.Message
           HWSsfMail.gravar_log(#13+'Envio news ERRO PROGRESS ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod));
           Result:=false;
        end;
    end;}

    function UpdateStatusUSR(xidstatusID1,xidstatusID2,xidstatusID3,xidstatusID4:Integer): boolean;
    begin
        try
           if (xidstatusID1<4) then begin
               executaNavBin5.CommandText:='UPDATE m7_fky396 SET cp16=:p0,cp17=:p1,cp18=:p2,cp19=:p3'+
                                           ' WHERE codigo=:p4';
               executaNavBin5.Params[0].AsInteger:=xidstatusID1;
               executaNavBin5.Params[1].AsInteger:=xidstatusID2;
               executaNavBin5.Params[2].AsInteger:=xidstatusID3;
               executaNavBin5.Params[3].AsInteger:=xidstatusID4;
               executaNavBin5.Params[4].AsInteger:=xRmt_codcnf;
               executaNavBin5.Execute;
           end;
           Result:=true;
        except
           on E : Exception do begin
              HWSsfMail.gravar_log(true,'Envio news ERRO STATUS ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'/'+IntToStr(xidstatusID1)+'-'+IntToStr(xidstatusID2)+'-'+IntToStr(xidstatusID3)+'-'+IntToStr(xidstatusID4)+#13+E.Message);
              Result:=false;
           end;
        end;
    end;

    function MudaStatusMsg(xmstMsgStat,xmstMsgPerc,xmstMsgCnf:Integer):Boolean;
    begin
        try
             executaNavBin6.CommandText:='UPDATE m7_fky396 SET cp8=:p0,cp14=:p1,cp12='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                                         ' WHERE codigo=:p2';
             executaNavBin6.Params[0].AsInteger:=xmstMsgStat;
             executaNavBin6.Params[1].AsFloat:=xmstMsgPerc;
             executaNavBin6.Params[2].AsInteger:=xmstMsgCnf;
             executaNavBin6.Execute;
             Result:=true;
        except
             on E : Exception do begin
                Result:=finalizaERRO('Status Update Error'+#13+E.Message);
             end;
        end;
    end;

    function SendHWSmail:Boolean;
    var emailMessege: TIdMessage;
        axResMes: Boolean;
    begin
      try
          axResMes:=false;
          emailMessege := TIdMessage.Create(nil);
          emailMessege.CharSet:='iso-8859-1';
          emailMessege.ContentType:='text/html';
          emailMessege.Encoding:=meMIME;
          emailMessege.Organization:=xmWeb;
          emailMessege.From.Name:= xRmt_Name;
          emailMessege.From.Address:= xRmt_Address;//xmWebdom+'<no-replay>';//xRmt_Address;//'no-reply';//
          emailMessege.Sender.Name:= xmName;
          emailMessege.Sender.Address:= xmUser;
          Case xRmt_Priority of
              0: emailMessege.Priority := mpHighest;
              1: emailMessege.Priority := mpHigh;
              2: emailMessege.Priority := mpNormal;
              3: emailMessege.Priority := mpLow;
              4: emailMessege.Priority := mpLowest;
          end;
          emailMessege.Subject := xRmt_Assunto;
          emailMessege.Body.Clear;
          emailMessege.Body.Add(axmBody);
          //emailMessege.Recipients.EMailAddresses:= xDst_cp13;
          emailMessege.Recipients.Clear;
          emailMessege.Recipients.Add;
          emailMessege.Recipients.Items[0].Name:=xDst_cp3;
          emailMessege.Recipients.Items[0].Address:=xDst_cp13;
          try
              if not smtpHWS.Connected then begin
                 smtpHWS.Connect;
                 smtpHWS.Authenticate;
              end;
              if not smtpHWS.Connected then
                 xerrorID:='N8_15_11['+xmUsersmtp+'|'+xmUser+']';
              axResMes:=true;
              smtpHWS.Send(emailMessege);
          except
              on E : Exception do begin
                 Result:=finalizaERRO('SMTP '+xmUsersmtp+' ['+xDst_cp13+'] Atend'+#13+E.Message);
              end;
          end;
      finally
          emailMessege.Free;
          Result:=axResMes;
      end;
    end;
begin
      //portas: 28000-28008
      xtimerSendMailCount:=0;
      try
          if not HWSconnection.Connected then
             HWSconnection.Open;
      except
         on E : Exception do begin
            HWSsfMail.gravar_log(true,'Erro ao abrir Bases'+#13+E.Message);
            exit;
         end;
      end;
      try
             xMemoryLstUsr:= TMemoryStream.Create;
             xMemoryLstUsr.Clear;
             xMemoryLstUsr.Position:=0;
             AxMsgSL2:= TStringList.Create;
             AxMsgSL2.Clear;
             xRmt_mensagem:= TStringList.Create;
             xRmt_mensagem.Clear;
             xRmt_cod:=0;
             xRmt_cod_ent:=0;
             xRmt_codcnf:=0;
             xincError:=0;
             xerrorID:='N1';
             axdateID:=Now;
             axtime:= axdateID + StrToTime('00:00:30');
             axstrTime:='<'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axtime)+#39;
             //ENVIANDO MALA DIRETA USUÁRIOS
             if SQLquery.Active then SQLquery.Close;
             //SELECT B.codigo,B.cod_ent,B.cod_usra,B.tp_usra,B.cod_sec,B.cp1,B.cp2,B.cp3,B.cp4,B.cp5,B.cp6,B.cp7,B.cp8,B.cp10,B.cp13,B.cp14,B.cp15,B.cp16,B.cp17,B.cp18,B.cp19,B.xtp,C.cp3,C.cp13,C.cp17 AS webtmp FROM m7_fky396 B, m7_fky94 C WHERE B.cp2=5 AND B.tp_usra='0' AND (B.cp8<'2' OR B.cp8='10') AND B.cp11<'20140712 20:35:56' AND B.cp16<'4' AND C.codigo=B.cod_usra ORDER BY B.codigo
             SQLquery.CommandText:= 'SELECT '+
                                    'B.codigo,B.cod_ent,B.cod_usra,B.tp_usra,B.cod_sec,B.cp1,B.cp2,B.cp3,B.cp4,B.cp5,B.cp6,B.cp7,B.cp8,B.cp10,B.cp13,B.cp14,B.cp15,B.cp16,B.cp17,B.cp18,B.cp19,B.xtp,'+
                                    'C.cp3,C.cp13,C.cp17 AS webtmp'+
                                    ' FROM m7_fky396 B,'+ //msg
                                    ' m7_fky94 C'+ //usr
                                    ' WHERE B.cp2=5'+
                                    ' AND B.tp_usra='+#39+'0'+#39+
                                    ' AND (B.cp8<'+#39+'2'+#39+
                                    ' OR B.cp8='+#39+'10'+#39+')'+
                                    {' AND B.cp11'+axstrTime+}
                                    ' AND B.cp16<'+#39+'4'+#39+
                                    ' AND C.codigo=B.cod_usra'+
                                    ' ORDER BY B.codigo';
             SQLquery.Open;
             //HWSsfMail.gravar_log(true,SQLquery.CommandText);

             xerrorID:='N2';
             if (SQLquery.RecordCount>0) then begin
                SQLquery.First;
                //While not SQLquery.Eof do begin
                xProgressID:=0;
                xProgressRefresh:=0;
                xProgressCalc:=0;
                xRmt_codcnf:=SQLquery.fieldbyname('codigo').AsInteger;
                xRmt_cod:=SQLquery.fieldbyname('cod_usra').AsInteger;
                xRmt_cod_ent:=SQLquery.fieldbyname('cod_ent').AsInteger;
                xRmt_webtmp:=SQLquery.fieldbyname('webtmp').AsString;
                xRmt_xtp:=SQLquery.fieldbyname('xtp').AsString;
                if ((xfilename.xcdcnfg<>xRmt_codcnf) or (xfilename.xcdenti<>xRmt_cod_ent)) then begin
                    xfilename.xopen:=false;
                    xfilename.xcdcnfg:=xRmt_codcnf;
                    xfilename.xcdenti:=xRmt_cod_ent;
                    HWSsfMail.gravar_log(true,'***INICIADO***');
                end;
                //Verirfica se registro cancelado
                if not VerifyMsgCancel(xRmt_codcnf) then begin
                   exit;
                end else begin
                if SQLquery2.Active then SQLquery2.Close;
                HWSsfMail.gravar_log(true,'Preparando News ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] Localizando destinatários.');

                xRmt_cp16:=SQLquery.fieldbyname('cp16').AsInteger;
                xRmt_cp17:=SQLquery.fieldbyname('cp17').AsInteger;
                xRmt_cp18:=SQLquery.fieldbyname('cp18').AsInteger;
                xRmt_cp19:=SQLquery.fieldbyname('cp19').AsInteger;

                xRmt_Assunto:=SQLquery.fieldbyname('cp1').AsString;
                xRmt_cp3:=SQLquery.fieldbyname('cp3_1').AsString;
                xRmt_cp13:=SQLquery.fieldbyname('cp13_1').AsString;
                xRmt_sendAll:=StrToBool(SQLquery.fieldbyname('cp10').AsString);
                xRmt_sendTot:=SQLquery.fieldbyname('cp7').AsInteger;
                xRmt_sendPerc:=SQLquery.fieldbyname('cp14').AsFloat;
                xRmt_Priority:=SQLquery.fieldbyname('cp13').AsInteger;
                xRmt_Cabec:=StrToBool(SQLquery.fieldbyname('cp15').AsString);
                xRmt_mensagem.Clear;
                xRmt_mensagem.Assign(SQLquery.fieldbyname('cp5'));
                //website
                if SQLquery2.Active then SQLquery2.Close;
                SQLquery2.CommandText:= 'SELECT codigo,website FROM m0_fky60 '+
                                        ' WHERE codigo='+#39+IntToStr(xRmt_cod_ent)+#39;
                SQLquery2.Open;
                //if SQLquery2.RecordCount>0 then
                if (SQLquery2.RecordCount>0) then begin
                   if SQLquery.fieldbyname('cp4').IsNull then HWSsfMail.gravar_log(true,'Nenhum destinatário selicionado...');
                   xMemoryLstUsr.Clear;
                   xMemoryLstUsr.Position:=0;
                   TBlobField(SQLquery.FieldByName('cp4')).SaveToStream(xMemoryLstUsr);
                   xMemoryLstUsr.Position:=0;
                   if xMemoryLstUsr.Size>0 then begin
                      xMemoryLstUsr.Position:=0;
                      xMemoryLstUsr:=EnDecryptStream(xMemoryLstUsr,36521);
                      xMemoryLstUsr.Position:=0;
                      AxMsgSL2.Clear;
                      AxMsgSL2.LoadFromStream(xMemoryLstUsr);
                   end;

                   xmWeb:=SQLquery2.fieldbyname('website').AsString;
                   if (xRmt_cod_ent=2) then begin
                       xmWebdom:= xRmt_webtmp;
                   end else begin
                       xmWebdom:=copy(xmWeb,5,length(xmWeb));
                   end;
                   //xmUsersmtp:='200.234.205.210';
                   //xmUser:='webmaster@hws.com.br';
                   xmUsersmtp:='mail.garotosdofandango.com.br'; //'mail.'+xmWebdom;
                   xmUser:='mkt@garotosdofandango.com.br'; //'webmaster@'+xmWebdom;
                   xmPass:='m34k32t2s'; //'1d23a1KDLJS';
                   xmName:=xmWebdom;
                   HWSsfMail.gravar_log(true,'Iniciando envio News ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] Localizando destinatários.');
                end else begin
                   Result:=finalizaERRO('DOMÍNIO NÃO AUTENTICADO');
                   exit;
                end;
                if SQLquery2.Active then SQLquery2.Close;
                xerrorID:='N4';
                //MudaStatusMsg(1,10,xRmt_codcnf);
                //if not MudaStatusMsg(1,10,xRmt_codcnf) then exit;
                //Iniciando envio
                xerrorID:='N5';
                //*********************************************
                   try
                       if smtpHWS.Connected then
                          smtpHWS.Disconnect;
                       smtpHWS.Host := 'mail.garotosdofandango.com.br';//xmUsersmtp; //'localhost';
                       smtpHWS.Port := 587;
                       smtpHWS.Username := 'mkt@garotosdofandango.com.br';//xmUser; //'webmaster@hwshost.com.br'; //'phmrdiort';
                       smtpHWS.Password := 'm34k32t2s';//xmPass; //'985jgfktg3fg';
                       smtpHWS.HeloName := 'Garotos do Fandango';//xmName;
                       //smtpHWS.AuthenticationType := atNone;
                       smtpHWS.Connect;
                       smtpHWS.Authenticate;
                   except
                       on E : Exception do begin
                          Result:=finalizaERRO('ERRO SERVIDOR SMTP ('+xmWebdom+'/'+xmUsersmtp+'/'+xmUser+')'+#13+E.Message);
                          exit;
                       end;
                   end;
                   axmBodyTMP:=xRmt_mensagem.Text;
                   for xmensaid:=1 to Length(axmBodyTMP) do begin
                      if copy(axmBodyTMP,xmensaid,5) ='<BODY' then begin
                         axmBodyTMP:='<HTML>'+copy(axmBodyTMP,xmensaid,Length(axmBodyTMP));
                         break;
                      end;
                   end;
                   axmBodyRDP:='<p align="left"><br><br><br><font face="Verdana" size="1">'+
                            'Caso queira cancelar este serviço de informações, envie uma mensagem para<br>'+
                            '<b><a href="mailto:'+xmUser+'">'+xmUser+'</a></b> com o Assunto <b>"Remover e-mail"</b></font></p>'+
                            '</BODY></HTML>';
                   axmBody:=StringReplace(axmBodyTMP,'</BODY></HTML>',axmBodyRDP,[rfReplaceAll]);


                xerrorID:='N6';
                //*********************************************
                //atendentes ,C.cp31
                totMailCount1:=0;
                sndMailCount1:=0;
                errMailCount1:=0;
                invMailCount1:=0;
                dupMailCount1:=0;
                xRmt_SendLineBool:=StrToBool(AxMsgSL2.Strings[0]);
                if ((xRmt_SendLineBool) and (xRmt_cp16=0)) then begin
                    if SQLquery2.Active then SQLquery2.Close;
                    SQLquery2.CommandText:= 'SELECT codigo,cp3,cp13,cp31 FROM m7_fky94'+
                                            ' WHERE cod_ent='+#39+IntToStr(xRmt_cod_ent)+#39+
                                            ' AND cp31='+#39+'-1'+#39+
                                            ' AND cp55='+#39+'0'+#39+
                                            ' AND codigo>'+#39+IntToStr(xRmt_cp17)+#39+
                                            ' GROUP BY cp13 ORDER BY codigo';

                    SQLquery2.Open;
                    xerrorID:='N7';
                    if (SQLquery2.RecordCount>0) then begin
                        HWSsfMail.gravar_log(true,'Envio news 01 ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']'+': ok');//+IntToStr(SQLquery2.RecordCount)
                        xRmt_Name:=xRmt_cp3;
                        xRmt_Address:=xRmt_cp13;
                        xincError:=0;
                        SQLquery2.First;
                        While not SQLquery2.Eof do begin
                           {if (xtimerSendMailCount>30000) then begin
                              //Sleep(900000);
                              xtimerSendMailCount:=0;
                           end else Inc(xtimerSendMailCount);}
                           xDst_id:=SQLquery2.fieldbyname('codigo').AsInteger;
                           xDst_cod:=xDst_id;
                           xDst_cp3:=SQLquery2.fieldbyname('cp3').AsString;
                           xDst_cp13:=SQLquery2.fieldbyname('cp13').AsString;
                           Application.ProcessMessages;
                           xDst_cp13Res:=retornaxDst_cp13(xDst_cod,xDst_cp13,'m7_fky94','cp13');
                           xDst_cp13:=xDst_cp13Res;
                           xTestMailResult :=(xDst_cp13<>'');
                           xidErrorMail:=550;
                           Inc(totMailCount1);
                           if xTestMailResult then
                              xTestMailResult:=TestMail(xDst_cp13);
                           if xTestMailResult then begin
                              if (xDst_cp3='') then xDst_cp3:=xDst_cp13;
                              if SendHWSmail then begin
                                 UpdateStatusUSR(0,xDst_id,0,0);
                                 Inc(sndMailCount1);
                              end else Inc(errMailCount1);
                           end else begin
                              if (xidErrorMail<>660) then begin
                                 HWSsfMail.gravar_log(true,'Envio news 01 INVALID E-MAIL ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+IntToStr(xDst_cod)+'->'+xDst_cp13+']');
                                 setMailInvalid(xDst_cod,'m7_fky94');
                                 Inc(invMailCount1);
                              end else Inc(dupMailCount1);
                              UpdateStatusUSR(0,xDst_id,0,0);
                           end;
                           //ProgressSEND;
                           Inc(xincError);
                           SQLquery2.Next;
                        end;
                    end;
                    if SQLquery2.Active then SQLquery2.Close;
                    xRmt_cp17:=0;
                    if invMailCount1=0 then HWSsfMail.gravar_log(true,'Nenhum Atendente localizado ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']')
                    else HWSsfMail.gravar_log(true,'Atendentes '+IntToStr(totMailCount1)+' envios ['+IntToStr(sndMailCount1)+' sucesso, '+IntToStr(errMailCount1)+' erro, '+IntToStr(invMailCount1)+' inválidos, '+IntToStr(dupMailCount1)+' duplicados]');
                end else HWSsfMail.gravar_log(true,'Nenhum Atendente selecionado ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']');
                if (xRmt_cp16<1) then begin
                   xRmt_cp16:=1;
                   UpdateStatusUSR(1,0,0,0);
                end;
                //Usuários web ,C.cp31
                totMailCount2:=0;
                sndMailCount2:=0;
                errMailCount2:=0;
                invMailCount2:=0;
                dupMailCount2:=0;
                xRmt_SendLineBool:=StrToBool(AxMsgSL2.Strings[1]);
                if ((xRmt_SendLineBool) and (xRmt_cp16=1)) then begin
                    SQLquery2.CommandText:= 'SELECT codigo,cp3,cp13,cp31 FROM m0_fky94'+
                                            ' WHERE cod_ent='+#39+IntToStr(xRmt_cod_ent)+#39+
                                            ' AND cp31='+#39+'-1'+#39+
                                            ' AND cp55='+#39+'0'+#39+ 
                                            ' AND codigo>'+#39+IntToStr(xRmt_cp17)+#39+
                                            ' GROUP BY cp13 ORDER BY codigo';
                    SQLquery2.Open;
                    xerrorID:='N8';
                    if (SQLquery2.RecordCount>0) then begin
                       HWSsfMail.gravar_log(true,'Envio news 02 ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']'+': OK');//+IntToStr(SQLquery2.RecordCount)
                       xRmt_Name:=xmName;
                       xRmt_Address:=xmUser;
                       xincError:=0;
                       SQLquery2.First;
                       While not SQLquery2.Eof do begin
                          {if (xtimerSendMailCount>30000) then begin
                             //Sleep(900000);
                             xtimerSendMailCount:=0;
                          end else Inc(xtimerSendMailCount);}
                          xDst_id:=SQLquery2.fieldbyname('codigo').AsInteger;
                          xDst_cod:=xDst_id;
                          xDst_cp3:=SQLquery2.fieldbyname('cp3').AsString;
                          xDst_cp13:=SQLquery2.fieldbyname('cp13').AsString;
                          Application.ProcessMessages;
                          xDst_cp13Res:=retornaxDst_cp13(xDst_cod,xDst_cp13,'m0_fky94','cp13');
                          xDst_cp13:=xDst_cp13Res;
                          xTestMailResult :=(xDst_cp13<>'');
                          xidErrorMail:=550;
                          Inc(totMailCount2);
                          if xTestMailResult then
                             xTestMailResult:=TestMail(xDst_cp13);
                          if xTestMailResult then begin
                             xerrorID:='N8_15_5';
                             if (xDst_cp3='') then xDst_cp3:=xDst_cp13;
                             if SendHWSmail then begin
                                 UpdateStatusUSR(1,xDst_id,0,0);
                                 Inc(sndMailCount2);
                              end else Inc(errMailCount2);
                          end else begin
                             if (xidErrorMail<>660) then begin
                                HWSsfMail.gravar_log(true,'Envio news 02 INVALID E-MAIL ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+IntToStr(xDst_cod)+'->'+xDst_cp13+']');
                                setMailInvalid(xDst_cod,'m0_fky94');
                                Inc(invMailCount2);
                             end else Inc(dupMailCount2);
                             UpdateStatusUSR(1,xDst_id,0,0);
                          end;
                          //ProgressSEND;
                          Inc(xincError);
                          SQLquery2.Next;
                       end;
                    end;
                    if SQLquery2.Active then SQLquery2.Close;  
                    xRmt_cp17:=0;
                    if invMailCount2=0 then HWSsfMail.gravar_log(true,'Nenhum Usuário Web localizado ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']')
                    else HWSsfMail.gravar_log(true,'Usuários Web '+IntToStr(totMailCount2)+' envios ['+IntToStr(sndMailCount2)+' sucesso, '+IntToStr(errMailCount2)+' erro, '+IntToStr(invMailCount2)+' inválidos, '+IntToStr(dupMailCount2)+' duplicados]');
                end else HWSsfMail.gravar_log(true,'Nenhum Usuário Web selecionado ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']');
                if (xRmt_cp16<2) then begin
                   xRmt_cp16:=2;
                   UpdateStatusUSR(2,0,0,0);
                end;
                //News Letter
                totMailCount3:=0;
                sndMailCount3:=0;
                errMailCount3:=0;
                invMailCount3:=0;
                dupMailCount3:=0;
                xRmt_SendLineBool:=StrToBool(AxMsgSL2.Strings[2]);
                if ((xRmt_SendLineBool) and (xRmt_cp16=2)) then begin
                    if (xRmt_cod_ent=2) then begin
                        xsqlaux:= ' cp55='+#39+'0'+#39+
                                  ' AND cp31='+#39+'-1'+#39;
                    end else begin
                        xsqlaux:= ' cod_web='+#39+IntToStr(xRmt_cod_ent)+#39+
                                  ' AND cp31='+#39+'-1'+#39+
                                  ' AND cp55='+#39+'0'+#39;
                    end;
                    SQLquery2.CommandText:= 'SELECT codigo,cp1,cp3,cp31 FROM m0_fky99'+
                                            ' WHERE'+xsqlaux+
                                            ' AND codigo>'+#39+IntToStr(xRmt_cp17)+#39+
                                            ' GROUP BY cp1 ORDER BY codigo';
                    SQLquery2.Open;
                    xerrorID:='N9';                                       
                    if (SQLquery2.RecordCount>0) then begin
                       HWSsfMail.gravar_log(true,'Envio news 03 ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']'+': OK');//+IntToStr(SQLquery2.RecordCount)
                       xRmt_Name:=xmName;
                       xRmt_Address:=xmUser;
                       xincError:=0;
                       SQLquery2.First;
                       While not SQLquery2.Eof do begin
                          {if (xtimerSendMailCount>30000) then begin
                             //Sleep(900000);
                             xtimerSendMailCount:=0;
                          end else Inc(xtimerSendMailCount);}
                          xDst_id:=SQLquery2.fieldbyname('codigo').AsInteger;
                          xDst_cod:=xDst_id;
                          xDst_cp3:=SQLquery2.fieldbyname('cp3').AsString;
                          xDst_cp13:=SQLquery2.fieldbyname('cp1').AsString;
                          Application.ProcessMessages;
                          xDst_cp13Res:=retornaxDst_cp13(xDst_cod,xDst_cp13,'m0_fky99','cp1');
                          xDst_cp13:=xDst_cp13Res;
                          xTestMailResult :=(xDst_cp13<>'');
                          xidErrorMail:=550;
                          Inc(totMailCount3);
                          if xTestMailResult then
                             xTestMailResult:=TestMail(xDst_cp13);
                          if xTestMailResult then begin
                             if (xDst_cp3='') then xDst_cp3:=xDst_cp13;
                             if SendHWSmail then begin
                                 UpdateStatusUSR(2,xDst_id,0,0);
                                 Inc(sndMailCount3);
                              end else Inc(errMailCount3);
                          end else begin
                             if (xidErrorMail<>660) then begin
                                HWSsfMail.gravar_log(true,'Envio news 03 INVALID E-MAIL ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+IntToStr(xDst_cod)+'->'+xDst_cp13+']');
                                setMailInvalid(xDst_cod,'m0_fky99');
                                Inc(invMailCount3);
                             end else Inc(dupMailCount3);
                             UpdateStatusUSR(2,xDst_id,0,0);
                          end;
                          //ProgressSEND;
                          Inc(xincError);
                          SQLquery2.Next;
                       end;
                    end;
                    if SQLquery2.Active then SQLquery2.Close;   
                    xRmt_cp17:=0;
                    if invMailCount3=0 then HWSsfMail.gravar_log(true,'Nenhum News Letter localizado ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']')
                    else HWSsfMail.gravar_log(true,'News Letter '+IntToStr(totMailCount3)+' envios ['+IntToStr(sndMailCount3)+' sucesso, '+IntToStr(errMailCount3)+' erro, '+IntToStr(invMailCount3)+' inválidos, '+IntToStr(dupMailCount3)+' duplicados]');
                end else HWSsfMail.gravar_log(true,'Nenhum News Letter selecionado ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']');
                if (xRmt_cp16<3) then begin
                   xRmt_cp16:=3;
                   UpdateStatusUSR(3,0,0,0);
                end;
                //Catálogo do usuário
                totMailCount4:=0;
                sndMailCount4:=0;
                errMailCount4:=0;
                invMailCount4:=0;
                dupMailCount4:=0;
                xRmt_SendLineBool:=StrToBool(AxMsgSL2.Strings[3]);
                if ((xRmt_SendLineBool) and (xRmt_cp16=3)) then begin
                    SQLquery2.CommandText:= 'SELECT codigo,cp3,cp13,cp31 FROM m7_fky99 '+
                                            ' WHERE cod_ent='+#39+IntToStr(xRmt_cod_ent)+#39+
                                            ' AND cp31='+#39+'-1'+#39+
                                            ' AND cp55='+#39+'0'+#39+  
                                            ' AND codigo>'+#39+IntToStr(xRmt_cp17)+#39+
                                            ' GROUP BY cp13 ORDER BY codigo';
                    SQLquery2.Open;
                    xerrorID:='N10';
                    if (SQLquery2.RecordCount>0) then begin
                       HWSsfMail.gravar_log(true,'Envio news 04 ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']'+': OK');//+IntToStr(SQLquery2.RecordCount)
                       xRmt_Name:=xRmt_cp3;
                       xRmt_Address:=xRmt_cp13;
                       xincError:=0;
                       SQLquery2.First;
                       While not SQLquery2.Eof do begin
                          {if (xtimerSendMailCount>30000) then begin
                             //Sleep(900000);
                             xtimerSendMailCount:=0;
                          end else Inc(xtimerSendMailCount);}
                          xDst_id:=SQLquery2.fieldbyname('codigo').AsInteger;
                          xDst_cod:=xDst_id;
                          xDst_cp3:=SQLquery2.fieldbyname('cp3').AsString;
                          xDst_cp13:=SQLquery2.fieldbyname('cp13').AsString;
                          Application.ProcessMessages;
                          xDst_cp13Res:=retornaxDst_cp13(xDst_cod,xDst_cp13,'m7_fky99','cp13');
                          xDst_cp13:=xDst_cp13Res;
                          xTestMailResult :=(xDst_cp13<>'');
                          xidErrorMail:=550;
                          Inc(totMailCount4);
                          if xTestMailResult then
                             xTestMailResult:=TestMail(xDst_cp13);
                          if xTestMailResult then begin
                             if (xDst_cp3='') then xDst_cp3:=xDst_cp13;
                             if SendHWSmail then begin
                                 UpdateStatusUSR(3,xDst_id,0,0);
                                 Inc(sndMailCount4);
                              end else Inc(errMailCount4);
                          end else begin
                             if (xidErrorMail<>660) then begin
                                HWSsfMail.gravar_log(true,'Envio news 04 INVALID E-MAIL ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+'] .'+IntToStr(xDst_cod)+'. ['+IntToStr(xDst_cod)+'->'+xDst_cp13+']');
                                setMailInvalid(xDst_cod,'m7_fky99');
                                Inc(invMailCount4);
                             end else Inc(dupMailCount4);
                             UpdateStatusUSR(3,xDst_id,0,0);
                          end;
                          //ProgressSEND;
                          Inc(xincError);
                          SQLquery2.Next;
                       end;
                    end;
                    if SQLquery2.Active then SQLquery2.Close;     
                    xRmt_cp17:=0;
                    if invMailCount4=0 then HWSsfMail.gravar_log(true,'Nenhum Catálogo Usuário localizado ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']')
                    else HWSsfMail.gravar_log(true,'Catálogo Usuário '+IntToStr(totMailCount4)+' envios ['+IntToStr(sndMailCount4)+' sucesso, '+IntToStr(errMailCount4)+' erro, '+IntToStr(invMailCount4)+' inválidos, '+IntToStr(dupMailCount4)+' duplicados]');
                end else HWSsfMail.gravar_log(true,'Nenhum Catálogo Usuário selecionado ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']');
                xRmt_cp16:=4;
                UpdateStatusUSR(4,0,0,0);
                xerrorID:='N11';
                //Finalizando envio
                xRmt_SendLineBool:=StrToBool(AxMsgSL2.Strings[4]);
                //if (not xRmt_SendLineBool) then begin
                if not MudaStatusMsg(3,100,xRmt_codcnf) then exit;
                //end;
                xerrorID:='N12';
                MessageHWS.Body.Clear;
                if smtpHWS.Connected then
                   smtpHWS.Disconnect;
                ClearMailMsg;
                HWSsfMail.gravar_log(true,'RELATÓRIO********************************************'+#13+
                                          'Envio news CONCLUIDO ['+IntToStr(xRmt_cod_ent)+'/'+IntToStr(xRmt_codcnf)+']'+#13+
                                          'Atendentes '+IntToStr(totMailCount1)+' envios ['+IntToStr(sndMailCount1)+' sucesso, '+IntToStr(errMailCount1)+' erro, '+IntToStr(invMailCount1)+' inválidos, '+IntToStr(dupMailCount1)+' duplicados]'+#13+
                                          'Usuários Web '+IntToStr(totMailCount2)+' envios ['+IntToStr(sndMailCount2)+' sucesso, '+IntToStr(errMailCount2)+' erro, '+IntToStr(invMailCount2)+' inválidos, '+IntToStr(dupMailCount2)+' duplicados]'+#13+
                                          'News Letter '+IntToStr(totMailCount3)+' envios ['+IntToStr(sndMailCount3)+' sucesso, '+IntToStr(errMailCount3)+' erro, '+IntToStr(invMailCount3)+' inválidos, '+IntToStr(dupMailCount3)+' duplicados]'+#13+
                                          'Catálogo Usuário '+IntToStr(totMailCount4)+' envios ['+IntToStr(sndMailCount4)+' sucesso, '+IntToStr(errMailCount4)+' erro, '+IntToStr(invMailCount4)+' inválidos, '+IntToStr(dupMailCount4)+' duplicados]'+#13+
                                          '**************************************************'+#13+
                                          'TOTAL '+IntToStr(totMailCount1+totMailCount2+totMailCount3+totMailCount4)+' envios ['+IntToStr(sndMailCount1+sndMailCount2+sndMailCount3+sndMailCount4)+' sucesso, '+IntToStr(errMailCount1+errMailCount2+errMailCount3+errMailCount4)+' erro, '+IntToStr(invMailCount1+invMailCount2+invMailCount3+invMailCount4)+' inválidos, '+IntToStr(dupMailCount1+dupMailCount2+dupMailCount3+dupMailCount4)+' duplicados]'+#13+
                                          '*****************************************************');
                end;
                //SQLquery.Next;
                //end;
             end;
      finally
          try
             if SQLquery.Active then SQLquery.Close;
             if SQLquery2.Active then SQLquery2.Close;
             if SQLquery3.Active then SQLquery3.Close;
             if SQLquery4.Active then SQLquery4.Close;
             xMemoryLstUsr.Free;
             AxMsgSL2.Free;
             xRmt_mensagem.Free;
             xtimerSendMailCount:=0;
             if not TimerGetMsg.Enabled then begin
                TimerGetMsg.Enabled:=true;
             end;
             Result:=true;
          except
          end;
      end;
end;

procedure THWSsfMail.TimerINITimer(Sender: TObject);
begin
      TimerINI.Enabled:=false;
      xfilename.xopen:=false;
      xfilename.xfile:='';
      xfilename.xcdcnfg:=0;
      xfilename.xcdenti:=0;
      HWSsfMail.TimerCfEXEC;
end;

procedure THWSsfMail.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      HWSsfMail.gravar_log(true,'Global Exception ['+E.Message+']');
end;

end.
