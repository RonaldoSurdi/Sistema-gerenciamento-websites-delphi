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
  SInvalidFieldSize = 'Tamanho de campo inválido';
  SInvalidFieldKind = 'Campo chave inválido';
  SInvalidFieldRegistration = 'Registro de campo inválido';
  SUnknownFieldType = 'Campo ''%s'' é de um tipo desconhecido';
  SFieldNameMissing = 'Nome do campo inválido';
  SDuplicateFieldName = 'Nome de campo duplicado ''%s''';
  SFieldNotFound = 'Campo ''%s'' não existe';
  SFieldAccessError = 'Acesso ao campo negado ''%s'' com tipo %s';
  SFieldValueError = 'Valor inválido para campo ''%s''';
  SFieldRangeError = '%g não é um valor válido para campo ''%s''. O permitido é %g para %g';
  SBcdFieldRangeError = '%s não é um valor válido para campo  ''%s''. O permito é %s para %s';
  SInvalidIntegerValue = '''%s'' não é um valor Inteiro válido para campo  ''%s''';
  SInvalidBoolValue = '''%s'' não é um valor Boolean válido para campo  ''%s''';
  SInvalidFloatValue = '''%s'' não é um valor Numérico válido para campo  ''%s''';
  SFieldTypeMismatch = 'Tipo de campo inválido ''%s'', Esperando: %s atual: %s';
  SFieldSizeMismatch = 'Tamanho do campo inválido ''%s'', Esperando: %d atual: %d';
  SInvalidVarByteArray = 'Tipo ou tamanho inválido para campo ''%s''';
  SFieldOutOfRange = 'Valor do campo ''%s'' não é válido';
//  SBCDOverflow = '(Overflow)';
  SFieldRequired = 'Campo ''%s''em branco';
  SDataSetMissing = 'Campo ''%s'' não tem nenhum Dataset';
  SInvalidCalcType = 'Campo ''%s'' não pode ser calculado ou campo de lookup';
  SFieldReadOnly = 'Campo ''%s'' não pode ser modificado';
  SFieldIndexError = 'Índece do campo inválido';
  SNoFieldIndexes = 'Nenhum índice ativo';
  SNotIndexField = 'Campo ''%s'' não é indexado e não pode ser modificado';
  SIndexFieldMissing = 'não pode acessar campo de índice ''%s''';
  SDuplicateIndexName = 'Índice duplicado ''%s''';
  SNoIndexForFields = 'Nenhum índice para campos ''%s''';
  SIndexNotFound = 'Índice ''%s'' não existe';
  SDuplicateName = 'Nome duplicado ''%s'' em %s';
  SCircularDataLink = 'Não são permitidos datalinks circular';
  SLookupInfoError = 'Informação para campo Lookup ''%s'' está incompleta';
  SNewLookupFieldCaption = 'Novo campo de Lookup';
  SDataSourceChange = 'DataSource não encontrado';
  SNoNestedMasterSource = 'Nested datasets não pode conter MasterSource';
  SDataSetOpen = 'Não pode executar esta operação em um dataset aberto';
  SNotEditing = 'Dataset não está em modo de edição';
  SDataSetClosed = 'não pode executar esta operação em um dataset fechado';
  SDataSetEmpty = 'não pode executar esta operação em um dataset vazio';
  SDataSetReadOnly = 'não pode modificar um dataset somente de leitura';
  SNestedDataSetClass = 'Nested dataset tem que herdar de %s';
  SExprTermination = 'Expressão de Filtro terminou incorretamente';
  SExprNameError = 'Nome do campo indeterminado';
  SExprStringError = 'Constante string indeterminada';
  SExprInvalidChar = 'Character de expressão de filtro Inválido: ''%s''';
  SExprNoLParen = '''('' esperado mas %s encontrado';
  SExprNoRParen = ''')'' esperado mas %s encontrado';
  SExprNoRParenOrComma = ''')'' ou '','' esperado mas %s encontrado';
  SExprExpected = 'Expressão esperda mas %s encontrada';
  SExprBadField = 'Campo ''%s'' não pode ser usado em uma expressão de filtro';
  SExprBadNullTest = 'NULL só permitida com ''='' e ''<>''';
  SExprRangeError = 'Constante fora do alcance';
  SExprNotBoolean = 'Campo ''%s'' não é do tipo Boolean';
  SExprIncorrect = 'Fomado da expressão de filtro inválida';
  SExprNothing = 'nada';
  SExprTypeMis = 'Tipo de expressão inválida';
  SExprBadScope = 'Operação não pode misturar valor aggregate com valor registro-variado';
  SExprNoArith = 'Aritmética em expressões de filtro não suportadas';
  SExprNotAgg = 'Expressão não suportada';
  SExprBadConst = 'Constante não de um tipo válida type %s';
  SExprNoAggFilter = 'Expressões aggregate não são permitidas em filtros';
  SExprEmptyInList = 'IN lista de predicado pode não estar vazia';
  SInvalidKeywordUse = 'Uso inválido de palavra chave';
  STextFalse = 'Falso';
  STextTrue = 'Verdadeiro';
  SParameterNotFound = 'Parâmetro ''%s'' inexistente';
  SInvalidVersion = 'Incapaz carregar parâmetros';
  SParamTooBig = 'Parâmetro ''%s'', não pode alocar dados maior que %d bytes';
  SBadFieldType = 'Campo ''%s'' é de um tipo não suportado';
  SAggActive = 'Propriedade pode não ser modificada enquanto aggregate for ativo';
  SProviderSQLNotSupported = 'SQL não suportado: %s';
  SProviderExecuteNotSupported = 'Execução não suportada: %s';
  SExprNoAggOnCalcs = 'Campo ''%s'' não é o tipo correto de campo calculado ser usado em um aggregate, use um internalcalc';
  SRecordChanged = 'Registro não encontrado ou alterado por outro usuário';
  SDataSetUnidirectional = 'Operação não permitiu em um dataset de unidirectional';
  SUnassignedVar = 'Valor de variante inexistente';
  SRecordNotFound = 'Registro não existe';
  SFileNameBlank = 'Propriedade nome do arquivo não pode ser em branco';
  SFieldNameTooLarge = 'Nome do arquivo %s excede %d serviços';

{ For FMTBcd }

  SBcdOverflow = 'BCD sobrecarregado';
  SInvalidBcdValue = '%s não é válido para um valor BCD';
  SInvalidFormatType = 'Tipo de formato inválido para BCD';

{ For SqlTimSt }

  SCouldNotParseTimeStamp = 'String SQL TimeStamp passada é inválida';
  SInvalidSqlTimeStamp = 'Valores SQL date/time inválidos';

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
  SCaption = 'Erro na atualização - %s';
  SUnchanged = '<Inalterado>';
  SBinary = '(Binário)';
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
