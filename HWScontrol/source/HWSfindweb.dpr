program HWSfindweb;

uses
  Forms,
  umst_fmenu in 'umst_fmenu.pas' {fmenu},
  umst_dm in 'umst_dm.pas' {msdm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfmenu, fmenu);
  Application.CreateForm(Tmsdm, msdm);
  Application.Run;
end.
