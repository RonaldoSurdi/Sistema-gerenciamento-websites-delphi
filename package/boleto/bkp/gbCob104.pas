unit gbCob104;

interface

uses
   classes, SysUtils, gbCobranca
   {$IFDEF VER150}
      , Variants, MaskUtils, contnrs, DateUtils
   {$ELSEIF VER140}
      , Variants, MaskUtils, contnrs, DateUtils
   {$ELSE}
      {$IFDEF VER130}
         , Mask, contnrs
      {$ELSE}
         , Mask
      {$ENDIF}
   {$IFEND}
   ;

const
   CodigoBanco = '104';
   NomeBanco = 'Caixa Econ. Federal';

type

   TgbBanco104 = class(TPersistent)
   private
{$IFNDEF VER120}
      function GerarRemessaCNAB240(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
      function GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
      function LerRetornoCNAB240(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
      function LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
{$ENDIF}
   published
      function  GetNomeBanco   : string; {Retorna o nome do banco}
      function  GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string; {Retorna o conteúdo da parte variável do código de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores serão apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean; {Lê o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
   end;


implementation


function TgbBanco104.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco104.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,10,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

function TgbBanco104.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ACodigoAgencia,
   ACodigoCedente: string;
begin

   {
    A primeira parte do código de barras será calculada automaticamente.
    Ela é composta por:
    Código do banco (3 posições)
    Código da moeda = 9 (1 posição)
    Dígito do código de barras (1 posição) - Será calculado e incluído pelo componente
    Fator de vencimento (4 posições) - Obrigatório a partir de 03/07/2000
    Valor do documento (10 posições) - Sem vírgula decimal e com ZEROS à esquerda

    A segunda parte do código de barras é um campo livre, que varia de acordo
    com o banco. Esse campo livre será calculado por esta função (que você deverá
    alterar de acordo com as informações fornecidas pelo banco).
   }

   {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}

   with ATitulo do
   begin
      ANossoNumero := Formatar(NossoNumero,10,false,'0');
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
      ACodigoCedente := Formatar(Cedente.CodigoCedente,11,false,'0');
   end;

   Result := ANossoNumero + ACodigoAgencia + ACodigoCedente;
end;

procedure TgbBanco104.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '.' + Formatar(Cedente.CodigoCedente,11,false,'0') + '.' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,10,false,'0') + '.' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,2);
      case EspecieDocumento of
         edApoliceSeguro                : AEspecieDocumento := 'AP';
         edCheque                       : AEspecieDocumento := 'CH';
         edDuplicataMercantil           : AEspecieDocumento := 'DM';
         edDuplicataMercantialIndicacao : AEspecieDocumento := 'DMI';
         edDuplicataRural               : AEspecieDocumento := 'DR';
         edDuplicataServico             : AEspecieDocumento := 'DS';
         edDuplicataServicoIndicacao    : AEspecieDocumento := 'DSI';
         edFatura                       : AEspecieDocumento := 'FAT';
         edLetraCambio                  : AEspecieDocumento := 'LC';
         edMensalidadeEscolar           : AEspecieDocumento := 'ME';
         edNotaCreditoComercial         : AEspecieDocumento := 'NCC';
         edNotaCreditoExportacao        : AEspecieDocumento := 'NCE';
         edNotaCreditoIndustrial        : AEspecieDocumento := 'NCI';
         edNotaCreditoRural             : AEspecieDocumento := 'NCR';
         edNotaDebito                   : AEspecieDocumento := 'ND';
         edNotaPromissoria              : AEspecieDocumento := 'NP';
         edNotaPromissoriaRural         : AEspecieDocumento := 'NPR';
         edNotaSeguro                   : AEspecieDocumento := 'NS';
         edParcelaConsorcio             : AEspecieDocumento := 'PC';
         edRecibo                       : AEspecieDocumento := 'RC';
         edTriplicataMercantil          : AEspecieDocumento := 'TM';
         edTriplicataServico            : AEspecieDocumento := 'TS'
      else
         AEspecieDocumento := '';
      end;
   end;
end;


{$IFNDEF VER120}

function TgbBanco104.GerarRemessaCNAB240(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro, NumeroLote : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   NumeroLote := 1;
   Registro := '';
   Remessa.Clear;

   if ACobranca.Titulos.Count < 1 then
      Exception.Create('Não há títulos para gerar remessa');

   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DO ARQUIVO }

      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
         tiPessoaFisica  : ACedenteTipoInscricao := '1';
         tiPessoaJuridica: ACedenteTipoInscricao := '2';
         tiOutro         : ACedenteTipoInscricao := '3';
      end;

      if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
         Raise Exception.CreateFmt('O título (Nosso Número: %s) não pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

      Registro := Formatar(CodigoBanco,3,false,'0'); {1 a 3 - Código do banco}
      Registro := Registro + '0000'; {4 a 7 - Lote de serviço}
      Registro := Registro + '0'; {8 - Tipo de registro - Registro header de arquivo}
      Registro := Registro + Formatar('',9); {9 a 17 - Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + ACedenteTipoInscricao; {18 - Tipo de inscrição do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); {19 a 32 - Número de inscrição do cedente}

      {CÓDIGO DO CONVÊNIO = AGÊNCIA + NÚMERO CONVÊNIO + DV}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); {33 a 36 - Código da agência}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,11,false,'0'); {37 a 47 - Código do convênio no banco}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); {48 - Dígito do código do convênio no banco}

      Registro := Registro + Formatar('',4); {49 a 52 - Uso exclusivo CAIXA}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {53 a 57 - Código da agência do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); {58 - Dígito do código da agência do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {59 a 70 - Código da conta corrente vinculada à cobrança / não é o número da conta corrente comum}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); {71 - Dígito da conta corrente vinculada à cobrança}
      Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {72 - Dígito verificador da agência / conta do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); {73 a 102 - Nome do cedente}
      Registro := Registro + Formatar('CAIXA ECONOMICA FEDERAL',30,true,' '); {103 a 132 - Nome do banco}
      Registro := Registro + Formatar('',10); {133 a 142 - Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + '1'; {143 - Código de Remessa (1) / Retorno (2)}
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); {144 a 151 - Data do de geração do arquivo}
      Registro := Registro + FormatDateTime('hhmmss',DataArquivo);  {152 a 157 - Hora de geração do arquivo}
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),6,false,'0'); {158 a 163 Número seqüencial do arquivo}
      Registro := Registro + '030'; {164 a 166 - Número da versão do layout do arquivo}
      Registro := Registro + Formatar('',5,false,'0'); {167 a 171 - Densidade de gravação do arquivo (BPI)}
      Registro := Registro + Formatar('',20); {172 a 191 - Uso reservado do banco}
      if TipoMovimento = tmRemessaTeste then
         Registro := Registro + Formatar('REMESSA-TESTE',20) {192 a 211 - Deverá conter a literal REMESSA-TESTE para fase de testes}
      else
         Registro := Registro + Formatar('',20); {192 a 211 - Deverá conter a literal REMESSA-TESTE para fase de testes}
      Registro := Registro + Formatar('',29); {212 a 240 - Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      {GERAR REGISTRO HEADER DO LOTE}
      Registro := Formatar(CodigoBanco,3,false,'0'); {1a 3 - Código do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {4 a 7 - Número do lote de serviço}
      Registro := Registro + '1'; {8 - Tipo do registro - Registro header de lote}
      Registro := Registro + 'R'; {9 - Tipo de operação: R (Remessa) ou T (Retorno)}
      Registro := Registro + '01'; {10 a 11 - Tipo de serviço: 01 (Cobrança)}
      Registro := Registro + '00'; {12 a 13 - Forma de lançamento: preencher com ZEROS no caso de cobrança}
      Registro := Registro + '020'; {14 a 16 - Número da versão do layout do lote}
      Registro := Registro + ' '; {17 - Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + ACedenteTipoInscricao; {18 - Tipo de inscrição do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); {19 a 33 - Número de inscrição do cedente}

      {CÓDIGO DO CONVÊNIO = AGÊNCIA + NÚMERO CONVÊNIO + DV}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); {34 a 37 - Código da agência}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,11,false,'0'); {38 a 48 - Código do convênio no banco}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); {49 - Dígito do código do convênio no banco}

      Registro := Registro + Formatar('',4); {50 a 53 - Uso exclusivo CAIXA}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {54 a 58 - Código da agência do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); {59 - Dígito da agência do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {60 a 71 - Número da conta vinculada à cobrança / não é o número da conta corrente comum}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); {72 - Dígito do código do cedente no banco}
      Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {73 - Dígito verificador da agência / conta}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); {74 a 103 - Nome do cedente}
      Registro := Registro + Formatar('',40); {104 a 143 - Mensagem 1 para todos os boletos do lote}
      Registro := Registro + Formatar('',40); {144 a 183 - Mensagem 2 para todos os boletos do lote}
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),8,false,'0'); {184 a 191 - Número do arquivo}
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); {192 a 199 - Data de geração do arquivo}
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); {200 a 207 - Data do crédito - Informar a mesma data da gravação do arquivo}
      Registro := Registro + Formatar('',33); {208 a 240 - Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin

         if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
            Raise Exception.CreateFmt('O título (Nosso Número: %s) não pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

         {SEGMENTO P}
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo não pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '1';
            tiPessoaJuridica: ACedenteTipoInscricao := '2';
            tiOutro         : ACedenteTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); {1 a 3 - Código do banco}
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {4 a 7 - Número do lote}
         Registro := Registro + '3'; {8 - Tipo do registro: Registro detalhe}
         Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+1),5,false,'0'); {9 a 13 - Número seqüencial do registro no lote - Cada título tem 2 registros (P e Q)}
         Registro := Registro + 'P'; {14 - Código do segmento do registro detalhe}
         Registro := Registro + ' '; {15 - Uso exclusivo FEBRABAN/CNAB: Branco}
         case Titulos[NumeroRegistro].TipoOcorrencia of {16 a 17 - Código de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorrência inválida em remessa - Nosso número: %s / Seu número: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].TipoOcorrencia}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {18 a 22 - Agência mantenedora da conta}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); {23 - Dígito verificador da agência}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {24 a 35 - Número da conta vinculada à cobrança / não é o número da conta corrente comum}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); {36 - Dígito da conta vinculada à cobrança}
         Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {37 - Dígito verificador da agência / conta}
         Registro := Registro + Formatar('',9); {38 a 46 - Uso exclusivo CAIXA: Brancos}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,11,false,'0'); {47 a 57 - Nosso número - identificação do título no banco}
         Registro := Registro + '1'; {58 - Cobrança Simples}
         Registro := Registro + '1'; {59 - Forma de cadastramento do título no banco: com cadastramento}
         Registro := Registro + '2'; {60 - Tipo de documento: Escritural}
         case Titulos[NumeroRegistro].EmissaoBoleto of {61 a 62 - Quem emite e quem distribui o boleto?}
            ebBancoEmite      : Registro := Registro + '1' + '1';
            ebClienteEmite    : Registro := Registro + '2' + '2';
            ebBancoReemite    : Registro := Registro + '4' + '1';
            ebBancoNaoReemite : Registro := Registro + '5' + '2';
         else
            Raise Exception.CreateFmt('Identificação inválida de emissão de boleto em remessa - Nosso número: %s / Seu número: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].EmissaoBoleto}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,11,false,'0'); {63 a 73 - Número que identifica o título na empresa}
         Registro := Registro + Formatar('',4); {74 a 77 - Uso exclusivo CAIXA: Brancos}
         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); {78 a 85 - Data de vencimento do título}
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); {86 a 100 - Valor nominal do título}
         Registro := Registro + '00000'; {101 a 105 - Agência cobradora. Deixar zerado. A Caixa determinará automaticamente pelo CEP do sacado}
         Registro := Registro + '0'; {106 - Dígito da agência cobradora}
         case Titulos[NumeroRegistro].EspecieDocumento of {107 a 108 - Espécie do documento}
            edApoliceSeguro                : Registro := Registro + '20'; {AP  APÓLICE DE SEGURO}
            edCheque                       : Registro := Registro + '01'; {CH  CHEQUE}
            edDuplicataMercantil           : Registro := Registro + '02'; {DM  DUPLICATA MERCANTIL}
            edDuplicataMercantialIndicacao : Registro := Registro + '03'; {DMI DUPLICATA MERCANTIL P/ INDICAÇÃO}
            edDuplicataRural               : Registro := Registro + '06'; {DR  DUPLICATA RURAL}
            edDuplicataServico             : Registro := Registro + '04'; {DS  DUPLICATA DE SERVIÇO}
            edDuplicataServicoIndicacao    : Registro := Registro + '05'; {DSI DUPLICATA DE SERVIÇO P/ INDICAÇÃO}
            edFatura                       : Registro := Registro + '18'; {FAT FATURA}
            edLetraCambio                  : Registro := Registro + '07'; {LC  LETRA DE CÂMBIO}
            edMensalidadeEscolar           : Registro := Registro + '21'; {ME  MENSALIDADE ESCOLAR}
            edNotaCreditoComercial         : Registro := Registro + '08'; {NCC NOTA DE CRÉDITO COMERCIAL}
            edNotaCreditoExportacao        : Registro := Registro + '09'; {NCE NOTA DE CRÉDITO A EXPORTAÇÃO}
            edNotaCreditoIndustrial        : Registro := Registro + '10'; {NCI NOTA DE CRÉDITO INDUSTRIAL}
            edNotaCreditoRural             : Registro := Registro + '11'; {NCR NOTA DE CRÉDITO RURAL}
            edNotaDebito                   : Registro := Registro + '19'; {ND  NOTA DE DÉBITO}
            edNotaPromissoria              : Registro := Registro + '12'; {NP  NOTA PROMISSÓRIA}
            edNotaPromissoriaRural         : Registro := Registro + '13'; {NPR NOTA PROMISSÓRIA RURAL}
            edNotaSeguro                   : Registro := Registro + '16'; {NS  NOTA DE SEGURO}
            edParcelaConsorcio             : Registro := Registro + '22'; {PC  PARCELA DE CONSORCIO}
            edRecibo                       : Registro := Registro + '17'; {RC  RECIBO}
            edTriplicataMercantil          : Registro := Registro + '14'; {TM  TRIPLICATA MERCANTIL}
            edTriplicataServico            : Registro := Registro + '15' {TS  TRIPLICATA DE SERVIÇO}
         else
            Registro := Registro + '99'; {OUTROS}
         end; {case Titulos[NumeroRegistro].EspecieDocumento}
         case Titulos[NumeroRegistro].AceiteDocumento of {109 - Identificação de título Aceito / Não aceito}
            adSim : Registro := Registro + 'A';
            adNao : Registro := Registro + 'N';
         end; {case Titulos[NumeroRegistro].AceiteDocumento}
         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDocumento); {110 a 117 - Data da emissão do documento}
         if Titulos[NumeroRegistro].ValorMoraJuros > 0 then
         begin
            Registro := Registro + '1'; {118 - Código de juros de mora: Valor por dia}
            if Titulos[NumeroRegistro].DataMoraJuros <> null then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataMoraJuros) {119 a 126 - Data a partir da qual serão cobrados juros}
            else
               Registro := Registro + Formatar('',8,false,'0'); {119 a 126 - Data a partir da qual serão cobrados juros}
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); {127 a 141 - Valor de juros de mora por dia}
         end
         else
         begin
            Registro := Registro + '4'; {118 - Código de juros de mora: Acata cadastramento na CAIXA}
            Registro := Registro + Formatar('',8,false,'0'); {119 a 126 - Data a partir da qual serão cobrados juros}
            Registro := Registro + Formatar('',15,false,'0'); {127 a 141 - Valor de juros de mora por dia}
         end;
         if Titulos[NumeroRegistro].ValorDesconto > 0 then
         begin
            Registro := Registro + '1'; {142 - Código de desconto: Valor fixo até a data informada}
            if Titulos[NumeroRegistro].DataDesconto <> null then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDesconto) {143 a 150 - Data do desconto}
            else
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); {143 a 150 - se não houver desconto, deve ser informada a mesma data do vencimento}
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); {151 a 165 - Valor do desconto por dia}
         end
         else
         begin
            Registro := Registro + '0'; {142 - Código de desconto: Sem desconto}
            Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); {143 a 150 - se não houver desconto, deve ser informada a mesma data do vencimento}
            Registro := Registro + Formatar('',15,false,'0'); {151 a 165 - Valor do desconto por dia}
         end;
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorIOF * 100); {166 a 180 - Valor do IOF a ser recolhido}
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); {181 a 195 - Valor do abatimento}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25); {196 a 220 - Identificação do título na empresa}
         if (Titulos[NumeroRegistro].DataProtesto <> null) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; {221 - Código de protesto: Protestar em XX dias corridos}
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2,false,'0'); {222 a 223 - Prazo para protesto (em dias corridos)}
         end
         else
         begin
            Registro := Registro + '3'; {221 - Código de protesto: Não protestar}
            Registro := Registro + Formatar('',2,false,'0'); {222 a 223 - Prazo para protesto (em dias corridos)}
         end;
         if (Titulos[NumeroRegistro].DataBaixa <> null) and (Titulos[NumeroRegistro].DataBaixa > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; {224 - Código para baixa/devolução: Baixar/devolver}
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataBaixa,Titulos[NumeroRegistro].DataVencimento)),3,false,'0'); {225 a 227 - Prazo para baixa/devolução (em dias corridos)}
         end
         else
         begin
            Registro := Registro + '2'; {224 - Código para baixa/devolução: Não baixar/não devolver}
            Registro := Registro + Formatar('',3,false,'0'); {Prazo para baixa/devolução (225 a 227 - em dias corridos)}
         end;
         Registro := Registro + '09'; {228 a 229 - Código da moeda: Real}
         Registro := Registro + Formatar('',10); {230 a 239 - Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',1); {240 - Uso exclusivo FEBRABAN/CNAB}

         Remessa.Add(Registro);
         Registro := '';

         {SEGMENTO Q}
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '1';
            tiPessoaJuridica: ASacadoTipoInscricao := '2';
            tiOutro         : ASacadoTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); {Código do banco}
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {Número do lote}
         Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
         Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+2),5,false,'0'); {Número seqüencial do registro no lote - Cada título tem 2 registros (P e Q)}
         Registro := Registro + 'Q'; {Código do segmento do registro detalhe}
         Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
         case Titulos[NumeroRegistro].TipoOcorrencia of {Código de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorrência inválida em remessa - Nosso número: %s / Seu número: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].TipoOcorrencia}
         {Dados do sacado}
         Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,15,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,15);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         {Dados do sacador/avalista}
         Registro := Registro + '0'; {Tipo de inscrição: Não informado}
         Registro := Registro + Formatar('',15,false,'0'); {Número de inscrição}
         Registro := Registro + Formatar('',40); {Nome do sacador/avalista}

         Registro := Registro + Formatar('',3); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',20); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',8); {Uso exclusivo FEBRABAN/CNAB}

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end; {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}

      {REGISTRO TRAILER DO LOTE}
      Registro := Formatar(CodigoBanco,3,false,'0'); {Código do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {Número do lote}
      Registro := Registro + '5'; {Tipo do registro: Registro trailer do lote}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      {Quantidade de registros do lote, incluindo header e trailer do lote.
       Até este momento Remessa contém:
       1 registro header de arquivo - É preciso excluí-lo desta contagem
       1 registro header de lote
       Diversos registros detalhe
       Falta incluir 1 registro trailer de lote
       Ou seja Quantidade = Remessa.Count - 1 header de arquivo + 1 trailer de lote = Remessa.Count}
      Registro := Registro + Formatar(IntToStr(Remessa.Count),6,false,'0');
      {Totalização da cobrança simples - Só é usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade títulos em cobrança}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos títulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',23); {Uso exclusivo FEBRABAN/CNAB}
      {Totalização da cobrança caucionada - Só é usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade títulos em cobrança}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos títulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',31); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',117); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      {GERAR REGISTRO TRAILER DO ARQUIVO}
      Registro := Formatar(CodigoBanco,3,false,'0'); {Código do banco}
      Registro := Registro + '9999'; {Lote de serviço}
      Registro := Registro + '9'; {Tipo do registro: Registro trailer do arquivo}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar(IntToStr(NumeroLote),6,false,'0'); {Quantidade de lotes do arquivo}
      Registro := Registro + Formatar(IntToStr(Remessa.Count + 1),6,false,'0'); {Quantidade de registros do arquivo, inclusive este registro que está sendo criado agora}
      Registro := Registro + Formatar('',6); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',205); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
   end;

   Result := TRUE;
