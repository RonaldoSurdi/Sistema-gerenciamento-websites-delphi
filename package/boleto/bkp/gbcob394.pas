unit gbCob394;

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
   CodigoBanco = '394';
   NomeBanco = 'BMC'; //INTERCHANGE

type

   TgbBanco394 = class(TPersistent)
   private
{$IFNDEF VER120}
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String; //@w
//    function GerarRemessaCNAB240(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
      function GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
//    function LerRetornoCNAB240(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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


function TgbBanco394.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco394.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,14,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

function TgbBanco394.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
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
      ACodigoCedente := Formatar(Cedente.CodigoCedente + Cedente.DigitoCodigoCedente,7,false,'0');
      ANossoNumero := Formatar(NossoNumero,15,false,'0');
   end;

   Result := '5' + ACodigoCedente + '00' + ANossoNumero;
end;

procedure TgbBanco394.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Cedente.ContaBancaria.CodigoAgencia + '/' + Cedente.CodigoCedente;
      ANossoNumero := Formatar(NossoNumero,15,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3);
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco394.GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, Registro : string;
   cTotalTitulos: Currency;
   NumeroRegistro : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   Remessa.Clear;

   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DA REMESSA }


      Remessa.Add('0'+ // IDENT.DO REGISTRO
                  '1'+ // IDENT.DO ARQUIVO DE REMESSA
                  'REMESSA'+ // IDENT. POR EXTENSO REMESSA
                  '01'+ // IDENT. DO TIPO DE SERVIÇO
                  Formatar('COBRANCA',15)+ // IDENT.POR EXTENSO TIPO SERVIÇO
                  Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,True,' ')+ // IDENTIFICAÇÃO DA CONTA COBRANÇA/CARTEIRA FORNECIDO PELO BANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ // NOME DA EMPRESA POR EXTENSO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // NUMERO DO BANCO DA COMPENSAÇÃO
                  Formatar('BMC',15,true,' ')+ // NOME DO BANCO POR EXTENSO
                  FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataProcessamento)+ // DATA DA GRAVAÇÃO DO ARQUIVO
                  Formatar('01600',5)+ // DENSIDADE DE GRAVAÇÃO
                  Formatar('BPI',3)+ // UNIDADE DENSIDADE GRAVAÇÃO
                  Formatar(IntToStr(NumeroArquivo),6,false,'0')+ //NUMERO DE GERACAO DO ARQUIVO
                  Formatar('',280)+ //COMPLEMENTO DO REGISTRO
                  '000001'); // NUMERO SEQUENCIAL REGISTRO


      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
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

         case Titulos[NumeroRegistro].TipoOcorrencia of
            toRemessaRegistrar  : ATitulosTipoOcorrencia := '01';
            toRemessaBaixar  : ATitulosTipoOcorrencia := '02';
//            toRemessaProrrogacaoVencimento : ATitulosTipoOcorrencia := '03';
            toRemessaConcederAbatimento  : ATitulosTipoOcorrencia := '04';
            toRemessaCancelarAbatimento  : ATitulosTipoOcorrencia := '05';
            toRemessaAlterarVencimento  : ATitulosTipoOcorrencia := '06';
            toRemessaProtestar  : ATitulosTipoOcorrencia := '09';
            toRemessaCancelarInstrucaoProtesto  : ATitulosTipoOcorrencia := '10';
//            toRemessaSustarProtesto: ATitulosTipoOcorrencia := '13';
            toRemessaConcederDesconto  : ATitulosTipoOcorrencia := '18';
            toRemessaCancelarDesconto  : ATitulosTipoOcorrencia := '19';





