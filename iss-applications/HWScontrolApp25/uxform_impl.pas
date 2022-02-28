unit uxform_impl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxRichEd;

type
  Txform_impl = class(TForm)
    RxRichEdit1: TRxRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xform_impl: Txform_impl;

implementation

{$R *.dfm}

end.