end;

function TgbBanco104.GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   Remessa.Clear;

   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DA REMESSA }

      Remessa.Add('01REMESSA'+'01'+Formatar('COBRANCA',15)+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,11,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1)+Formatar('',4)+Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+Formatar('C ECON FEDERAL',15,true,' ')+FormatDateTime('ddmmyy',DataArquivo)+Formatar('',289)+Formatar(IntToStr(NumeroArquivo),5,false,'0')+'000001');

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo não pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);
         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '01';
            tiPessoaJuridica: ACedenteTipoInscricao := '02';
            tiOutro         : ACedenteTipoInscricao := '03';
         end;
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '01';
            tiPessoaJuridica: ASacadoTipoInscricao := '02';
            tiOutro         : ASacadoTipoInscricao := '03';
         end;

         Registro := '1';
         Registro := Registro + Formatar(ACedenteTipoInscricao,2,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,11,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1);
         Registro := Registro + Formatar('',2);
         Registro := Registro + '00';
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' ');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,10,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].DigitoNossoNumero,1,false,'0');
         Registro := Registro + Formatar('',3);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes.Text,30);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,2,false,'0');
         Registro := Registro + '01';
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,10);
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento);
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
         Registro := Registro + Formatar('',5,false,'0');
         Registro := Registro + '09';
         Registro := Registro + 'N';
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento);
         Registro := Registro + Formatar(' ',4);
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(' ',6,false,'0');
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         Registro := Registro + Formatar('',6,false,'0');
         Registro := Registro + Formatar('',10,false,'0');
         Registro := Registro + Formatar('',22);
         Registro := Registro + '00';
         Registro := Registro + '00';
         Registro := Registro + '1';
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0');

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end;

      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+Formatar('',393,true,' ')+Formatar(IntToStr(NumeroRegistro+2),6,false,'0'));
   end;

   Result := TRUE;
