unit umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  Tfmenuapp = class(TForm)
    StatusBar1: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmenuapp: Tfmenuapp;

implementation

Uses ComApp;

{$R *.dfm}

const
  CLASS_ComWebApp: TGUID = '{E6A638C2-ECFB-47D6-8AF1-561FBF391F12}';

initialization
  TWebAppAutoObjectFactory.Create(Class_ComWebApp,
    'HWScontrolAppSrvApplication', 'HWScontrolAppSrvApplication Object');

end.