{            toRecebimentoInstrucaoDispensarJuros  : ATitulosTipoOcorrencia := '01';
            toRemessaAlterarNomeEnderecoSacado  : ATitulosTipoOcorrencia := '02';
            toRemessaAlterarNumeroControle  : ATitulosTipoOcorrencia := '03';
            toRemessaAlterarVencimento  : ATitulosTipoOcorrencia := '04';
            toRemessaBaixar  : ATitulosTipoOcorrencia := '05';
            toRemessaCancelarAbatimento  : ATitulosTipoOcorrencia := '06';
            toRemessaCancelarDesconto  : ATitulosTipoOcorrencia := '07';
            toRemessaCancelarInstrucaoProtesto  : ATitulosTipoOcorrencia := '08';
            toRemessaConcederAbatimento  : ATitulosTipoOcorrencia := '09';
            toRemessaConcederDesconto  : ATitulosTipoOcorrencia := '10';
            toRemessaDebitarEmConta  : ATitulosTipoOcorrencia := '11';
            toRemessaDispensarJuros  : ATitulosTipoOcorrencia := '12';
            toRemessaOutrasOcorrencias  : ATitulosTipoOcorrencia := '13';
            toRemessaProtestar  : ATitulosTipoOcorrencia := '14';
            toRemessaAlterarUsoEmpresa: ATitulosTipoOcorrencia := '15' 
            toRemessaAlterarSeuNumero: ATitulosTipoOcorrencia := '15'
            toRemessaNaoProtestar: ATitulosTipoOcorrencia := '15'
            toRemessaPedidoEntregaFrancoPagto: ATitulosTipoOcorrencia := '15'
            toRemessaSustarProtestoBaixarTitulo: ATitulosTipoOcorrencia := '15'
            toRemessaInstrucaoTitulo: ATitulosTipoOcorrencia := '15'
            toRemessaIncluirOcorrencia: ATitulosTipoOcorrencia := '15'
            toRemessaExcluirOcorrencia: ATitulosTipoOcorrencia := '15'
            toRemessaAlterarPrazoProtesto: ATitulosTipoOcorrencia := '15'
            toRemessaDescontoFinanceira: ATitulosTipoOcorrencia := '15'
            toRemessaConservarEmCarteira: ATitulosTipoOcorrencia := '15'
            toRemessaBaixarPagoCedente: ATitulosTipoOcorrencia := '15'
            toRemessaCancelarMulta: ATitulosTipoOcorrencia := '15'
            toRemessaAlterarValorTitulo: ATitulosTipoOcorrencia := '15'
            toRemessaAlterarCedente: ATitulosTipoOcorrencia := '15'
            toRemessaAlterarOutrosDados: ATitulosTipoOcorrencia := '15'
            toRemessaPedidoDevolucao: ATitulosTipoOcorrencia := '15'
            toRemessaAlterarPrazoDevolucao: ATitulosTipoOcorrencia := '15'
            toRemessaAlterarBloqueteEmissaoReemissao: ATitulosTipoOcorrencia := '15'
            toRemessaAlterarOpcaoProtestoDevolucao: ATitulosTipoOcorrencia := '15'
            toRemessaAlterarOpcaoDevolucaoProtesto: ATitulosTipoOcorrencia := '15'
            toRemessaPedidoTitulosAberto: ATitulosTipoOcorrencia := '15'



            toRetornoAbatimentoCancelado  : ATitulosTipoOcorrencia := '16';
            toRetornoAbatimentoConcedido  : ATitulosTipoOcorrencia := '17';
            toRetornoBaixado  : ATitulosTipoOcorrencia := '18';
            toRetornoBaixaOuLiquidacaoEstornada  : ATitulosTipoOcorrencia := '19';
            toRetornoComandoRecusado  : ATitulosTipoOcorrencia := '20';
            toRetornoDadosAlterados  : ATitulosTipoOcorrencia := '21';
            toRetornoDebitoEmConta  : ATitulosTipoOcorrencia := '22';
            toRetornoDebitoTarifas  : ATitulosTipoOcorrencia := '23';
            toRetornoDescontoCancelado  : ATitulosTipoOcorrencia := '24';
            toRetornoDescontoConcedido  : ATitulosTipoOcorrencia := '25';
            toRetornoDespesasProtesto  : ATitulosTipoOcorrencia := '26';

            toRetornoDespesasSustacaoProtesto  : ATitulosTipoOcorrencia := '27';
            toRetornoEncaminhadoACartorio  : ATitulosTipoOcorrencia := '28';
            toRetornoEnderecoSacadoAlterado  : ATitulosTipoOcorrencia := '29';
            toRetornoJurosDispensados  : ATitulosTipoOcorrencia := '30';
            toRetornoLiquidado  : ATitulosTipoOcorrencia := '31';
            toRetornoLiquidadoParcialmente  : ATitulosTipoOcorrencia := '32';
            toRetornoLiquidadoSaldoRestante  : ATitulosTipoOcorrencia := '33';
            toRetornoManutencaoTituloVencido  : ATitulosTipoOcorrencia := '34';

            toRetornoNomeSacadoAlterado: ATitulosTipoOcorrencia := '35';
            toRetornoOutrasOcorrencias: ATitulosTipoOcorrencia := '36';
            toRetornoProtestado: ATitulosTipoOcorrencia := '37';
            toRetornoProtestoOuSustacaoEstornado: ATitulosTipoOcorrencia := '38';
            toRetornoProtestoSustado: ATitulosTipoOcorrencia := '39';
            toRetornoRecebimentoInstrucaoAlterarDados: ATitulosTipoOcorrencia := '40';
            toRetornoRecebimentoInstrucaoAlterarEnderecoSacado: ATitulosTipoOcorrencia := '41';
            toRetornoRecebimentoInstrucaoAlterarNomeSacado: ATitulosTipoOcorrencia := '42';
            toRetornoRecebimentoInstrucaoAlterarTipoCobranca: ATitulosTipoOcorrencia := '43';
            toRetornoRecebimentoInstrucaoAlterarVencimento: ATitulosTipoOcorrencia := '44';
            toRetornoRecebimentoInstrucaoBaixar: ATitulosTipoOcorrencia := '45';
            toRetornoRecebimentoInstrucaoCancelarAbatimento: ATitulosTipoOcorrencia := '46';
            toRetornoRecebimentoInstrucaoCancelarDesconto: ATitulosTipoOcorrencia := '47';
            toRetornoRecebimentoInstrucaoConcederAbatimento: ATitulosTipoOcorrencia := '48';
            toRetornoRecebimentoInstrucaoConcederDesconto: ATitulosTipoOcorrencia := '49';
            toRetornoRecebimentoInstrucaoProtestar: ATitulosTipoOcorrencia := '50';
            toRetornoRecebimentoInstrucaoSustarProtesto: ATitulosTipoOcorrencia := '51';
            toRetornoRegistroConfirmado: ATitulosTipoOcorrencia := '52';
            toRetornoRegistroRecusado: ATitulosTipoOcorrencia := '53';
            toRetornoRetiradoDeCartorio: ATitulosTipoOcorrencia := '54';
            toRetornoTipoCobrancaAlterado: ATitulosTipoOcorrencia := '55';
            toRetornoTituloEmSer: ATitulosTipoOcorrencia := '56';
            toRetornoVencimentoAlterado: ATitulosTipoOcorrencia := '57';}

         end;

         case Titulos[NumeroRegistro].EspecieDocumento of
              edDuplicataMercantil: aTitulosEspecieDocumento := '01';
              edOutros: aTitulosEspecieDocumento := '07';

