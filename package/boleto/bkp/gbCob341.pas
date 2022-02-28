unit gbCob341;

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
   CodigoBanco = '341';
   NomeBanco = 'Banco Itaú S.A.';

type

   TgbBanco341 = class(TPersistent)
{$IFNDEF VER120}
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String; //@w
      function VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String; //@w
//      function GerarRemessaCNAB240(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
      function GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
//      function LerRetornoCNAB240(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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


function TgbBanco341.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco341.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ACodigoAgencia,
   ANumeroConta,
   ACarteira,
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   with ATitulo do
   begin
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
      ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,5,false,'0');
      ACarteira := Formatar(Carteira,3,false,'0');
      ANossoNumero := Formatar(NossoNumero,8,false,'0');
   end;

   ADigitoNossoNumero := Modulo10(ACodigoAgencia + ANumeroConta + ACarteira + ANossoNumero);

   Result := ADigitoNossoNumero;
end;

function TgbBanco341.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ACarteira,
   ANossoNumero,
   ADigitoNossoNumero,
   ACodigoAgencia,
   ANumeroConta,
   ADigitoAgenciaConta: string;
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
      ACarteira := Formatar(Carteira,3,false,'0');
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
      ANossoNumero := Formatar(NossoNumero,8,false,'0');
      ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,5,false,'0');
      ADigitoNossoNumero := Modulo10(ACodigoAgencia + ANumeroConta + ACarteira + ANossoNumero);
      ADigitoAgenciaConta := Modulo10(ACodigoAgencia + ANumeroConta);
   end;

   Result := ACarteira + ANossoNumero + ADigitoNossoNumero + ACodigoAgencia + ANumeroConta + ADigitoAgenciaConta + '000';
end;

procedure TgbBanco341.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '/' + Formatar(Cedente.CodigoCedente,5,false,'0') + '-' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(Carteira,3,false,'0') + '/' + Formatar(NossoNumero,8,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3,false,'0');
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco341.GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   ATipoOcorrencia,
   AEspecieDocumento,
   Registro : string;
   NumeroRegistro : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   Remessa.Clear;

   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DA REMESSA }

      Remessa.Add('0'+ // IDENTIFICAÇÃO DO REGISTRO HEADER
                  '1'+ // TIPO DE OPERAÇÃO - REMESSA
                  'REMESSA'+ // IDENTIFICAÇÃO POR EXTENSO DO MOVIMENTO
                  '01'+ // IDENTIFICAÇÃO DO TIPO DE SERVIÇO
                  Formatar('COBRANCA',15)+ // IDENTIFICAÇÃO POR EXTENSO DO TIPO DE SERVIÇO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0')+ // AGÊNCIA MANTENEDORA DA CONTA
                  '00'+ // COMPLEMENTO DE REGISTRO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,5,false,'0')+ // NÚMERO DA CONTA CORRENTE DA EMPRESA
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1)+ // DÍGITO DE AUTO CONFERÊNCIA AG/CONTA EMPRESA
                  Formatar('',8)+ // COMPLEMENTO DO REGISTRO 
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ //  NOME POR EXTENSO DA "EMPRESA MÃE"
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // Nº DO BANCO NA CÂMARA DE COMPENSAÇÃO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Nome,15,true,' ')+ // NOME POR EXTENSO DO BANCO COBRADOR
                  FormatDateTime('ddmmyy',DataArquivo)+ // DATA DE GERAÇÃO DO ARQUIVO
                  Formatar('',294)+ // COMPLEMENTO DO REGISTRO
                  '000001'); // NÚMERO SEQÜENCIAL DO REGISTRO NO ARQUIVO 

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

         Registro := '1'; // IDENTIFICAÇÃO DO REGISTRO TRANSAÇÃO
         Registro := Registro + Formatar(ACedenteTipoInscricao,2,false,'0'); // TIPO DE INSCRIÇÃO DA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); // Nº DE INSCRIÇÃO DA EMPRESA (CPF/CGC)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); // AGÊNCIA MANTENEDORA DA CONTA
         Registro := Registro + '00'; // COMPLEMENTO DE REGISTRO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,5,false,'0'); // NÚMERO DA CONTA CORRENTE DA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1); // DÍGITO DE AUTO CONFERÊNCIA AG/CONTA EMPRESA
         Registro := Registro + Formatar('',8,true,' '); // COMPLEMENTO DE REGISTRO/CÓD.INSTRUÇÃO/ALEGAÇÃO A SER CANCELADA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); // IDENTIFICAÇÃO DO TÍTULO NA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,8,false,'0'); // IDENTIFICAÇÃO DO TÍTULO NO BANCO
         Registro := Registro + Formatar('',13,false,'0'); // QUANTIDADE DE MOEDA VARIÁVEL
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,3,false,'0'); // NÚMERO DA CARTEIRA NO BANCO
         Registro := Registro + Formatar('',21); // IDENTIFICAÇÃO DA OPERAÇÃO NO BANCO
         Registro := Registro + 'I'; // CÓDIGO DA CARTEIRA 

         {Tipo de ocorrência}
         case Titulos[NumeroRegistro].TipoOcorrencia of
            toRemessaRegistrar : ATipoOcorrencia := '01';
            toRemessaBaixar : ATipoOcorrencia := '02';
            toRemessaConcederAbatimento : ATipoOcorrencia := '04';
            toRemessaCancelarAbatimento : ATipoOcorrencia := '05';
            toRemessaAlterarVencimento : ATipoOcorrencia := '06';
