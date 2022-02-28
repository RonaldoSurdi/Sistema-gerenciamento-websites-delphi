{ ComPort Library global definitions }

{$B-}
{$X+}
{$H+}

{$IFDEF VER110}     { C++ Builder 3 }
  {$ObjExportAll On}
{$ENDIF}

{$IFDEF VER120}     { Delphi 4 }
  {$DEFINE DELPHI_4_OR_HIGHER}
{$ENDIF}

{$IFDEF VER125}     { C++ Builder 4 }
  {$DEFINE DELPHI_4_OR_HIGHER}
  {$ObjExportAll On}
{$ENDIF}

{$IFDEF VER130}     { Delphi 5 and C++ Builder 5 }
  {$DEFINE DELPHI_4_OR_HIGHER}
  {$DEFINE DELPHI_5_OR_HIGHER}
  {$IFDEF BCBNOTDELPHI}
    {$ObjExportAll On}
  {$ENDIF}
{$ENDIF}