{              edAluguel: aTitulosEspecieDocumento := '01';
              edApoliceSeguro: aTitulosEspecieDocumento := '02';
              edCheque: aTitulosEspecieDocumento := '03';
              edContrato: aTitulosEspecieDocumento := '04';
              edContribuicaoConfederativa: aTitulosEspecieDocumento := '05';
              edCosseguros: aTitulosEspecieDocumento := '06';
              edDividaAtivaEstado: aTitulosEspecieDocumento := '07';
              edDividaAtivaMunicipio: aTitulosEspecieDocumento := '08';
              edDividaAtivaUniao: aTitulosEspecieDocumento := '09';
              edDuplicataMercantialIndicacao: aTitulosEspecieDocumento := '10';
              edDuplicataMercantil: aTitulosEspecieDocumento := '11';
              edDuplicataRural: aTitulosEspecieDocumento := '12';
              edDuplicataServico: aTitulosEspecieDocumento := '13';
              edDuplicataServicoIndicacao: aTitulosEspecieDocumento := '14';
              edFatura: aTitulosEspecieDocumento := '15';
              edLetraCambio: aTitulosEspecieDocumento := '16';
              edMensalidadeEscolar: aTitulosEspecieDocumento := '17';
              edNotaCreditoComercial: aTitulosEspecieDocumento := '18';
              edNotaCreditoExportacao: aTitulosEspecieDocumento := '19';
              edNotaCreditoIndustrial: aTitulosEspecieDocumento := '20';
              edNotaCreditoRural: aTitulosEspecieDocumento := '21';
              edNotaDebito: aTitulosEspecieDocumento := '22';
              edNotaPromissoria: aTitulosEspecieDocumento := '23';
              edNotaPromissoriaRural: aTitulosEspecieDocumento := '24';
              edNotaSeguro: aTitulosEspecieDocumento := '25';
              edOutros: aTitulosEspecieDocumento := '26';
              edParcelaConsorcio: aTitulosEspecieDocumento := '27';
              edRecibo: aTitulosEspecieDocumento := '28';
              edTriplicataMercantil: aTitulosEspecieDocumento := '29';
              edTriplicataServico: aTitulosEspecieDocumento := '30';
              edWarrant: aTitulosEspecieDocumento := '31';}
        end;

        case Titulos[NumeroRegistro].AceiteDocumento of
             adNao: aTitulosAceite:='N';
             adSim: aTitulosAceite:='A';
        end;


         Registro := '1'; //  IDENT. DO REGISTRO
         Registro := Registro + Formatar(ACedenteTipoInscricao,2,false,'0'); // IDENT.TIPO INSCR.EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); // NUMERO DO CGC DA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,True,' '); // IDENTIFICAÇÃO DA CONTA COBRANÇA/CARTEIRA FORNECIDO PELO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); // IDENT. DO TITULO NA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,14,True,'0'); // IDENT. DO TITULO NO BANCO COM DIG VERIFICADOR
         Registro := Registro + Formatar(' ',31,False,' '); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,1); // CODIGO DA CARTEIRA
         Registro := Registro + Formatar(aTitulosTipoOcorrencia,2,false,'0'); // IDENT. DA TRANSACAO(OCORRENCIA)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,10); // NUMERO DA DUPLICATA, ETC...
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento); // DATA DE VENCIMENTO DO TITULO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); // VALOR NOMINAL DO TITULO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // BANCO ENCARREGADO DA COBRANÇA
         Registro := Registro + '00000'; // AGENCIA COBRADORA(NAO É NECESSARIA)
         Registro := Registro + Formatar(aTitulosEspecieDocumento,2,false,'0'); // ESPÉCIE DO TITULO
         Registro := Registro + Formatar(aTitulosAceite,1); // IDENT. DE ACEITE DO TITULO
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento); // DATA DE EMISSAO DO TITULO
         Registro := Registro + '0000'; // CÓDIGO DA INSTRUÇÃO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO

         if Titulos[NumeroRegistro].DataDesconto=0 then begin
            Registro := Registro + Formatar('0',6,False,'0'); // DATA LIMITE P/ CONCESSÃO DESC.
         end else begin
            Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto); // DATA LIMITE P/ CONCESSÃO DESC.
         end;
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); // VALOR DESCONTO A SER CONCEDIDO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF * 100); // VALOR DE IOF
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); // VALOR DO ABATIMENTO
         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0'); // IDENT. TIPO INSCRIÇÃO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0'); // CGC/CPF DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40,true,' '); // NOME DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40); // ENDEREÇO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12); // BAIRRO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // ENDEREÇO DO SACADO
         Registro := Registro + Formatar('',40,true,' '); // NOME DO SACADOR/AVALISTA
         Registro := Registro + Formatar('',1); // USO DO BANCO
         Registro := Registro + Formatar('',1); // CODIGO DA MENSAGEM
         Registro := Registro + '9'; // CODIGO DA MOEDA
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
         Remessa.Add(Registro);
         cTotalTitulos:=cTotalTitulos+Titulos[NumeroRegistro].ValorDocumento;
         NumeroRegistro := NumeroRegistro + 1;
      end;
      { GERAR REGISTRO TRAILER DA REMESSA }


      Remessa.Add('9'+ // IDENT. DO REGISTRO
                  '1'+ // TIPO DE REGISTRO
                  Formatar(IntToStr(NumeroRegistro),8,false,'0')+ // QUANT. DE TITULOS NO ENVIADOS
                  FormatCurr('0000000000000',cTotalTitulos)+ // VALOR TOTAL DOS TITULOS ENVIADOS
                  Formatar(' ',368,False,' ')+ // USO DO BANCO
                  Formatar(IntToStr(NumeroArquivo),3,false,'0')+ //NUMERO DE GERACAO DO ARQUIVO
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0')); // QUANTIDADE TOTAL DE REGISTROS
   end;

   Result := TRUE;
end;




function TgbBanco394.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
//      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;


function TgbBanco394.LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao,
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
            DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));


         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],109,6)));

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

               SeuNumero := Copy(Retorno.Strings[NumeroRegistro],38,25);
               NumeroDocumento := Copy(Retorno.Strings[NumeroRegistro],117,10);

               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataOcorrencia := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataOcorrencia := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));

               ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;
               ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
               ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100;
               ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],241,13))/100;
               ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;
               ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)))/100;

               {Dados que variam de acordo com o banco}

               {Nosso número SEM DÍGITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,14);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],169,4);
               Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],173,1);

               {Tipo de ocorrência}
               ATipoOcorrencia := Copy(Retorno.Strings[NumeroRegistro],109,2);
               OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],109,2); //@w
               DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal); //@w
               case StrToInt(ATipoOcorrencia) of
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
                  22: TipoOcorrencia := toRetornoLiquidado;
                  23: TipoOcorrencia := toRetornoBaixado;
                  24: TipoOcorrencia := toRetornoBaixado;
                  25: TipoOcorrencia := toRetornoProtestado;
                  26: TipoOcorrencia := toRetornoEncaminhadoACartorio;
                  27: TipoOcorrencia := toRetornoProtestoSustado;
                  28: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                  29: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                  30: TipoOcorrencia := toRetornoDadosAlterados;
                  31: TipoOcorrencia := toRetornoDebitoTarifas;
                  32: TipoOcorrencia := toRetornoDebitoTarifas;
                  33: TipoOcorrencia := toRetornoBaixaOuLiquidacaoEstornada;
                  99: TipoOcorrencia := toRetornoRegistroRecusado;
               else
                  TipoOcorrencia := toRetornoOutrasOcorrencias;
               end; {case StrToInt(ATipoOcorrencia)}

               MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],302,50);
               DescricaoMotivoRejeicaoComando:=MotivoRejeicaoComando;               
