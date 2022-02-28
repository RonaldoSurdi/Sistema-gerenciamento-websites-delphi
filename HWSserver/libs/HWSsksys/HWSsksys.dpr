library HWSsksys;
uses
  SysUtils,
  Classes,
  Windows,
  Graphics;

{$R *.res}
{$R TITLE.RES}

function GetImg(Index: Integer):TBitmap; Export;
var MyJPG : TBitmap;
    ResStream : TResourceStream;
begin
     //try
        MyJPG := TBitmap.Create;
        ResStream := TResourceStream.CreateFromID (HInstance, Index, RT_RCDATA);
        MyJPG.LoadFromStream (ResStream);
        //Canvas.Draw (12, 12, MyJPG);
        Result:=MyJPG;
     //finally
     //   MyJPG.Free;
     //   ResStream.Free;
     //end;
end;

Exports
    GetImg;
begin
end.