end;

function TgbBanco104.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;

function TgbBanco104.LerRetornoCNAB240(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao,
   ANumeroCPFCGC,
   ACodigoCedente,
   ADigitoCodigoCedente,
   ACodigoAgencia,
   ADigitoCodigoAgencia,
   ANumeroConta,
   ADigitoNumeroConta : string;
   NumeroRegistro : integer;
   ATitulo : TgbTitulo;
begin
   NumeroRegistro := 0;
   ATitulo := TgbTitulo.Create(nil);

   TRY

      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count < 4 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         if length(Retorno[0]) <> 240 then
         begin
            LayoutArquivo := laOutro;
            Raise Exception.CreateFmt('Tamanho de registro diferente de 240 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
         end;

         LayoutArquivo := laCNAB240;

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],143,1) <> '2' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança com layout CNAB240');

         { Lê registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],1,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);

         if Copy(Retorno.Strings[NumeroRegistro],8,1) <> '0' then
            Raise Exception.Create('Este não é um registro HEADER válido para arquivo de retorno de cobrança com layout CNAB240');

         {Dados do cedente do título}
         ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],18,1);
         ANumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],19,14);
         ACodigoCedente := Copy(Retorno.Strings[NumeroRegistro],33,15);
         ADigitoCodigoCedente := Copy(Retorno.Strings[NumeroRegistro],48,1);
         ACodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],53,5);
         ADigitoCodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],58,1);
         ANumeroConta := Copy(Retorno.Strings[NumeroRegistro],59,12);
         ADigitoNumeroConta := Copy(Retorno.Strings[NumeroRegistro],71,1);
         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],73,30));

         NumeroRegistro := 1;

         {Lê registro HEADER DE LOTE}
         {Verifica se é um lote de retorno de cobrança}
         if Copy(Retorno.Strings[NumeroRegistro],9,3) <> 'T01' then
            Raise Exception.Create('Este não é um lote de retorno de cobrança');

         if Formatar(Copy(Retorno.Strings[NumeroRegistro],192,8),8,false,'0') <> '00000000' then
            DataArquivo := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],196,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],194,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],192,2)))
         else
            DataArquivo := 0;

         if Formatar(Copy(Retorno.Strings[NumeroRegistro],184,8),8,false,'0') <> '00000000' then
            NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],184,8)))
         else
            NumeroArquivo := 0;

         {Lê os registros DETALHE}
         NumeroRegistro := NumeroRegistro + 1;
         {Lê até o antepenúltimo registro porque o penúltimo contém apenas o TRAILER DO LOTE e o último contém apenas o TRAILER DO ARQUIVO}
         while (NumeroRegistro < Retorno.Count - 2) do
         begin
            {Registro detalhe com tipo de segmento = T}
            if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'T' then
            begin
               {Dados do titulo}
               with ATitulo do
               begin
                  OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],16,2);
                  {Tipo de ocorrência}
                  case StrToInt(OcorrenciaOriginal) of
                     2 : TipoOcorrencia := toRetornoRegistroConfirmado;
                     3 : TipoOcorrencia := toRetornoRegistroRecusado;
                     6 : TipoOcorrencia := toRetornoLiquidado;
                     9 : TipoOcorrencia := toRetornoBaixado;
                     12: TipoOcorrencia := toRetornoRecebimentoInstrucaoConcederAbatimento;
                     13: TipoOcorrencia := toRetornoRecebimentoInstrucaoCancelarAbatimento;
                     14: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarVencimento;
                     17: TipoOcorrencia := toRetornoLiquidado;
                     19: TipoOcorrencia := toRetornoRecebimentoInstrucaoProtestar;
                     20: TipoOcorrencia := toRetornoRecebimentoInstrucaoSustarProtesto;
                     23: TipoOcorrencia := toRetornoEncaminhadoACartorio;
                     24: TipoOcorrencia := toRetornoRetiradoDeCartorio;
                     25: TipoOcorrencia := toRetornoProtestado;
                     26: TipoOcorrencia := toRetornoComandoRecusado;
                     27: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarDados;
                     28: TipoOcorrencia := toRetornoDebitoTarifas;
                     30: TipoOcorrencia := toRetornoRegistroRecusado;
                     36: TipoOcorrencia := toRetornoRecebimentoInstrucaoConcederDesconto;
                     37: TipoOcorrencia := toRetornoRecebimentoInstrucaoCancelarDesconto;
                     43: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                     44: TipoOcorrencia := toRetornoBaixaOuLiquidacaoEstornada;
                     45: TipoOcorrencia := toRetornoDadosAlterados;
                  else
                     TipoOcorrencia := toRetornoOutrasOcorrencias;
                  end; {case StrToInt(OcorrenciaOriginal)}

                  if (TipoOcorrencia = toRetornoRegistroRecusado) or (TipoOcorrencia = toRetornoComandoRecusado) then
                  begin
                     MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],214,2);
                     case StrToInt(MotivoRejeicaoComando) of
                        01 : MotivoRejeicaoComando := '01 - Codigo do banco invalido';
                        02 : MotivoRejeicaoComando := '02 - Código do registro invalido';
                        03 : MotivoRejeicaoComando := '03 - Código do segmento invalido';
                        05 : MotivoRejeicaoComando := '05 - Código de movimento invalido';
                        06 : MotivoRejeicaoComando := '06 - Tipo/numero de inscricao do cedente invalidos';
                        07 : MotivoRejeicaoComando := '07 - Agência/Conta/DV invalido';
                        08 : MotivoRejeicaoComando := '08 - Nosso numero invalido';
                        09 : MotivoRejeicaoComando := '09 - Nosso numero duplicado';
                        10 : MotivoRejeicaoComando := '10 - Carteira invalida';
                        11 : MotivoRejeicaoComando := '11 - Forma de cadastramento do titulo invalido';
                        12 : MotivoRejeicaoComando := '12 - Tipo de documento invalido';
                        13 : MotivoRejeicaoComando := '13 - Identificacao da emissao do bloqueto invalida';
                        14 : MotivoRejeicaoComando := '14 - Identificacao da distribuicao do bloqueto invalida';
                        15 : MotivoRejeicaoComando := '15 - Caracteristicas da cobrança incompativeis';
                        16 : MotivoRejeicaoComando := '16 - Data de vencimento invalida';
                        20 : MotivoRejeicaoComando := '20 - Valor do titulo invalido';
                        21 : MotivoRejeicaoComando := '21 - Especie do titulo invalida';
                        23 : MotivoRejeicaoComando := '23 - Aceite invalido';
                        24 : MotivoRejeicaoComando := '24 - Data da emissao invalida';
                        26 : MotivoRejeicaoComando := '26 - Codigo de juros de mora invalido';
                        27 : MotivoRejeicaoComando := '27 - Valor/Taxa de juros de mora invalido';
                        28 : MotivoRejeicaoComando := '28 - Codigo do desconto invalido';
                        29 : MotivoRejeicaoComando := '29 - Valor do desconto maior ou igual ao valor do titulo';
                        30 : MotivoRejeicaoComando := '30 - Desconto a conceder nao confere';
                        32 : MotivoRejeicaoComando := '32 - Valor do IOF invalido';
                        33 : MotivoRejeicaoComando := '33 - Valor do abatimento invalido';
                        37 : MotivoRejeicaoComando := '37 - Codigo para protesto invalido';
                        38 : MotivoRejeicaoComando := '38 - Prazo para protesto invalido';
                        40 : MotivoRejeicaoComando := '40 - Titulo com ordem de protesto emitida';
                        42 : MotivoRejeicaoComando := '42 - Codigo para baixa/devolucao invalido';
                        43 : MotivoRejeicaoComando := '43 - Prazo para baixa/devolucao invalido';
                        44 : MotivoRejeicaoComando := '44 - Codigo da moeda invalido';
                        45 : MotivoRejeicaoComando := '45 - Nome do sacado nao informado';
                        46 : MotivoRejeicaoComando := '46 - Tipo/numero de inscricao do sacado invalidos';
                        47 : MotivoRejeicaoComando := '47 - Endereco do sacado não informado';
                        48 : MotivoRejeicaoComando := '48 - CEP invalido';
                        49 : MotivoRejeicaoComando := '49 - CEP sem praca de cobranca (nao localizado)';
                        52 : MotivoRejeicaoComando := '52 - Unidade da federacao invalida';
                        53 : MotivoRejeicaoComando := '53 - Tipo/numero de inscricao do sacador/avalista invalidos';
                        57 : MotivoRejeicaoComando := '57 - Codigo da multa invalido';
                        58 : MotivoRejeicaoComando := '58 - Data da multa invalida';
                        59 : MotivoRejeicaoComando := '59 - Valor/Percentual da multa invalido';
                        60 : MotivoRejeicaoComando := '60 - Movimento para titulo nao cadastrado';
                        61 : MotivoRejeicaoComando := '61 - Agencia cobradora invalida';
                        62 : MotivoRejeicaoComando := '62 - Tipo de impressao invalido';
                        63 : MotivoRejeicaoComando := '63 - Entrada para titulo ja cadastrado';
                        68 : MotivoRejeicaoComando := '68 - Movimentacao invalida para o titulo';
                        69 : MotivoRejeicaoComando := '69 - Alteracao de dados invalida';
                        70 : MotivoRejeicaoComando := '70 - Apelido do cliente nao cadastrado';
                        71 : MotivoRejeicaoComando := '71 - Erro na composição do arquivo';
                        72 : MotivoRejeicaoComando := '72 - Lote de servico invalido';
                        73 : MotivoRejeicaoComando := '73 - Codigo do cedente invalido';
                        74 : MotivoRejeicaoComando := '74 - Cedente nao pertence a cobranca eletronica/apelido nao confere com cedente';
                        75 : MotivoRejeicaoComando := '75 - Nome da empresa invalido';
                        76 : MotivoRejeicaoComando := '76 - Nome do banco invalido';
                        77 : MotivoRejeicaoComando := '77 - Codigo da remessa invalido';
                        78 : MotivoRejeicaoComando := '78 - Data/Hora de geracao do arquivo invalida';
                        79 : MotivoRejeicaoComando := '79 - Numero sequencial do arquivo invalido';
                        80 : MotivoRejeicaoComando := '80 - Numero da versao do Layout do arquivo/lote invalido';
                        81 : MotivoRejeicaoComando := '81 - Literal ''REMESSA-TESTE'' valida somente para fase de testes';
                        82 : MotivoRejeicaoComando := '82 - Literal ''REMESSA-TESTE'' obrigatorio para fase de testes';
                        83 : MotivoRejeicaoComando := '83 - Tipo/numero de inscricao da empresa invalidos';
                        84 : MotivoRejeicaoComando := '84 - Tipo de operacao invalido';
                        85 : MotivoRejeicaoComando := '85 - Tipo de servico invalido';
                        86 : MotivoRejeicaoComando := '86 - Forma de lancamento invalido';
                        87 : MotivoRejeicaoComando := '87 - Numero da remessa invalido';
                        88 : MotivoRejeicaoComando := '88 - Numero da remessa menor/igual que da remessa anterior';
                        89 : MotivoRejeicaoComando := '89 - Lote de servico divergente';
                        90 : MotivoRejeicaoComando := '90 - Numero sequencial do registro invalido';
                        91 : MotivoRejeicaoComando := '91 - Erro na sequência de segmento do registro detalhe';
                        92 : MotivoRejeicaoComando := '92 - Código de movimento divergente entre grupo de segmentos';
                        93 : MotivoRejeicaoComando := '93 - Quantidade de registros no lote invalido';
                        94 : MotivoRejeicaoComando := '94 - Quantidade de registros no lote divergente';
                        95 : MotivoRejeicaoComando := '95 - Quantidade de lotes do arquivo invalido';
                        96 : MotivoRejeicaoComando := '96 - Quantidade de lotes no arquivo divergente';
                        97 : MotivoRejeicaoComando := '97 - Quantidade de registros no arquivo invalido';
                        98 : MotivoRejeicaoComando := '98 - Quantidade de registros no arquivo divergente';
                     else
                        MotivoRejeicaoComando := MotivoRejeicaoComando + ' - Outros motivos'
                     end; {case MotivoRejeicaoComando of}
                  end; {if TipoOcorrencia...}



                  {Nosso número SEM DÍGITO}
                  NossoNumero := Copy(Retorno.Strings[NumeroRegistro],47,10);
                  SeuNumero := Copy(Retorno.Strings[NumeroRegistro],59,11);

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],74,8),8,false,'0') <> '00000000' then
                     DataVencimento := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],78,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],76,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],74,2)))
                  else
                     DataVencimento := 0;

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],82,15),15,false,'0') <> '000000000000000' then
                     ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],82,15))/100
                  else
                     ValorDocumento := 0.0;

                  {Dados do cedente do título}
                  with Cedente do
                  begin
                     if ATipoInscricao = '1' then
                        TipoInscricao := tiPessoaFisica
                     else if ATipoInscricao = '2' then
                        TipoInscricao := tiPessoaJuridica
                     else
                        TipoInscricao := tiOutro;
                     NumeroCPFCGC := ANumeroCPFCGC;
                     CodigoCedente := ACodigoCedente;
                     DigitoCodigoCedente := ADigitoCodigoCedente;
                     with ContaBancaria do
                     begin
                        Banco.Codigo := ACodigoBanco;
                        CodigoAgencia := ACodigoAgencia;
                        DigitoAgencia := ADigitoCodigoAgencia;
                        NumeroConta := ANumeroConta;
                        DigitoConta := ADigitoNumeroConta;
                     end;
                     Nome := ANomeCedente;
                  end; {with ACedente}

                  {Dados do sacado do título}
                  with Sacado do
                  begin
                     if Copy(Retorno.Strings[NumeroRegistro],133,1) = '1' then
                        TipoInscricao := tiPessoaFisica
                     else if Copy(Retorno.Strings[NumeroRegistro],133,1) = '2' then
                        TipoInscricao := tiPessoaJuridica
                     else
                        TipoInscricao := tiOutro;
                     NumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],135,14);
                     Nome := Trim(Copy(Retorno.Strings[NumeroRegistro],149,40));
                  end; {with ACedente}

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],199,15),15,false,'0') <> '000000000000000' then
                     ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],199,15))/100
                  else
                     ValorDespesaCobranca := 0.0

               end; {with ATitulo}

               NumeroRegistro := NumeroRegistro + 1;
            end; {if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'T'}

            {Registro detalhe com tipo de segmento = U}
            if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'U' then
            begin
               with ATitulo do
               begin
                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],18,15),15,false,'0') <> '000000000000000' then
                     ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],18,15))/100
                  else
                     ValorMoraJuros := 0.0;

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],33,15),15,false,'0') <> '000000000000000' then
                     ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],33,15))/100
                  else
                     ValorDesconto := 0.0;

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],48,15),15,false,'0') <> '000000000000000' then
                     ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],48,15))/100
                  else
                     ValorAbatimento := 0.0;

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],63,15),15,false,'0') <> '000000000000000' then
                     ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],63,15))/100
                  else
                     ValorIOF := 0.0;

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],108,15),15,false,'0') <> '000000000000000' then
                     ValorOutrasDespesas := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],108,15)))/100
                  else
                     ValorOutrasDespesas := 0.0;

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],123,15),15,false,'0') <> '000000000000000' then
                     ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],123,15)))/100
                  else
                     ValorOutrosCreditos := 0.0;

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],138,8),8,false,'0') <> '00000000' then
                     DataOcorrencia := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],142,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],140,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],138,2)))
                  else
                     DataOcorrencia := 0;

                  if Formatar(Copy(Retorno.Strings[NumeroRegistro],146,8),8,false,'0') <> '00000000' then
                     DataCredito := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],150,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],148,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],146,2)))
                  else
                     DataCredito := 0;

               end; {with ATitulo}

               NumeroRegistro := NumeroRegistro + 1;
            end; {if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'U'}


            {Insere o título}
            Titulos.Add(ATitulo);
         end;
      end;

      ATitulo.Free;
      Result := TRUE
   EXCEPT
      ATitulo.Free;
      Result := FALSE;
      Raise; {Propaga o erro}
   END;
