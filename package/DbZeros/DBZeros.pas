unit DBZeros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls;

type
  TDBZeros = class(TDBEdit)
  private
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
  protected
  public
  published
    property OnExit;
  end;

procedure Register;

implementation


{******************************************************************}
{ Procedimento para colocar zeros à esquerda, ligado ao evento
{ OnExit do componente
{******************************************************************}
procedure TDBZeros.CMExit(var Message: TCMExit);
var
i : integer;
vap : string;
begin
if length(Text) > 0 then
   begin
   vap := Text;
   for i := 1 to MaxLength - length(Text) do
       insert('0', vap, 1);
   Text := vap;
   end;
Inherited;
end;


{******************************************************************}
{******************************************************************}
{******************************************************************}
procedure Register;
begin
  RegisterComponents('HWS', [TDBZeros]);
end;

end.

