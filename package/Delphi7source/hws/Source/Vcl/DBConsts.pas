{ *************************************************************************** }
{                                                                             }
{ Kylix and Delphi Cross-Platform Visual Component Library                    }
{                                                                             }
{ Copyright (c) 1997, 2001 Borland Software Corporation                       }
{                                                                             }
{ *************************************************************************** }


unit DBConsts;

interface

resourcestring
  SInvalidFieldSize = 'Tamanho de campo inv�lido';
  SInvalidFieldKind = 'Campo chave inv�lido';
  SInvalidFieldRegistration = 'Registro de campo inv�lido';
  SUnknownFieldType = 'Campo ''%s'' � de um tipo desconhecido';
  SFieldNameMissing = 'Nome do campo inv�lido';
  SDuplicateFieldName = 'Nome de campo duplicado ''%s''';
  SFieldNotFound = 'Campo ''%s'' n�o existe';
  SFieldAccessError = 'Acesso ao campo negado ''%s'' com tipo %s';
  SFieldValueError = 'Valor inv�lido para campo ''%s''';
  SFieldRangeError = '%g n�o � um valor v�lido para campo ''%s''. O permitido � %g para %g';
  SBcdFieldRangeError = '%s n�o � um valor v�lido para campo  ''%s''. O permito � %s para %s';
  SInvalidIntegerValue = '''%s'' n�o � um valor Inteiro v�lido para campo  ''%s''';
  SInvalidBoolValue = '''%s'' n�o � um valor Boolean v�lido para campo  ''%s''';
  SInvalidFloatValue = '''%s'' n�o � um valor Num�rico v�lido para campo  ''%s''';
  SFieldTypeMismatch = 'Tipo de campo inv�lido ''%s'', Esperando: %s atual: %s';
  SFieldSizeMismatch = 'Tamanho do campo inv�lido ''%s'', Esperando: %d atual: %d';
  SInvalidVarByteArray = 'Tipo ou tamanho inv�lido para campo ''%s''';
  SFieldOutOfRange = 'Valor do campo ''%s'' n�o � v�lido';