end;


function TgbBanco104.LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao : string;
   NumeroRegistro : integer;
   ATitulo : TgbTitulo;
begin
   NumeroRegistro := 0;
   ATitulo := TgbTitulo.Create(nil);

   TRY

      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count < 3 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         if length(Retorno[0]) <> 400 then
         begin
            LayoutArquivo := laOutro;
            Raise Exception.CreateFmt('Tamanho de registro diferente de 400 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
         end;

         LayoutArquivo := laCNAB400;

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança com layout CNAB400');

         { Lê registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);

         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));

         if Formatar(Copy(Retorno.Strings[NumeroRegistro],95,6),6,false,'0') <> '000000' then
            if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
               DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
            else
               DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := null;

         if Formatar(Copy(Retorno.Strings[NumeroRegistro],390,5),5,false,'0') <> '00000' then
            NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],390,5)))
         else
            NumeroArquivo := 0;

         {Lê os registros DETALHE}
         {Processa até o penúltimo registro porque o último contém apenas o TRAILLER}
         for NumeroRegistro := 1 to (Retorno.Count - 2) do
         begin
            {Confirmar se o tipo do registro é 1}
            if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
               Continue; {Não processa o registro atual}

            { Ler títulos do arquivo retorno}
            {Dados do titulo}
            with ATitulo do
            begin
               {Dados do cedente do título}
               with Cedente do
               begin
                  ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],2,2);
                  if ATipoInscricao = '01' then
                     TipoInscricao := tiPessoaFisica
                  else if ATipoInscricao = '02' then
                     TipoInscricao := tiPessoaJuridica
                  else
                     TipoInscricao := tiOutro;
                  NumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],4,14);
                  ContaBancaria.Banco.Codigo := ACodigoBanco;
                  Nome := ANomeCedente;
               end; {with ACedente}

               NumeroDocumento := Copy(Retorno.Strings[NumeroRegistro],38,25);

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],111,6),6,false,'0') <> '000000' then
                  if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                     DataOcorrencia := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
                  else
                     DataOcorrencia := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataOcorrencia := 0;

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],153,13),13,false,'0') <> '0000000000000' then
                  ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100
               else
                  ValorDocumento := 0.0;

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],215,13),13,false,'0') <> '0000000000000' then
                  ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100
               else
                  ValorIOF := 0.0;

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],228,13),13,false,'0') <> '0000000000000' then
                  ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100
               else
                  ValorAbatimento := 0.0;

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],241,13),13,false,'0') <> '0000000000000' then
                  ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],241,13))/100
               else
                  ValorDesconto := 0.0;

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],267,13),13,false,'0') <> '0000000000000' then
                  ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100
               else
                  ValorMoraJuros := 0.0;

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],280,13),13,false,'0') <> '0000000000000' then
                  ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)))/100
               else
                  ValorOutrosCreditos := 0.0;

               {Dados que variam de acordo com o banco}

               {Nosso número SEM DÍGITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,10);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],18,4);
               Cedente.ContaBancaria.NumeroConta := Copy(Retorno.Strings[NumeroRegistro],22,11);
               Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],33,1);

               {Tipo de ocorrência}
               OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],109,2);
               case StrToInt(OcorrenciaOriginal) of
                  01: TipoOcorrencia := toRetornoRegistroConfirmado;
                  02: TipoOcorrencia := toRetornoBaixado;
                  03: TipoOcorrencia := toRetornoAbatimentoConcedido;
                  04: TipoOcorrencia := toRetornoAbatimentoCancelado;
                  05: TipoOcorrencia := toRetornoVencimentoAlterado;
                  06: TipoOcorrencia := toRetornoDadosAlterados;
                  07: TipoOcorrencia := toRetornoDadosAlterados;
                  08: TipoOcorrencia := toRetornoDadosAlterados;
                  09: TipoOcorrencia := toRetornoDadosAlterados;
                  10: TipoOcorrencia := toRetornoDadosAlterados;
                  11: TipoOcorrencia := toRetornoDadosAlterados;
                  12: TipoOcorrencia := toRetornoDadosAlterados;
                  20: TipoOcorrencia := toRetornoTituloEmSer;
                  21: TipoOcorrencia := toRetornoLiquidado;
                  22: TipoOcorrencia := toRetornoLiquidadoEmCartorio;
                  23: TipoOcorrencia := toRetornoBaixadoPorDevolucao;
                  24: TipoOcorrencia := toRetornoBaixadoFrancoPagamento;
                  25: TipoOcorrencia := toRetornoBaixaPorProtesto;
                  26: TipoOcorrencia := toRetornoEncaminhadoACartorio;
                  27: TipoOcorrencia := toRetornoProtestoSustado;
                  28: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                  29: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                  30: TipoOcorrencia := toRetornoDadosAlterados;
                  31: TipoOcorrencia := toRetornoManutencaoTituloVencido;
                  32: TipoOcorrencia := toRetornoDebitoTarifas;
                  33: TipoOcorrencia := toRetornoBaixaOuLiquidacaoEstornada;
                  99: TipoOcorrencia := toRetornoRegistroRecusado;
               else
                  TipoOcorrencia := toRetornoOutrasOcorrencias;
               end; {case StrToInt(ATipoOcorrencia)}

               if (TipoOcorrencia = toRetornoRegistroRecusado) or (TipoOcorrencia = toRetornoComandoRecusado) then
               begin
                  MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],80,3);
                  case StrToInt(MotivoRejeicaoComando) of
                     01 : MotivoRejeicaoComando := '01 - Movimento sem Cedente Correspondente';
                     02 : MotivoRejeicaoComando := '02 - Movimento sem Titulo Correspondente';
                     08 : MotivoRejeicaoComando := '08 - Movimento para Titulo já com Movimentacao no dia';
                     09 : MotivoRejeicaoComando := '09 - Nosso Numero nao Pertence ao Cedente';
                     10 : MotivoRejeicaoComando := '10 - Inclusao de Titulo ja Existente';
                     12 : MotivoRejeicaoComando := '12 - Movimento  Duplicado';
                     13 : MotivoRejeicaoComando := '13 - Entrada Invalida para Cobranca Caucionada (Cedente nao possui conta Caucao)';
                     20 : MotivoRejeicaoComando := '20 - CEP do Sacado nao Encontrado (Nao foi possivel a Determinacao da Agencia Cobradora para o Titulo)';
                     21 : MotivoRejeicaoComando := '21 - Agencia Cobradora nao Encontrada (Agencia Designada para Cobradora nao Cadastrada no Sistema)';
                     45 : MotivoRejeicaoComando := '45 - Data de Vencimento com prazo mais de 1 ano';
                     49 : MotivoRejeicaoComando := '49 - Movimento Invalido para Titulo Baixado/Liquidado';
                     50 : MotivoRejeicaoComando := '50 - Movimento Invalido para Titulo Protestado';
                     54 : MotivoRejeicaoComando := '54 - Faixa de CEP da Agencia Cobradora nao Abrange CEP do Sacado';
                     55 : MotivoRejeicaoComando := '55 - Titulo ja com Opcao de Devolucao';
                     56 : MotivoRejeicaoComando := '56 - Processo de Protesto em Andamento';
                     57 : MotivoRejeicaoComando := '57 - Titulo ja com Opcao de Protesto';
                     58 : MotivoRejeicaoComando := '58 - Processo de Devolucao em Andamento';
                     59 : MotivoRejeicaoComando := '59 - Novo Prazo p/ Protesto/ Devolucao Invalido';
                     76 : MotivoRejeicaoComando := '76 - Alteracao de Prazo de Protesto Invalida';
                     77 : MotivoRejeicaoComando := '77 - Alteracao de  Prazo  de  Devolução  Inválida';
                     81 : MotivoRejeicaoComando := '81 - CEP  do  Sacado  Inválido';
                     82 : MotivoRejeicaoComando := '82 - CGC/CPF  do  Sacado  Inválido  (Dígito  não  Confere)';
                  else
                     MotivoRejeicaoComando := MotivoRejeicaoComando + ' - Outros motivos'
                  end; {case MotivoRejeicaoComando of}
               end; {if TipoOcorrencia...}

               Carteira := Copy(Retorno.Strings[NumeroRegistro],107,2);

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],176,13),13,false,'0') <> '0000000000000' then
                  ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],176,13))/100
               else
                  ValorDespesaCobranca := 0.0;

               if Formatar(Copy(Retorno.Strings[NumeroRegistro],294,6),6,false,'0') <> '000000' then
                  if StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)) <= 69 then
                     DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],298,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],294,2)))
                  else
                     DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],298,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],294,2)))
               else
                  DataCredito := 0;

            end; {with ATitulo}

            {Insere o título}
            Titulos.Add(ATitulo);
         end;
      end;

      ATitulo.Free;
      Result := TRUE
   EXCEPT
      ATitulo.Free;
      Result := FALSE;
      Raise; {Propaga o erro}
   END;
end;


function TgbBanco104.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
begin
   TRY
      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         case length(Retorno[0]) of
            240 :
               begin
                  LayoutArquivo := laCNAB240;
                  Result := LerRetornoCNAB240(ACobranca, Retorno);
               end;
            400 :
               begin
                  LayoutArquivo := laCNAB400;
                  Result := LerRetornoCNAB400(ACobranca, Retorno);
               end
         else
            begin
               LayoutArquivo := laOutro;
               Raise Exception.CreateFmt('Tamanho de registro inválido: %d',[length(Retorno[0])]);
            end;
         end; {case length(Retorno[0])}
      end; {with ACobranca}
   EXCEPT
      Result := FALSE;
      Raise; {Propaga o erro}
   END;
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco104);

end.
