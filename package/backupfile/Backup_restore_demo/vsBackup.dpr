program vsBackup;

uses
  Forms,
  Main in 'Main.pas' {BackupDialog};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Backup';
  Application.HelpFile := 'Vsbackup.hlp';
  Application.CreateForm(TBackupDialog, BackupDialog);
  Application.Run;
end.