//            toRemessaAlterarUsoEmpresa: ATipoOcorrencia := '07';
//            toRemessaAlterarSeuNumero: ATipoOcorrencia := '08';
            toRemessaProtestar : ATipoOcorrencia := '09';
//            toRemessaNaoProtestar: ATipoOcorrencia := '10';
            toRemessaCancelarInstrucaoProtesto : ATipoOcorrencia := '18';
//            toRemessaAlterarOutrosDados: ATipoOcorrencia := '31';
//            toRemessaBaixarPagoCedente: ATipoOcorrencia := '34';
            toRemessaDispensarJuros : ATipoOcorrencia := '47';
         else
            Raise Exception.CreateFmt('Ocorrência inválida em remessa - Nosso número: %s / Seu número: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end;
         Registro := Registro + ATipoOcorrencia; // IDENTIFICAÇÃO DA OCORRÊNCIA

         Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,10); // Nº DO DOCUMENTO DE COBRANÇA (DUPL.,NP ETC.)
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento); // DATA DE VENCIMENTO DO TÍTULO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); // VALOR NOMINAL DO TÍTULO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // Nº DO BANCO NA CÂMARA DE COMPENSAÇÃO 
         Registro := Registro + Formatar('',5,false,'0'); // AGÊNCIA ONDE O TÍTULO SERÁ COBRADO

         {Espécie do título}
         case Titulos[NumeroRegistro].EspecieDocumento of
            edContrato : AEspecieDocumento := '06';
            edCosseguros : AEspecieDocumento := '07';
            edDuplicataMercantil : AEspecieDocumento := '01';
            edDuplicataMercantialIndicacao : AEspecieDocumento := '01';
            edDuplicataServico : AEspecieDocumento := '08';
            edDuplicataServicoIndicacao : AEspecieDocumento := '08';
            edLetraCambio : AEspecieDocumento := '09';
            edMensalidadeEscolar : AEspecieDocumento := '04';
            edNotaDebito : AEspecieDocumento := '13';
            edNotaPromissoria : AEspecieDocumento := '02';
            edNotaPromissoriaRural : AEspecieDocumento := '02';
            edNotaSeguro : AEspecieDocumento := '03';
            edRecibo : AEspecieDocumento := '05'
         else
            AEspecieDocumento := '99';
         end;
         Registro := Registro + AEspecieDocumento; // ESPÉCIE DO TÍTULO  

         {Identificação de aceite do título}
         case Titulos[NumeroRegistro].AceiteDocumento of
            adSim : Registro := Registro + 'A';
            adNao : Registro := Registro + 'N';
         end;

         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento); // DATA DA EMISSÃO DO TÍTULO
         Registro := Registro + '00'; // Primeira Instrucao
         Registro := Registro + '00'; // Segunda Instrucao
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros*100); // VALOR DE MORA POR DIA DE ATRASO
         
         if Titulos[NumeroRegistro].DataDesconto <> 0 then // DATA LIMITE PARA CONCESSÃO DE DESCONTO
            Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto)
         else
            Registro := Registro + Formatar(' ',6,false,'0');

         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto*100); // VALOR DO DESCONTO A SER CONCEDIDO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF*100); // VALOR DO I.O.F. RECOLHIDO P/ NOTAS SEGURO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento*100); // VALOR DO ABATIMENTO A SER CONCEDIDO         
         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0'); // IDENTIFICAÇÃO DO TIPO DE INSCRIÇÃO/SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0'); // Nº DE INSCRIÇÃO DO SACADO  (CPF/CGC)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,30); // NOME DO SACADO
         Registro := Registro + Formatar(' ',10); // COMPLEMENTO DE REGISTRO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40); // RUA, NÚMERO E COMPLEMENTO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12); // BAIRRO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO 
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO 
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // UF DO SACADO
         Registro := Registro + Formatar('',30,true,' '); // NOME DO SACADOR/AVALISTA
         Registro := Registro + '000000'; // DATA DE MORA
         Registro := Registro + '00'; // PRAZO
         Registro := Registro + ' '; // BRANCOS
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // Nº SEQÜENCIAL DO REGISTRO NO ARQUIVO

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end;

      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+
                  Formatar('',393,true,' ')+
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0'));
   end;

   Result := TRUE;