//  SBCDOverflow = '(Overflow)';
  SFieldRequired = 'Campo ''%s''em branco';
  SDataSetMissing = 'Campo ''%s'' n�o tem nenhum Dataset';
  SInvalidCalcType = 'Campo ''%s'' n�o pode ser calculado ou campo de lookup';
  SFieldReadOnly = 'Campo ''%s'' n�o pode ser modificado';
  SFieldIndexError = '�ndece do campo inv�lido';
  SNoFieldIndexes = 'Nenhum �ndice ativo';
  SNotIndexField = 'Campo ''%s'' n�o � indexado e n�o pode ser modificado';
  SIndexFieldMissing = 'n�o pode acessar campo de �ndice ''%s''';
  SDuplicateIndexName = '�ndice duplicado ''%s''';
  SNoIndexForFields = 'Nenhum �ndice para campos ''%s''';
  SIndexNotFound = '�ndice ''%s'' n�o existe';
  SDuplicateName = 'Nome duplicado ''%s'' em %s';
  SCircularDataLink = 'N�o s�o permitidos datalinks circular';
  SLookupInfoError = 'Informa��o para campo Lookup ''%s'' est� incompleta';
  SNewLookupFieldCaption = 'Novo campo de Lookup';
  SDataSourceChange = 'DataSource n�o encontrado';
  SNoNestedMasterSource = 'Nested datasets n�o pode conter MasterSource';
  SDataSetOpen = 'N�o pode executar esta opera��o em um dataset aberto';
  SNotEditing = 'Dataset n�o est� em modo de edi��o';
  SDataSetClosed = 'n�o pode executar esta opera��o em um dataset fechado';
  SDataSetEmpty = 'n�o pode executar esta opera��o em um dataset vazio';
  SDataSetReadOnly = 'n�o pode modificar um dataset somente de leitura';
  SNestedDataSetClass = 'Nested dataset tem que herdar de %s';
  SExprTermination = 'Express�o de Filtro terminou incorretamente';
  SExprNameError = 'Nome do campo indeterminado';
  SExprStringError = 'Constante string indeterminada';
  SExprInvalidChar = 'Character de express�o de filtro Inv�lido: ''%s''';
  SExprNoLParen = '''('' esperado mas %s encontrado';
  SExprNoRParen = ''')'' esperado mas %s encontrado';
  SExprNoRParenOrComma = ''')'' ou '','' esperado mas %s encontrado';
  SExprExpected = 'Express�o esperda mas %s encontrada';
  SExprBadField = 'Campo ''%s'' n�o pode ser usado em uma express�o de filtro';
  SExprBadNullTest = 'NULL s� permitida com ''='' e ''<>''';
  SExprRangeError = 'Constante fora do alcance';
  SExprNotBoolean = 'Campo ''%s'' n�o � do tipo Boolean';
  SExprIncorrect = 'Fomado da express�o de filtro inv�lida';
  SExprNothing = 'nada';
  SExprTypeMis = 'Tipo de express�o inv�lida';
  SExprBadScope = 'Opera��o n�o pode misturar valor aggregate com valor registro-variado';
  SExprNoArith = 'Aritm�tica em express�es de filtro n�o suportadas';
  SExprNotAgg = 'Express�o n�o suportada';
  SExprBadConst = 'Constante n�o de um tipo v�lida type %s';
  SExprNoAggFilter = 'Express�es aggregate n�o s�o permitidas em filtros';
  SExprEmptyInList = 'IN lista de predicado pode n�o estar vazia';
  SInvalidKeywordUse = 'Uso inv�lido de palavra chave';
  STextFalse = 'Falso';
  STextTrue = 'Verdadeiro';
  SParameterNotFound = 'Par�metro ''%s'' inexistente';
  SInvalidVersion = 'Incapaz carregar par�metros';
  SParamTooBig = 'Par�metro ''%s'', n�o pode alocar dados maior que %d bytes';
  SBadFieldType = 'Campo ''%s'' � de um tipo n�o suportado';
  SAggActive = 'Propriedade pode n�o ser modificada enquanto aggregate for ativo';
  SProviderSQLNotSupported = 'SQL n�o suportado: %s';
  SProviderExecuteNotSupported = 'Execu��o n�o suportada: %s';
  SExprNoAggOnCalcs = 'Campo ''%s'' n�o � o tipo correto de campo calculado ser usado em um aggregate, use um internalcalc';
  SRecordChanged = 'Registro n�o encontrado ou alterado por outro usu�rio';
  SDataSetUnidirectional = 'Opera��o n�o permitiu em um dataset de unidirectional';
  SUnassignedVar = 'Valor de variante inexistente';
  SRecordNotFound = 'Registro n�o existe';
  SFileNameBlank = 'Propriedade nome do arquivo n�o pode ser em branco';
  SFieldNameTooLarge = 'Nome do arquivo %s excede %d servi�os';

{ For FMTBcd }

  SBcdOverflow = 'BCD sobrecarregado';
  SInvalidBcdValue = '%s n�o � v�lido para um valor BCD';
  SInvalidFormatType = 'Tipo de formato inv�lido para BCD';

{ For SqlTimSt }

  SCouldNotParseTimeStamp = 'String SQL TimeStamp passada � inv�lida';
  SInvalidSqlTimeStamp = 'Valores SQL date/time inv�lidos';

  SDeleteRecordQuestion = 'Deletar registro?';
  SDeleteMultipleRecordsQuestion = 'Deletar todos os registros?';
  STooManyColumns = 'Grade pediu exibir mais que 256 colunas';

  { For reconcile error }
  SSkip = 'Pular';
  SAbort = 'Abortar';
  SMerge = 'Funda';
  SCorrect = 'Corrigir';
  SCancel  = 'Cancelar';
  SRefresh = 'Atualizar';
  SModified = 'Modificou';
  SInserted = 'Inseriu';
  SDeleted  = 'Apagou';
  SCaption = 'Erro na atualiza��o - %s';
  SUnchanged = '<Inalterado>';
  SBinary = '(Bin�rio)';
  SAdt = '(ADT)';
  SArray = '(Array)';
  SFieldName = 'Nome do campo';
  SOriginal = 'Valor original';
  SConflict = 'Valor em conflito';
  SValue = ' Valor';
  SNoData = '<Nenhum Registro>';
  SNew = 'Novo';    

implementation

end.
