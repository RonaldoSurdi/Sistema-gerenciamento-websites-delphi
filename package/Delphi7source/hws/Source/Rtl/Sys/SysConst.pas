{ *********************************************************************** }
{                                                                         }
{ Delphi / Kylix Cross-Platform Runtime Library                           }
{                                                                         }
{ Copyright (c) 1995, 2001 Borland Software Corporation                   }
{                                                                         }
{ *********************************************************************** }

unit SysConst;                                   

interface        

resourcestring
  SUnknown = '<desconhecido>';
  SInvalidInteger = '''%s'' n�o � um valor inteiro v�lido';
  SInvalidFloat = '''%s'' n�o � um valor num�rico v�lido';
  SInvalidCurrency = '''%s'' n�o � um valor de moeda v�lido';
  SInvalidDate = '''%s'' data inv�lida';
  SInvalidTime = '''%s'' hora inv�lida';
  SInvalidDateTime = '''%s'' hora e data inv�lidas';
  SInvalidDateTimeFloat = '''%g'' hora e data inv�lidas';
  SInvalidTimeStamp = '''%d.%d'' hora e data inv�lidas';
  SInvalidGUID = '''%s'' n�o � um GUID v�lido';
  SInvalidBoolean = '''%s'' formato boolean inv�lido';
  STimeEncodeError = 'Argumento de Data inv�lido';
  SDateEncodeError = 'Argumento de Hora inv�lido';
  SOutOfMemory = 'Erro de mem�ria';
  SInOutError = 'Erro I/O %d';
  SFileNotFound = 'Arquivo n�o existe';
  SInvalidFilename = 'Nome do arquivo inv�lido';
  STooManyOpenFiles = 'Muitos arquivos abertos';
  SAccessDenied = 'Acesso de arquivo negado';
  SEndOfFile = 'Leia al�m de fim de arquivo';
  SDiskFull = 'Disco cheio';
  SInvalidInput = 'Entrada num�rica inv�lida';
  SDivByZero = 'Divis�o nula';
  SRangeError = 'Range erro';
  SIntOverflow = 'Inteiro muito grande';
  SInvalidOp = 'Opera��o num�rica inv�lida';
  SZeroDivide = 'Divis�o nula';
  SOverflow = 'Num�rico muito grande';
  SUnderflow = 'Num�rico muito grande';
  SInvalidPointer = 'Opera��o inv�lida';
  SInvalidCast = 'Tipo de classe inv�lida';
{$IFDEF MSWINDOWS}
  SAccessViolationArg3 = 'Viola��o de acesso no endere�o %p. %s de endere�o %p';
{$ENDIF}
{$IFDEF LINUX}
  SAccessViolationArg2 = 'Viola��o de acesso no endere�o %p, acessando endere�o %p';
{$ENDIF}
  SAccessViolationNoArg = 'Viola��o de Acesso';
  SStackOverflow = 'Estouro de pilha';
  SControlC = 'Pressione Ctrl-C';
  SQuit = 'Pressione ESC';
  SPrivilege = 'Instru��o privilegiada';
  SOperationAborted = 'Opera��o abortada';
  SException = 'Exce��o %s no m�dulo %s p�gina %p.' + sLineBreak + '%s%s' + sLineBreak;
  SExceptTitle = 'Erro na aplica��o';
{$IFDEF LINUX}
  SSigactionFailed = 'Chamada inv�lida';
{$ENDIF}
  SInvalidFormat = 'Formato ''%s'' inv�lido ou incompat�vel com argumento';
  SArgumentMissing = 'Nenhum argumento para o formato ''%s''';
  SDispatchError = 'Chamadas de m�todo Variantes n�o suportados';
  SReadAccess = 'Leitura';
  SWriteAccess = 'Escrita';
  SResultTooLong = 'Tamanho de caracteres muito grande [4096]';
  SFormatTooLong = 'String muito longa';

  SVarArrayCreate = 'Erro ao criar Variante ou Array';
  SVarArrayBounds = 'Index de Variante ou Array inv�lido';
  SVarArrayLocked = 'Variante ou Array est� fechada';
  SVarArrayWithHResult = 'Erro inesperado em Variant ou Array: %s%.8x';

  SInvalidVarCast = 'Tipo de Variante inv�lido';
  SInvalidVarOp = 'Opera��o com Variante inv�lida';
  SInvalidVarNullOp = 'Opera��o com Variante Nula';
  SInvalidVarOpWithHResultWithPrefix = 'Opera��o com Variante inv�lida (%s%.8x)'#10'%s';
  SVarTypeRangeCheck1 = 'Tipo de Variante inv�lido (%s)';
  SVarTypeRangeCheck2 = 'Convers�o inv�lida (%s) tipo (%s)';
  SVarTypeOutOfRangeWithPrefix = 'Tipo de Variante (%s%.4x) � inv�lido';
  SVarTypeAlreadyUsedWithPrefix = 'Tipo de Variante (%s%.4x) j� est� sendo usado por %s';
  SVarTypeNotUsableWithPrefix = 'Tipo de variante (%s%.4x) inv�lido';
  SVarTypeTooManyCustom = 'Tamanho de registro muito grande';

  // the following are not used anymore
  SVarNotArray = 'A Variante n�o � uma Array' deprecated; // not used, use SVarInvalid instead
  SVarTypeUnknown = 'Tipo de Variante desconhecido ($%.4x)' deprecated; // not used anymore
  SVarTypeOutOfRange = 'Tipo de Variante desconhecido ($%.4x)' deprecated;
  SVarTypeAlreadyUsed = 'Tipo de Variante ($%.4x) j� est� sendo usado por %s' deprecated;
  SVarTypeNotUsable = 'Tipo de Variante ($%.4x) � inv�lido' deprecated;
  SInvalidVarOpWithHResult = 'Opera��o inv�lida ($%.8x)' deprecated;

  SVarTypeCouldNotConvert = 'Conver�o de tipo de Variante inv�lida (%s) em (%s)';
  SVarTypeConvertOverflow = 'Conver�o de tipo de Variante inv�lida (%s) em (%s)';
  SVarOverflow = 'Variante inv�lida';
  SVarInvalid = 'Argumento inv�lido';
  SVarBadType = 'Tipo de Variante inv�lido';
  SVarNotImplemented = 'Opera��o n�o suportada';
  SVarOutOfMemory = 'Eroo de mem�ria';
  SVarUnexpected = 'Erro inesperado com Vari�vel';

  SVarDataClearRecursing = 'Erro em VarDataClear';
  SVarDataCopyRecursing = 'Erro em VarDataCopy';
  SVarDataCopyNoIndRecursing = 'Erro em VarDataCopyNoInd';
  SVarDataInitRecursing = 'Erro em VarDataInit';
  SVarDataCastToRecursing = 'Erro em VarDataCastTo';
  SVarIsEmpty = 'Variante est� vazia';
  sUnknownFromType = 'n�o pode converter do tipo especificado';
  sUnknownToType = 'n�o pode converter ao tipo especificado';
  SExternalException = 'Exce��o externa %x';
  SAssertionFailed = 'Afirma��o falhou';
  SIntfCastError = 'Interface n�o suportada';
  SSafecallException = 'Exce��o em m�todo de chamada segura';
  SAssertError = '%s (%s, linha %d)';
  SAbstractError = 'Erro abstrato';
  SModuleAccessViolation = 'Viola��o de Acesso no endere�o %p no m�dulo ''%s''. %s endere�o %p';
  SCannotReadPackageInfo = 'N�o pode acessar informa��o de pacote para pacote ''%s''';
  sErrorLoadingPackage = 'Erro ao carregar pacote  %s.'+sLineBreak+'%s';
  SInvalidPackageFile = 'Arquivo de pacote inv�lido ''%s''';
  SInvalidPackageHandle = 'Handle de pacote inv�lido';
  SDuplicatePackageUnit = 'Erro ao carregar pacote ''%s.''  Ele cont�m unidade ''%s,''' +
    'que tamb�m � contido em pacote ''%s''';
  SOSError = 'Erro de Sistema.  C�digo: %d.'+sLineBreak+'%s';
  SUnkOSError = 'Chamada para fun��o OS falhada';
{$IFDEF MSWINDOWS}
  SWin32Error = 'Erro Win32.  C�digo: %d.'#10'%s' deprecated; // use SOSError
  SUnkWin32Error = 'Fun��o Win32 API falhada' deprecated; // use SUnkOSError
{$ENDIF}
  SNL = 'Aplica��o n�o � autorizada para usar esta caracter�stica';

  SShortMonthNameJan = 'Jan';
  SShortMonthNameFeb = 'Feb';
  SShortMonthNameMar = 'Mar';
  SShortMonthNameApr = 'Abr';
  SShortMonthNameMay = 'Mai';
  SShortMonthNameJun = 'Jun';
  SShortMonthNameJul = 'Jul';
  SShortMonthNameAug = 'Aug';
  SShortMonthNameSep = 'Set';
  SShortMonthNameOct = 'Out';
  SShortMonthNameNov = 'Nov';
  SShortMonthNameDec = 'Dez';

  SLongMonthNameJan = 'Janeiro';
  SLongMonthNameFeb = 'Fevereiro';
  SLongMonthNameMar = 'Mar�o';
  SLongMonthNameApr = 'Abril';
  SLongMonthNameMay = 'Maio';
  SLongMonthNameJun = 'Junho';
  SLongMonthNameJul = 'Julho';
  SLongMonthNameAug = 'Agosto';
  SLongMonthNameSep = 'Setembro';
  SLongMonthNameOct = 'Outubro';
  SLongMonthNameNov = 'Novembro';
  SLongMonthNameDec = 'Dezembro';

  SShortDayNameSun = 'Dom';
  SShortDayNameMon = 'Seg';
  SShortDayNameTue = 'Ter';
  SShortDayNameWed = 'Qua';
  SShortDayNameThu = 'Qui';
  SShortDayNameFri = 'Sex';
  SShortDayNameSat = 'S�b';

  SLongDayNameSun = 'Domingo';
  SLongDayNameMon = 'Segunda-feira';
  SLongDayNameTue = 'Ter�a-feira';
  SLongDayNameWed = 'Quarta-feira';
  SLongDayNameThu = 'Quinta-feira';
  SLongDayNameFri = 'Sexta-feira';
  SLongDayNameSat = 'S�bado';

{$IFDEF LINUX}
  SEraEntries = '';
{$ENDIF}

  SCannotCreateDir = 'Erro ao criar diret�rio';
  SCodesetConversionError = 'Convers�o Codeset falhou';

implementation

end.



