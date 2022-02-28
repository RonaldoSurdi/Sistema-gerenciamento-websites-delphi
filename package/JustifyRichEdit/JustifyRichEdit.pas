unit JustifyRichEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, 
  StdCtrls, ComCtrls, RichEdit;

type
  TJustifyRichEdit = class(TRichEdit)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    procedure Justify;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('HWS', [TJustifyRichEdit]);
end;

procedure TJustifyRichEdit.Justify;
const
  WM_USER = $400;
  EM_EXSETSEL = (WM_USER + 55);
  EM_SETTYPOGRAPHYOPTIONS = (WM_USER + 202);
  EM_GETTYPOGRAPHYOPTIONS = (WM_USER + 203);
  TO_ADVANCEDTYPOGRAPHY = $1;
  mZERO = $0;
var x :tparaformat;
   L :LongInt;
   cp :charrange;
begin
  x.cbSize := sizeof(x);
  if SelLength = 0 then
  begin
    cp.cpMin := 0;
    cp.cpMax := length(Text);
    SendMessage(Handle,EM_EXSETSEL,mZERO,LPARAM(@cp));
  end;
  L := SendMessageA(Handle,EM_SETTYPOGRAPHYOPTIONS, TO_ADVANCEDTYPOGRAPHY, TO_ADVANCEDTYPOGRAPHY);
  if L = 1 then
  begin
    SendMessageA(Handle, EM_GETTYPOGRAPHYOPTIONS, mZERO, mZERO);
    SendMessage(Handle, EM_GETPARAFORMAT, mZERO, LPARAM(@x));
    x.dwMask := PFM_ALIGNMENT;
    x.wAlignment := PFA_JUSTIFY;
    SendMessage(Handle, EM_SETPARAFORMAT, mZERO, lparam(@x));
  end;
  cp.cpMin := 0;
  cp.cpMax := 0;
  SendMessage(Handle,EM_EXSETSEL,mZERO,lparam(@cp));
  WordWrap := true;
end;

end.
