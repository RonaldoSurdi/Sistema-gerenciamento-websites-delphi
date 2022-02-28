unit uwebchat_ListUsrMod;

interface

uses
  Classes, SysUtils, Forms;

type
  RefreshListUsr = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure ReceiveListUsr;
  public
    InExcec: Boolean;
  end;

var iCfrmMon: Boolean;

implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher, uwebchat_menu, RxRichEd;

procedure RefreshListUsr.ReceiveListUsr;
var ax_IDSec2 : Boolean;
    xnip,axCountSecID: String;
    xtable,cod_web,cod_ent,xtp,xstset:string;
begin
    if InExcec then exit;
    InExcec:=true;
    Try
      if not webchat_menu.RemoteConnection then begin
         InExcec:=false;
         exit;
      end;
      xtable:= dm3.LstTables.Table[11];
      cod_web:= dm3.axcod_web;
      cod_ent:= dm3.axcod_Usr;
      xtp:=  dm3.axparmSAC;
      xstset:= IntToStr(webchat_menu.lb4.ItemIndex);
      axCountSecID:=InttoStr(dm3.CountSecID);
      xnip:= webchat_menu.axipusr;
      xnip:=GetLocalIP+'->'+xnip;
      ax_IDSec2:=(dm3.HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtct2(
      EnDecryptString(xtable,21535),
      EnDecryptString(axCountSecID,21535),
      EnDecryptString(cod_web,21535),
      EnDecryptString(cod_ent,21535),
      EnDecryptString(xnip,21535),
      EnDecryptString(xtp,21535),
      EnDecryptString(xstset,21535));
      dm3.CountSecID:=StrToInt(axCountSecID);
    Except
      ax_IDSec2:=false;
    End;
    InExcec:=false;
end;

procedure RefreshListUsr.Execute;
begin
     if (not InExcec) then
         synchronize(ReceiveListUsr);
end;

end.