//               DescricaoRejeicao:=VeriRejeicao(MotivoRejeicaoComando);
               
               Carteira := Copy(Retorno.Strings[NumeroRegistro],108,1);
               ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],176,13))/100;
               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));

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


function TgbBanco394.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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


function TgbBanco394.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
  if sOcorrenciaOriginal='  ' then begin
     Result:='';
     Exit;
  end;
    
  case StrToInt(sOcorrenciaOriginal) of
    02: Result:='02-Entrada confirmada' ;
    03: Result:='03-Transação rejeitada' ;
    04: Result:='04-Transf. de carteira (entrada)' ;
    05: Result:='05-Transf. de carteira (Baixa)' ;
    06: Result:='06-Liquidação normal' ;
    07: Result:='07-Liquidação por conta' ;
    08: Result:='08-Liquidação por saldo' ;
    09: Result:='09-Baixa automática' ;
    10: Result:='10-Baixa por instrução' ;
    11: Result:='11-Em ser' ;
    12: Result:='12-Abatimento concedido' ;
    13: Result:='13-Abatimento cancelado' ;    14: Result:='14-Vencimento alterado' ;
    15: Result:='15-Liquidação em cartório' ;
    16: Result:='16-Liquidação por compensação' ;
    17: Result:='17-Outras liquidações' ;
    18: Result:='18-Juros dispensados' ;
    19: Result:='19-Tarifas bancárias' ;
    20: Result:='20-Outras baixas' ;
    21: Result:='21-Liquidação - baixado / devolvido' ;
    22: Result:='22-Entrada por transferência' ;
    23: Result:='23-Campo especial alterado' ;
    24: Result:='24-Confirmação recebimento instrução não protestar' ;
    25: Result:='25-Enviado para cartório' ;
    26: Result:='26-Protesto sustado' ;
    27: Result:='27-Protesto não sustado' ;
    28: Result:='28-Protesto devolvido para cartório' ;
    29: Result:='29-Débito custas cartoriais' ;
    30: Result:='30-Baixa por transferência' ;
    31: Result:='31-Entrada de sustação de protesto' ;
    32: Result:='32-Instrução de protesto acatada' ;
    33: Result:='33-Entrada de pedido de protesto' ;
    34: Result:='34-Emissão de carta de protesto' ;
    35: Result:='35-Cancelamento de protesto' ;
    36: Result:='36-Confirmação de recebimento de instrução protestar' ;
    37: Result:='37-Confirmação de recebimento de instrução sustar protesto e baixar o título' ;
    38: Result:='38-Confirmação de recebimento de instrução sustar protesto' ;
    39: Result:='39-Desconto concedido' ;
    40: Result:='40-Desconto cancelado' ;
    41: Result:='41-Protesto efetivado' ;
    42: Result:='42-Liquidação parcial' ;
    43: Result:='43-Outras tarifas' ;
    44: Result:='44-Pagamento de título protestado' ;
    45: Result:='45-Baixa por liquidação' ;
    46: Result:='46-Baixa por ter sido protestado' ;
    49: Result:='47-Pedido de baixa acatado' ;
    50: Result:='48-Pedido de baixa rejeitado' ;
    51: Result:='49-Pedido de alteração rejeitado' ;
    52: Result:='50-Pedido de alteração acatada' ;
    53: Result:='51-Prazo de devolução alterado' ;
    54: Result:='52-Alteração com reemissão de bloquete confirmada' ;
    55: Result:='53-Alteração da opção de protesto para devolução confirmada' ;
    56: Result:='54-Alteração da opção de devolução para protesto confirmada' ;
    86: Result:='55-Pagamento' ;
    87: Result:='56-Cobrança parcial' ;
    88: Result:='57-Pagamento após a baixa' ;
    98: Result:='58-Amortizações' ;
    99: Result:='59-Outros' ;
  
  end;

end;

{$ENDIF}

initialization
RegisterClass(TgbBanco394);


end.
