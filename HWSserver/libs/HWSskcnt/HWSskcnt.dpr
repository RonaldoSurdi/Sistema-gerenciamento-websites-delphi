library HWSskcnt;

uses
  //SysUtils,
  //Classes;
  SysUtils,
  Classes,
  Windows,
  Graphics;

{$R *.res}
//{$R HWScontrol004.RES}
//{$R HWScontrol002.RES}
//{$R HWScontrol003.RES}
{$R HWScontrolsrvCnfg.RES}

function getcfgSrv(Index: Integer):TMemoryStream; Export;
var AxExport: TMemoryStream;
    ResStream : TResourceStream;
begin
    AxExport:=TMemoryStream.Create;
    ResStream := TResourceStream.CreateFromID (HInstance, Index, RT_RCDATA);
    AxExport.LoadFromStream(ResStream);
    AxExport.Seek(0,soFromBeginning);
    Result:= AxExport;
end;

Exports
    getcfgSrv;
begin
end.
