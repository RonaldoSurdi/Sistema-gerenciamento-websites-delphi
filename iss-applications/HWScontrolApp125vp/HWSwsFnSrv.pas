unit HWSwsFnSrv;

interface

uses
  InvokeRegistry, Types, XSBuiltIns;

type
  IHWSwsFnApp = interface(IInvokable)
    ['{8D8D0605-EF18-49CE-83EE-A71BF3E365CF}']
    function HWSdbAppUPbinPH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppUPbn2PH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xcpszp: string; const FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppUPbn3PH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xcpszp: string): Boolean; stdcall;
    function HWSdbAppUPbin4PH(const xcptp,xcpcod,xcpdt: string; const FileData: TByteDynArray): Boolean; stdcall;
    function HWSdbAppDOWNbinPH(const xcdweb,xtablename,xcpcod,xcpdt,xcpcod_value: string): TByteDynArray; stdcall;
    function HWSdbAppDOWNbinSZ(const xcdweb,xtablename,xcpcod,xcpdt,xcpcod_value: string): Integer; stdcall;
    function HWSdbAppREQbinPH(const xcdweb,xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string): Boolean; stdcall;
    function HWSdbAppUPbin(const xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppDOWNbin(const xtablename,xcpcod,xcpdt,xcpcod_value: string): TByteDynArray; stdcall;
    function HWSdbAppGETcp(const xtablename,xcpname,xcpwh: string): Integer; stdcall;
    function HWSdbAppXcp(const xtablename,xcpname,xcpvl: string): Boolean; stdcall;
    function HWSdbAppHtcp(const xtablename,xcpip,xcpvl,xcpmg: string): Boolean; stdcall;
    function HWSdbAppAtcp(const xHWSfld: TByteDynArray): TByteDynArray; stdcall;
    function HWSdbAppCnfg(const xHWSid: string): TByteDynArray; stdcall;
    function HWSdbAppEXbin(const xHWSfld,xHWSprm: TByteDynArray): Boolean; stdcall;
    function HWSdbAppSmMs(const xHWSfld1,xHWSfld2: TByteDynArray): Integer; stdcall;
    function HWSdbAppHtct1(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv4,xcpv5: string): Integer; stdcall;
    function HWSdbAppHtct2(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv4,xcpv5: string): Boolean; stdcall;
    function HWSdbAppHtct3(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv5,xcpv6: string; xcpv4: TByteDynArray): Integer; stdcall;
    function HWSdbAppHtct4(const xcpid: String; const xcpv1,xcpv2,xcpv3,xcpv4: TByteDynArray): TByteDynArray; stdcall;
    function HWSdbAppHtct5(const xcpid: String; const xcpr1: TByteDynArray): TByteDynArray; stdcall;
    function HWSdbAppHtct6(const xcpid: String; const xcpr1: TByteDynArray): Boolean; stdcall;
    function HWSdbAppHtct7(const xcpid: String; const xcpv1,xcpv2,xcpv3,xcpv4,xcpv5: TByteDynArray): TByteDynArray; stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IHWSwsFnApp), '', '');
  //InvRegistry.RegisterInterface(TypeInfo(IHWSwsFnApp));

end.