end;

function TgbBanco341.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
//      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;

function TgbBanco341.LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao : string;
   ATipoOcorrencia : string;   
   NumeroRegistro : integer;
   ATitulo : TgbTitulo;
begin
   NumeroRegistro := 0;
   ATitulo := TgbTitulo.Create(nil);

   TRY

      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança');

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
         if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
            DataArquivo := EncodeDate(StrToInt('20'+
                           Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+
                           Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));

         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],109,5)));

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
                  ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],18,4);
                  ContaBancaria.NumeroConta := Copy(Retorno.Strings[NumeroRegistro],24,5);
                  ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],29,1);
                  CodigoCedente := Cedente.ContaBancaria.NumeroConta;
                  DigitoCodigoCedente := Cedente.ContaBancaria.DigitoConta;
                  Nome := ANomeCedente;
               end; {with ACedente}

               SeuNumero := Copy(Retorno.Strings[NumeroRegistro],38,25);
               {Nosso número SEM DÍGITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,8);
               Carteira := Copy(Retorno.Strings[NumeroRegistro],83,3);

               {Tipo de ocorrência}

               ATipoOcorrencia := Copy(Retorno.Strings[NumeroRegistro],109,2);
               OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],109,2); //@w
               DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal); //@w
               case StrToInt(ATipoOcorrencia) of
                  02 : TipoOcorrencia := toRetornoRegistroConfirmado;
                  03 : TipoOcorrencia := toRetornoRegistroRecusado;
                  06 : TipoOcorrencia := toRetornoLiquidado;
                  08 : TipoOcorrencia := toRetornoLiquidado;
                  09 : TipoOcorrencia := toRetornoBaixado;
                  11 : TipoOcorrencia := toRetornoTituloEmSer;
                  12 : TipoOcorrencia := toRetornoAbatimentoConcedido;
                  13 : TipoOcorrencia := toRetornoAbatimentoCancelado;
                  14 : TipoOcorrencia := toRetornoVencimentoAlterado;
                  16 : TipoOcorrencia := toRetornoComandoRecusado;
                  17 : TipoOcorrencia := toRetornoComandoRecusado;
                  19 : TipoOcorrencia := toRetornoRecebimentoInstrucaoProtestar;
                  20 : TipoOcorrencia := toRetornoRecebimentoInstrucaoSustarProtesto;
                  23 : TipoOcorrencia := toRetornoEncaminhadoACartorio;
                  26 : TipoOcorrencia := toRetornoDebitoTarifas;
                  27 : TipoOcorrencia := toRetornoDebitoTarifas;
                  28 : TipoOcorrencia := toRetornoDebitoTarifas;
                  29 : TipoOcorrencia := toRetornoDebitoTarifas;
                  30 : TipoOcorrencia := toRetornoDebitoTarifas;
                  32 : TipoOcorrencia := toRetornoProtestado;
                  33 : TipoOcorrencia := toRetornoDebitoTarifas;
                  34 : TipoOcorrencia := toRetornoDespesasProtesto;
                  35 : TipoOcorrencia := toRetornoDespesasSustacaoProtesto;
                  36 : TipoOcorrencia := toRetornoDebitoTarifas;
                  37 : TipoOcorrencia := toRetornoDebitoTarifas;
                  38 : TipoOcorrencia := toRetornoDebitoTarifas;
                  39 : TipoOcorrencia := toRetornoDebitoTarifas;
                  40 : TipoOcorrencia := toRetornoDebitoTarifas;
                  41 : TipoOcorrencia := toRetornoDebitoTarifas;
                  42 : TipoOcorrencia := toRetornoDebitoTarifas;
                  43 : TipoOcorrencia := toRetornoDebitoTarifas;
                  44 : TipoOcorrencia := toRetornoDebitoTarifas;
                  45 : TipoOcorrencia := toRetornoDespesasProtesto;
                  46 : TipoOcorrencia := toRetornoDespesasSustacaoProtesto;
                  48 : TipoOcorrencia := toRetornoDebitoTarifas;
                  51 : TipoOcorrencia := toRetornoDebitoTarifas;
                  52 : TipoOcorrencia := toRetornoDebitoTarifas;
                  53 : TipoOcorrencia := toRetornoDebitoTarifas;
                  54 : TipoOcorrencia := toRetornoDebitoTarifas;
                  55 : TipoOcorrencia := toRetornoDebitoTarifas;
                  56 : TipoOcorrencia := toRetornoDebitoTarifas
               else
                  TipoOcorrencia := toRetornoOutrasOcorrencias;
               end;

               MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],378,8);
               DescricaoMotivoRejeicaoComando:=VerificaMotivoRejeicaoComando(MotivoRejeicaoComando);



               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataOcorrencia := EncodeDate(StrToInt('20'+
                                    Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                    StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                    StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataOcorrencia := EncodeDate(StrToInt('19'+
                                    Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                    StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                    StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));
                                 
               ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;

               {Espécie do documento}
               if Trim(Copy(Retorno.Strings[NumeroRegistro],174,2)) = '' then
                  EspecieDocumento := edOutros
               else
                  case StrToInt(Copy(Retorno.Strings[NumeroRegistro],174,2)) of
                     01 : EspecieDocumento := edDuplicataMercantil;
                     02 : EspecieDocumento := edNotaPromissoria;
                     03 : EspecieDocumento := edNotaSeguro;
                     04 : EspecieDocumento := edMensalidadeEscolar;
                     05 : EspecieDocumento := edRecibo;
                     06 : EspecieDocumento := edContrato;
                     07 : EspecieDocumento := edCosseguros;
                     08 : EspecieDocumento := edDuplicataServico;
                     09 : EspecieDocumento := edLetraCambio;
                     13 : EspecieDocumento := edNotaDebito
                  else
                     EspecieDocumento := edOutros;
                  end;

               ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],176,13))/100;
               ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
               ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100;
               ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],241,13))/100;
               ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;
               ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)))/100;

               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],300,2)) <= 69 then
                  DataCredito := EncodeDate(StrToInt('20'+
                                 Copy(Retorno.Strings[NumeroRegistro],300,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)))
               else
                  DataCredito := EncodeDate(StrToInt('19'+
                                 Copy(Retorno.Strings[NumeroRegistro],300,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)));

               Sacado.TipoInscricao := tiOutro;
               Sacado.Nome := Copy(Retorno.Strings[NumeroRegistro],325,30);

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

