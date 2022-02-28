unit gbCob353;

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
   CodigoBanco = '353';
   NomeBanco = 'Banco Santander';

type

   TgbBanco353 = class(TPersistent)
{$IFNDEF VER120}
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
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


function TgbBanco353.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco353.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero: string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,7,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

function TgbBanco353.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ACodigoAgencia,
   ANumeroConta,
   ADigitoNossoNumero: string;
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
    alterar de acordo com os dados fornecidos com o banco.
   }

   {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}

   with ATitulo do
   begin
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
      ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,8,false,'0');
      ANossoNumero := Formatar(NossoNumero,7,false,'0');
      ADigitoNossoNumero := Formatar(DigitoNossoNumero,1);
   end;

   Result := ACodigoAgencia + ANumeroConta + ANossoNumero + ADigitoNossoNumero + '00000';
end;

procedure TgbBanco353.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '/' + Formatar(Cedente.ContaBancaria.NumeroConta,8,false,'0') + '-' + Cedente.ContaBancaria.DigitoConta;
      ANossoNumero := Formatar(NossoNumero,7,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3);
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco353.GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
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
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,3,false,'0')+ //Código da agência cedente
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0')+ //DIGITO AG
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,7,false,'0')+ // Conta movimento cedente
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1)+ //DIGITO C/C
                  Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,8,True,' ')+ // Conta cobrança cedente
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ // Nome do cedente
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // NUMERO DO BANCO DA COMPENSAÇÃO
                  Formatar('SANTANDER',15,true,' ')+ // NOME DO BANCO POR EXTENSO
                  FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataProcessamento)+ // DATA DA GRAVAÇÃO DO ARQUIVO
                  Formatar('0',16,False,'0')+ // ZEROS
                  Formatar('',275)+ //COMPLEMENTO DO REGISTRO
                  Formatar(IntToStr(NumeroArquivo),3,false,'0')+ //NUMERO DE GERACAO DO ARQUIVO
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
            toRemessaConcederAbatimento  : ATitulosTipoOcorrencia := '04';
            toRemessaCancelarAbatimento  : ATitulosTipoOcorrencia := '05';
            toRemessaAlterarVencimento  : ATitulosTipoOcorrencia := '06';
            toRemessaAlterarNumeroControle  : ATitulosTipoOcorrencia := '07';
//            toRemessaAlterarSeuNumero: ATitulosTipoOcorrencia := '08';
            toRemessaProtestar  : ATitulosTipoOcorrencia := '09';
//            toRemessaSustarProtesto: ATitulosTipoOcorrencia := '18';


{           toRecebimentoInstrucaoDispensarJuros  : ATitulosTipoOcorrencia := '01';
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
              edNotaPromissoria: aTitulosEspecieDocumento := '02';
              edApoliceSeguro: aTitulosEspecieDocumento := '03';
              edRecibo: aTitulosEspecieDocumento := '05';
              edDuplicataServico: aTitulosEspecieDocumento := '06';

{             edAluguel: aTitulosEspecieDocumento := '01';
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
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,3,false,'0'); //Código da agência cedente
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //DIGITO AG
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,7,false,'0'); // Conta movimento cedente
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1); //DIGITO C/C
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); // IDENT. DO TITULO NA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,8,True,'0'); // IDENT. DO TITULO NO BANCO COM DIG VERIFICADOR

//         if Titulos[NumeroRegistro].DataDesconto2=0 then begin
            Registro := Registro + Formatar('0',6,False,'0'); // DATA DO SEGUNDO DESCONTO
//         end
//           else
//           begin
//            Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto2); // DATA DO SEGUNDO DESCONTO
//           end;
         Registro := Registro + ' '; // Branco
         Registro := Registro + '0'; // Informação de multa = 4, senão houver informar zero Verificar página 16
         Registro := Registro + '0000'; // Percentual multa por atraso %
         Registro := Registro + '00'; // Unidade de valor moeda corrente = 00
         Registro := Registro + Formatar('0',13,False,'0'); // Valor do título em outra unidade (consultar banco)
         Registro := Registro + '    '; // BRANCOS
         Registro := Registro + Formatar('0',6,False,'0'); // Data para cobrança de multa. (Verificar página 16)
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
         Registro := Registro + '00'; // Primeira Instrucao
         Registro := Registro + '00'; // Segunda Instrucao
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
         Registro := Registro + Formatar('',30,true,' '); // NOME DO SACADOR/AVALISTA
         Registro := Registro + Formatar('',10); // BRANCO
         Registro := Registro + Formatar('00',1); // DIAS DE PROTESTO
         Registro := Registro + ' '; // BRANCO
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
         Remessa.Add(Registro);
         cTotalTitulos:=cTotalTitulos+Titulos[NumeroRegistro].ValorDocumento;
         NumeroRegistro := NumeroRegistro + 1;
      end;
      { GERAR REGISTRO TRAILER DA REMESSA }


      Remessa.Add('9'+ // IDENT. DO REGISTRO
                  Formatar(IntToStr(NumeroRegistro),8,false,'0')+ // QUANT. DE TITULOS NO ENVIADOS
                  FormatCurr('000000000000000',cTotalTitulos)+ // VALOR TOTAL DOS TITULOS ENVIADOS
                  Formatar('0',374,False,'0')+ // ZEROS                  
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0')); // QUANTIDADE TOTAL DE REGISTROS

   end;

   Result := TRUE;
end;




function TgbBanco353.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
//      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;


function TgbBanco353.LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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


         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],392,3)));

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
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,8);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],169,4);
               Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],173,1);

               {Tipo de ocorrência}
               ATipoOcorrencia := Copy(Retorno.Strings[NumeroRegistro],109,2);
               OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],109,2);
               DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal);
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

//               MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],302,50);
//               DescricaoRejeicao:=MotivoRejeicaoComando;               
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


function TgbBanco353.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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


function TgbBanco353.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
  if sOcorrenciaOriginal='  ' then begin
     Result:='';
     Exit;
  end;

  case StrToInt(sOcorrenciaOriginal) of
    01: Result:='01-TÍTULO NÃO EXISTE' ;
    02: Result:='02-ENTRADA TÍT. CONFIRMADA' ;
    03: Result:='03-ENTRADA TÍT. REJEITADA' ;
    06: Result:='06-LIQUIDAÇÃO' ;
    07: Result:='07-LIQUIDAÇÃO POR CONTA' ;
    08: Result:='08-LIQUIDAÇÃO POR SALDO' ;
    09: Result:='09-BAIXA AUTOMÁTICA' ;
    10: Result:='10-TÍT. BAIX. CONF. INSTRUÇÃO' ;
    11: Result:='11-EM SER' ;
    12: Result:='12-ABATIMENTO CONCEDIDO' ;
    13: Result:='13-ABATIMENTO CANCELADO' ;
    14: Result:='14-PRORROGAÇÃO DE VENCIMENTO' ;
    15: Result:='15-CONFIRMAÇÃO DE PROTESTO' ;
    16: Result:='16-TÍT. JÁ BAIXADO/LIQUIDADO' ;
    17: Result:='17-LIQUIDADO EM CARTÓRIO' ;
  end;

end;

{$ENDIF}

initialization
RegisterClass(TgbBanco353);

end.

