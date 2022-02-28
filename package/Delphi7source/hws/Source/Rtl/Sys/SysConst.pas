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
  SInvalidInteger = '''%s'' não é um valor inteiro válido';
  SInvalidFloat = '''%s'' não é um valor numérico válido';
  SInvalidCurrency = '''%s'' não é um valor de moeda válido';
  SInvalidDate = '''%s'' data inválida';
  SInvalidTime = '''%s'' hora inválida';
  SInvalidDateTime = '''%s'' hora e data inválidas';
  SInvalidDateTimeFloat = '''%g'' hora e data inválidas';
  SInvalidTimeStamp = '''%d.%d'' hora e data inválidas';
  SInvalidGUID = '''%s'' não é um GUID válido';
  SInvalidBoolean = '''%s'' formato boolean inválido';
  STimeEncodeError = 'Argumento de Data inválido';
  SDateEncodeError = 'Argumento de Hora inválido';
  SOutOfMemory = 'Erro de memória';
  SInOutError = 'Erro I/O %d';
  SFileNotFound = 'Arquivo não existe';
  SInvalidFilename = 'Nome do arquivo inválido';
  STooManyOpenFiles = 'Muitos arquivos abertos';
  SAccessDenied = 'Acesso de arquivo negado';
  SEndOfFile = 'Leia além de fim de arquivo';
  SDiskFull = 'Disco cheio';
  SInvalidInput = 'Entrada numérica inválida';
  SDivByZero = 'Divisão nula';
  SRangeError = 'Range erro';
  SIntOverflow = 'Inteiro muito grande';
  SInvalidOp = 'Operação numérica inválida';
  SZeroDivide = 'Divisão nula';
  SOverflow = 'Numérico muito grande';
  SUnderflow = 'Numérico muito grande';
  SInvalidPointer = 'Operação inválida';
  SInvalidCast = 'Tipo de classe inválida';
{$IFDEF MSWINDOWS}
  SAccessViolationArg3 = 'Violação de acesso no endereço %p. %s de endereço %p';
{$ENDIF}
{$IFDEF LINUX}
  SAccessViolationArg2 = 'Violação de acesso no endereço %p, acessando endereço %p';
{$ENDIF}
  SAccessViolationNoArg = 'Violação de Acesso';
  SStackOverflow = 'Estouro de pilha';
  SControlC = 'Pressione Ctrl-C';
  SQuit = 'Pressione ESC';
  SPrivilege = 'Instrução privilegiada';
  SOperationAborted = 'Operação abortada';
  SException = 'Exceção %s no módulo %s página %p.' + sLineBreak + '%s%s' + sLineBreak;
  SExceptTitle = 'Erro na aplicação';
{$IFDEF LINUX}
  SSigactionFailed = 'Chamada inválida';
{$ENDIF}
  SInvalidFormat = 'Formato ''%s'' inválido ou incompatível com argumento';
  SArgumentMissing = 'Nenhum argumento para o formato ''%s''';
  SDispatchError = 'Chamadas de método Variantes não suportados';
  SReadAccess = 'Leitura';
  SWriteAccess = 'Escrita';
  SResultTooLong = 'Tamanho de caracteres muito grande [4096]';
  SFormatTooLong = 'String muito longa';

  SVarArrayCreate = 'Erro ao criar Variante ou Array';
  SVarArrayBounds = 'Index de Variante ou Array inválido';
  SVarArrayLocked = 'Variante ou Array está fechada';
  SVarArrayWithHResult = 'Erro inesperado em Variant ou Array: %s%.8x';

  SInvalidVarCast = 'Tipo de Variante inválido';
  SInvalidVarOp = 'Operação com Variante inválida';
  SInvalidVarNullOp = 'Operação com Variante Nula';
  SInvalidVarOpWithHResultWithPrefix = 'Operação com Variante inválida (%s%.8x)'#10'%s';
  SVarTypeRangeCheck1 = 'Tipo de Variante inválido (%s)';
  SVarTypeRangeCheck2 = 'Conversão inválida (%s) tipo (%s)';
  SVarTypeOutOfRangeWithPrefix = 'Tipo de Variante (%s%.4x) é inválido';
  SVarTypeAlreadyUsedWithPrefix = 'Tipo de Variante (%s%.4x) já está sendo usado por %s';
  SVarTypeNotUsableWithPrefix = 'Tipo de variante (%s%.4x) inválido';
  SVarTypeTooManyCustom = 'Tamanho de registro muito grande';

  // the following are not used anymore
  SVarNotArray = 'A Variante não é uma Array' deprecated; // not used, use SVarInvalid instead
  SVarTypeUnknown = 'Tipo de Variante desconhecido ($%.4x)' deprecated; // not used anymore
  SVarTypeOutOfRange = 'Tipo de Variante desconhecido ($%.4x)' deprecated;
  SVarTypeAlreadyUsed = 'Tipo de Variante ($%.4x) já está sendo usado por %s' deprecated;
  SVarTypeNotUsable = 'Tipo de Variante ($%.4x) é inválido' deprecated;
  SInvalidVarOpWithHResult = 'Operação inválida ($%.8x)' deprecated;

  SVarTypeCouldNotConvert = 'Converão de tipo de Variante inválida (%s) em (%s)';
  SVarTypeConvertOverflow = 'Converão de tipo de Variante inválida (%s) em (%s)';
  SVarOverflow = 'Variante inválida';
  SVarInvalid = 'Argumento inválido';
  SVarBadType = 'Tipo de Variante inválido';
  SVarNotImplemented = 'Operação não suportada';
  SVarOutOfMemory = 'Eroo de memória';
  SVarUnexpected = 'Erro inesperado com Variável';

  SVarDataClearRecursing = 'Erro em VarDataClear';
  SVarDataCopyRecursing = 'Erro em VarDataCopy';
  SVarDataCopyNoIndRecursing = 'Erro em VarDataCopyNoInd';
  SVarDataInitRecursing = 'Erro em VarDataInit';
  SVarDataCastToRecursing = 'Erro em VarDataCastTo';
  SVarIsEmpty = 'Variante está vazia';
  sUnknownFromType = 'não pode converter do tipo especificado';
  sUnknownToType = 'não pode converter ao tipo especificado';
  SExternalException = 'Exceção externa %x';
  SAssertionFailed = 'Afirmação falhou';
  SIntfCastError = 'Interface não suportada';
  SSafecallException = 'Exceção em método de chamada segura';
  SAssertError = '%s (%s, linha %d)';
  SAbstractError = 'Erro abstrato';
  SModuleAccessViolation = 'Violação de Acesso no endereço %p no módulo ''%s''. %s endereço %p';
  SCannotReadPackageInfo = 'Não pode acessar informação de pacote para pacote ''%s''';
  sErrorLoadingPackage = 'Erro ao carregar pacote  %s.'+sLineBreak+'%s';
  SInvalidPackageFile = 'Arquivo de pacote inválido ''%s''';
  SInvalidPackageHandle = 'Handle de pacote inválido';
  SDuplicatePackageUnit = 'Erro ao carregar pacote ''%s.''  Ele contém unidade ''%s,''' +
    'que também é contido em pacote ''%s''';
  SOSError = 'Erro de Sistema.  Código: %d.'+sLineBreak+'%s';
  SUnkOSError = 'Chamada para função OS falhada';
{$IFDEF MSWINDOWS}
  SWin32Error = 'Erro Win32.  Código: %d.'#10'%s' deprecated; // use SOSError
  SUnkWin32Error = 'Função Win32 API falhada' deprecated; // use SUnkOSError
{$ENDIF}
  SNL = 'Aplicação não é autorizada para usar esta característica';

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
  SLongMonthNameMar = 'Março';
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
  SShortDayNameSat = 'Sáb';

  SLongDayNameSun = 'Domingo';
  SLongDayNameMon = 'Segunda-feira';
  SLongDayNameTue = 'Terça-feira';
  SLongDayNameWed = 'Quarta-feira';
  SLongDayNameThu = 'Quinta-feira';
  SLongDayNameFri = 'Sexta-feira';
  SLongDayNameSat = 'Sábado';

{$IFDEF LINUX}
  SEraEntries = '';
{$ENDIF}

  SCannotCreateDir = 'Erro ao criar diretório';
  SCodesetConversionError = 'Conversão Codeset falhou';

implementation

end.