function TgbBanco341.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         case length(Retorno[0]) of
            240 :
               begin
                  LayoutArquivo := laCNAB240;
//                Result := LerRetornoCNAB240(ACobranca, Retorno);
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
         end;
      end;

      ATitulo.Free;
      Result := TRUE
   EXCEPT
      ATitulo.Free;
      Result := FALSE;
      Raise; //Propaga o erro
   END;
end;


function TgbBanco341.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
 if sOcorrenciaOriginal='  ' then begin
    Result:='';
    Exit;
 end;
 case StrToInt(sOcorrenciaOriginal) of
   02: Result:='02-ENTRADA CONFIRMADA' ;
   03: Result:='03-ENTRADA REJEITADA (NOTA 20 - TABELA 1)' ;
   04: Result:='04-ALTERAÇÃO DE DADOS - NOVA ENTRADA' ;
   05: Result:='05-ALTERAÇÃO DE DADOS - BAIXA' ;
   06: Result:='06-LIQUIDAÇÃO NORMAL' ;
   08: Result:='08-LIQUIDAÇÃO EM CARTÓRIO' ;
   09: Result:='09-BAIXA SIMPLES' ;
   10: Result:='10-BAIXA POR TER SIDO LIQUIDADO' ;
   11: Result:='11-EM SER (SÓ NO RETORNO MENSAL)' ;
   12: Result:='12-ABATIMENTO CONCEDIDO' ;
   13: Result:='13-ABATIMENTO CANCELADO' ;
   14: Result:='14-VENCIMENTO ALTERADO' ;
   15: Result:='15-BAIXAS REJEITADAS (NOTA 20 - TABELA 4)' ;
   16: Result:='16-INSTRUÇÕES REJEITADAS (NOTA 20 - TABELA 3)' ;
   17: Result:='17-ALTERAÇÃO DE DADOS REJEITADOS (NOTA 20 - TABELA 2)' ;
   18: Result:='18-COBRANÇA CONTRATUAL - ABATIMENTO E BAIXA BLOQUEADOS(NOTA 20 - TABELA 5)' ;
   19: Result:='19-CONFIRMA RECEBIMENTO DE INSTRUÇÃO DE PROTESTO' ;
   20: Result:='20-CONFIRMA RECEBIMENTO DE INSTRUÇÃO DE SUSTAÇÃO DE PROTESTO /TARIFA' ;
   21: Result:='21-CONFIRMA RECEBIMENTO DE INSTRUÇÃO DE NÃO PROTESTAR' ;
   23: Result:='23-PROTESTO ENVIADO A CARTÓRIO/TARIFA' ;
   24: Result:='24-INSTRUÇÃO DE PROTESTO REJEITADA / SUSTADA / PENDENTE (NOTA 20 - TABELA 7)' ;
   25: Result:='25-ALEGAÇÕES DO SACADO (NOTA 20 - TABELA 6)' ;
   26: Result:='26-TARIFA DE AVISO DE COBRANÇA' ;
   27: Result:='27-TARIFA DE EXTRATO POSIÇÃO (B40X)' ;
   28: Result:='28-TARIFA DE RELAÇÃO DAS LIQUIDAÇÕES' ;
   29: Result:='29-TARIFA DE MANUTENÇÃO DE TÍTULOS VENCIDOS' ;
   30: Result:='30-DÉBITO MENSAL DE TARIFAS (PARA ENTRADAS E BAIXAS)' ;
   32: Result:='32-BAIXA POR TER SIDO PROTESTADO' ;
   33: Result:='33-CUSTAS DE PROTESTO' ;
   34: Result:='34-CUSTAS DE SUSTAÇÃO' ;
   35: Result:='35-CUSTAS DE CARTÓRIO DISTRIBUIDOR' ;
   36: Result:='36-CUSTAS DE EDITAL' ;
   37: Result:='37-TARIFA DE EMISSÃO DE BLOQUETO/TARIFA DE ENVIO DE DUPLICATA' ;
   38: Result:='38-TARIFA DE INSTRUÇÃO' ;
   39: Result:='39-TARIFA DE OCORRÊNCIAS' ;
   40: Result:='40-TARIFA MENSAL DE EMISSÃO DE BLOQUETO/TARIFA MENSAL DE ENVIO DE DUPLICATA' ;
   41: Result:='41-DÉBITO MENSAL DE TARIFAS - EXTRATO DE POSIÇÃO (B4EP/B4OX)' ;
   42: Result:='42-DÉBITO MENSAL DE TARIFAS - OUTRAS INSTRUÇÕES' ;
   43: Result:='43-DÉBITO MENSAL DE TARIFAS - MANUTENÇÃO DE TÍTULOS VENCIDOS' ;
   44: Result:='44-DÉBITO MENSAL DE TARIFAS - OUTRAS OCORRÊNCIAS' ;
   45: Result:='45-DÉBITO MENSAL DE TARIFAS - PROTESTO' ;
   46: Result:='46-DÉBITO MENSAL DE TARIFAS - SUSTAÇÃO DE PROTESTO' ;
   47: Result:='47-BAIXA COM TRANSFERÊNCIA PARA DESCONTO' ;
   48: Result:='48-CUSTAS DE SUSTAÇÃO JUDICIAL' ;
   51: Result:='51-TARIFA MENSAL REF A ENTRADAS BANCOS CORRESPONDENTES NA CARTEIRA' ;
   52: Result:='52-TARIFA MENSAL BAIXAS NA CARTEIRA' ;
   53: Result:='53-TARIFA MENSAL BAIXAS EM BANCOS CORRESPONDENTES NA CARTEIRA' ;
   54: Result:='54-TARIFA MENSAL  DE LIQUIDAÇÕES NA CARTEIRA' ;
   55: Result:='55-TARIFA MENSAL DE LIQUIDAÇÕES EM BANCOS CORRESPONDENTES NA CARTEIRA' ;
   56: Result:='56-CUSTAS DE IRREGULARIDADE' ;
   57: Result:='57-INSTRUÇÃO CANCELADA(NOTA 20 - TABELA 8)' ;
      
 end;
