unit FileFind;

interface

uses
	Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
	TFindFileEvent = procedure(fullpath:string;info:TSearchRec)of object;
	TChangeFolderEvent = procedure(fullpath:string;info:TSearchRec)of object;

	TFileSearch = class(TComponent)
		constructor Create(aOwner:TComponent);override;
	private
		{ Private declarations }
		fRec : boolean;
		fStop : boolean;
		fFileFindEvent : TFindFileEvent;
		fChangeFolderEvent : TChangeFolderEvent;
		fFinishEvent : TNotifyEvent;
		fdirName : shortstring;
	protected
		{ Protected declarations }
		procedure ScanDir(fdirName:string;attr:word);
	public
		{ Public declarations }
		 procedure Start;
	published
		{ Published declarations }
		property Stop : boolean read fStop write fStop default false;
		property SearchFile : shortstring read fdirName write fdirName;
		property RecurseSubFolders : boolean read fRec write fRec default true;
		property OnFileFind : TFindFileEvent read fFileFindEvent write fFileFindEvent;
		property OnChangeFolder : TChangeFolderEvent read fChangeFolderEvent write fChangeFolderEvent;
		property OnFinish : TNotifyEvent read fFinishEvent write fFinishEvent;
	end;

procedure Register;

implementation

procedure Register;
begin
	RegisterComponents('HWS', [TFileSearch]);
end;

 constructor TFileSearch.Create(aOwner:TComponent);
 begin
	 inherited create(aOwner);
	 fRec := true;
	 fStop := false;
 end;

 procedure TFileSearch.Start;
 begin
	 fStop := false;
	 ScanDir(fdirName,faAnyFile);
 end;

 procedure TFileSearch.ScanDir(fdirName:string;attr:word);
 const fi : string = '*.*';
				p : string = '.';
			 pp : string = '..' ;
 var path : string;
		 doserror : integer;
		 sfi : string;

	procedure showq(fullpath:string;FolderInfo:TSearchRec);
	var	dirq : TSearchRec;
	begin
		if assigned(fChangeFolderEvent) then fChangeFolderEvent(fullpath,FolderInfo);
		doserror := findfirst(fullpath+sfi,attr,dirq);
		while (doserror = 0)and(not fstop) do begin
			if (dirq.name<>p)and(dirq.name<>pp)and(assigned(fFileFindEvent)) then fFileFindEvent(fullpath,dirq);
			doserror := findnext(dirq);
			application.processMessages;
		end;
	end;

 procedure ScanLDir(fdirName:string;fInfo:TSearchRec);
 var dirinfo : TSearchRec;
 begin
	 showq(fdirName,fInfo);
	 doserror := findfirst(fdirName+fi,faAnyfile,dirinfo);
	 while (doserror = 0)and(not fstop) do begin
		 application.ProcessMessages;
		 if (dirinfo.name<>p)and(dirinfo.name<>pp) then
			 if (dirinfo.attr and faDirectory <> 0) and (frec)
				 then	ScanLDir(fdirName+dirinfo.name+'\',dirinfo);
		 doserror := findnext(dirinfo);
		 application.processMessages;
	 end;
 end;

 var
	fInfo : TSearchRec;
	fPath : string;
 begin
	 path := extractFilePath(fdirName);
	 sfi := extractFileName(fdirName);
	 fPath := copy(path,1,length(path)-1);
	 findfirst(fpath,faAnyfile,finfo);
	 ScanLDir(path,fInfo);
	 if assigned(fFinishEvent) then fFinishEvent(self);
 end;


end.