end;


function TgbBanco341.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
var
 i: Integer;
begin
 Result:='';
 if sMotivoRejeicaoComando=Formatar('',08) then begin
    Result:='';
    Exit;
 end;

 i:=1;
 while i<=08 do begin
  if Copy(sMotivoRejeicaoComando,i,2)<>'  ' then begin
     case StrToInt(Copy(sMotivoRejeicaoComando,i,2)) of
       03: Result:='AG. COBRADORA - NÃO FOI POSSÍVEL ATRIBUIR A AGÊNCIA  PELO CEP OU CEP INVÁLIDO' ;
       04: Result:='ESTADO - SIGLA DO ESTADO INVÁLIDA' ;
       05: Result:='DATA VENCIMENTO - PRAZO DA OPERAÇÃO MENOR QUE PRAZO MÍNIMO OU MAIOR QUE O MÁXIMO' ;
       07: Result:='VALOR DO TÍTULO - VALOR DO TÍTULO MAIOR QUE 10.000.000,00' ;
       08: Result:='NOME DO SACADO - NÃO INFORMADO OU DESLOCADO' ;
       09: Result:='AGÊNCIA/CONTA - AGÊNCIA ENCERRADA' ;
       10: Result:='LOGRADOURO - NÃO INFORMADO OU DESLOCADO' ;
       11: Result:='CEP	- CEP NÃO NUMÉRICO' ;
       12: Result:='SACADOR / AVALISTA - NOME NÃO INFORMADO OU DESLOCADO (BANCOS CORRESPONDENTES)' ;
       13: Result:='ESTADO/CEP - CEP INCOMPATÍVEL COM A SIGLA DO ESTADO' ;
       14: Result:='NOSSO NÚMERO - NOSSO NÚMERO JÁ REGISTRADO NO CADASTRO DO BANCO OU FORA DA FAIXA' ;
       15: Result:='NOSSO NÚMERO - NOSSO NÚMERO EM DUPLICIDADE NO MESMO MOVIMENTO' ;
       18: Result:='DATA DE ENTRADA - DATA DE ENTRADA INVÁLIDA PARA OPERAR COM ESTA CARTEIRA' ;
       19: Result:='OCORRÊNCIA - OCORRÊNCIA INVÁLIDA' ;
       21: Result:='AG. COBRADORA - CARTEIRA NÃO ACEITA DEPOSITÁRIA CORRESPONDENTE/'+
                   'ESTADO DA AGÊNCIA DIFERENTE DO ESTADO DO SACADO/'+
                   'AG. COBRADORA NÃO CONSTA NO CADASTRO OU  ENCERRANDO' ;
       22: Result:='CARTEIRA - CARTEIRA NÃO PERMITIDA (NECESSÁRIO CADASTRAR FAIXA LIVRE)' ;
       27: Result:='CGC INAPTO - CGC DO CEDENTE INAPTO' ;
       29: Result:='CÓDIGO EMPRESA - CATEGORIA DA CONTA INVÁLIDA' ;
       35: Result:='VALOR DO IOF - IOF MAIOR QUE 5%' ;
       36: Result:='QTDADE DE MOEDA - QUANTIDADE DE MOEDA INCOMPATÍVEL COM VALOR DO TÍTULO' ;
       37: Result:='CGC/CPF DO SACADO - NÃO NUMÉRICO OU IGUAL A ZEROS' ;
       42: Result:='NOSSO NÚMERO - NOSSO NÚMERO FORA DE FAIXA' ;
       52: Result:='AG. COBRADORA - EMPRESA NÃO ACEITA BANCO CORRESPONDENTE' ;
       53: Result:='AG. COBRADORA - EMPRESA NÃO ACEITA BANCO CORRESPONDENTE  - COBRANÇA MENSAGEM' ;
       54: Result:='DATA DE VENCTO - BANCO CORRESPONDENTE - TÍTULO COM VENCIMENTO INFERIOR A 15 DIAS' ;
       55: Result:='DEP/BCO CORRESP - CEP NÃO PERTENCE A DEPOSITÁRIA INFORMADA' ;
       56: Result:='DT VENCTO/BCO CORRESP - VENCTO SUPERIOR A 180 DIAS DA DATA DE ENTRADA' ;
       57: Result:='DATA DE VENCTO - CEP SÓ DEPOSITÁRIA BCO DO BRASIL COM VENCTO INFERIOR A 8 DIAS' ;
       60: Result:='ABATIMENTO - VALOR DO ABATIMENTO INVÁLIDO' ;
       61: Result:='JUROS DE MORA - JUROS DE MORA MAIOR QUE O PERMITIDO' ;
       62: Result:='DESCONTO - VALOR DO DESCONTO MAIOR QUE O VALOR DO TÍTULO' ;
       63: Result:='IMPORTÂNCIA POR DIA DE DESCONTO - NÃO PERMITIDO' ;
       64: Result:='EMISSÃO DO TÍTULO - DATA DE EMISSÃO DO TÍTULO INVÁLIDA (VENDOR)' ;
       65: Result:='TAXA FINANCTO - TAXA INVÁLIDA (VENDOR)' ;
       66: Result:='DATA DE VENCTO - INVALIDA/FORA DE PRAZO DE OPERAÇÃO (MÍNIMO OU MÁXIMO)' ;
       67: Result:='VALOR/QTIDADE - VALOR DO TÍTULO/QUANTIDADE DE MOEDA INVÁLIDO' ;
       68: Result:='CARTEIRA - CARTEIRA INVÁLIDA' ;
       98: Result:='FLASH INVÁLIDO - REGISTRO MENSAGEM SEM FLASH CADASTRADO OU FLASH INFORMADO DIFERENTE DO CADASTRADO' ;
       99: Result:='FLASH INVÁLIDO - CONTA DE COBRANÇA COM FLASH CADASTRADO E SEM REGISTRO DE MENSAGEM CORRESPONDENTE' ;
    end;
  end;
  i:=i+2;  
 end;
end;


{$ENDIF}

initialization
RegisterClass(TgbBanco341);

end.
