unit gbCob291;

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
   CodigoBanco = '291';
   NomeBanco = 'BCN'; {Banco de Cr�dito Nacional}

type

   TgbBanco291 = class(TPersistent)
   private
{$IFNDEF VER120}
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
      function VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
//      function GerarRemessaCNAB240(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
      function GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
//      function LerRetornoCNAB240(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
      function LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
{$ENDIF}      published
      function  GetNomeBanco   : string; {Retorna o nome do banco}
      function  GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string; {Retorna o conte�do da parte vari�vel do c�digo de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string; {Calcula o d�gito do NossoNumero, conforme crit�rios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores ser�o apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean; {L� o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
   end;


implementation


function TgbBanco291.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco291.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero: string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,7,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

function TgbBanco291.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ACodigoAgencia,
   ACodigoCedente: string;
begin

   {
    A primeira parte do c�digo de barras ser� calculada automaticamente.
    Ela � composta por:
    C�digo do banco (3 posi��es)
    C�digo da moeda = 9 (1 posi��o)
    D�gito do c�digo de barras (1 posi��o) - Ser� calculado e inclu�do pelo componente
    Fator de vencimento (4 posi��es) - Obrigat�rio a partir de 03/07/2000
    Valor do documento (10 posi��es) - Sem v�rgula decimal e com ZEROS � esquerda

    A segunda parte do c�digo de barras � um campo livre, que varia de acordo
    com o banco. Esse campo livre ser� calculado por esta fun��o (que voc� dever�
    alterar de acordo com as informa��es fornecidas pelo banco).
   }

   {Segunda parte do c�digo de barras - Campo livre - Varia de acordo com o banco}

   with ATitulo do
   begin
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0');
      ACodigoCedente := Formatar(Cedente.CodigoCedente,7,false,'0');
      ANossoNumero := Formatar(NossoNumero,13,false,'0');
   end;

   Result := ACodigoAgencia + ACodigoCedente + ANossoNumero + '1' + '7';
end;

procedure TgbBanco291.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0') + '/' + Formatar(Cedente.CodigoCedente,6,false,'0') + '-' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,7,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3);
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco291.GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
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
                  '01'+ // IDENT. DO TIPO DE SERVI�O
                  Formatar('COBRANCA',15)+ // IDENT.POR EXTENSO TIPO SERVI�O
                  Formatar(' ',10)+ // USO DO BANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,2,false,'0')+ //AG ONDE O CLIENTE MANT�M C/C
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0')+ //DIGITO AG
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,6,false,'0')+ // C/C PARA CR�DITO DA COBRAN�A
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1)+ //DIGITO C/C
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ // NOME DA EMPRESA POR EXTENSO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // BANCO ENCARREGADO DA COBRAN�A
                  Formatar('BCN',15,true,' ')+ // NOME DO BANCO POR EXTENSO
                  FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataProcessamento)+ // DATA DA GRAVA��O DO ARQUIVO
                  Formatar('01600',5)+ // DENSIDADE DE GRAVA��O
                  Formatar('BPI',3)+ // UNIDADE DENSIDADE GRAVA��O
                  Formatar('',280)+ // USO DO BANCO
                  Formatar(IntToStr(NumeroArquivo),6,false,'0')+ //NUMERO DE GERACAO DO ARQUIVO
                  '000001'); // NUMERO SEQUENCIAL REGISTRO


      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);
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
            toRemessaProtestar  : ATitulosTipoOcorrencia := '09';
//            toRemessaSustarProtestoBaixarTitulo: ATitulosTipoOcorrencia := '17';
//            toRemessaAlterarValorTitulo: ATitulosTipoOcorrencia := '19';
//            toRemessaAlterarOutrosDados: ATitulosTipoOcorrencia := '31';





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
         Registro := Registro + Formatar('',10); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,2,false,'0'); //AG ONDE O CLIENTE MANT�M C/C
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //DIGITO AG
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,6,false,'0'); // C/C PARA CR�DITO DA COBRAN�A
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1); //DIGITO C/C
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); // IDENT. DO TITULO NA EMPRESA
         Registro := Registro + Formatar('',12); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,8,True,' '); // IDENT. DO TITULO NO BANCO COM DIG VERIFICADOR
         Registro := Registro + Formatar('',25); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,1); // CODIGO DA CARTEIRA
         Registro := Registro + Formatar(aTitulosTipoOcorrencia,2,false,'0'); // IDENT. DA TRANSACAO(OCORRENCIA)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,10); // NUMERO DA DUPLICATA, ETC...
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento); // DATA DE VENCIMENTO DO TITULO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); // VALOR NOMINAL DO TITULO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // BANCO ENCARREGADO DA COBRAN�A
         Registro := Registro + '00000';
         Registro := Registro + Formatar(aTitulosEspecieDocumento,2,false,'0'); // ESP�CIE DO TITULO
         Registro := Registro + Formatar(aTitulosAceite,1); // IDENT. DE ACEITE DO TITULO
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento); // DATA DE EMISSAO DO TITULO
         Registro := Registro + '00'; // Primeira Instrucao
//         Registro := Registro + Formatar(Titulos[NumeroRegistro].PrimeiraInstrucao,2,false,'0'); // Primeira Instrucao
         Registro := Registro + '00'; // Segunda Instrucao
//         Registro := Registro + Formatar(Titulos[NumeroRegistro].SegundaInstrucao,2,false,'0'); // Segunda Instrucao
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO
         if Titulos[NumeroRegistro].DataDesconto=0 then begin
            Registro := Registro + Formatar('0',6,False,'0'); // DATA LIMITE P/ CONCESS�O DESC.
         end else begin
            Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto); // DATA LIMITE P/ CONCESS�O DESC.
         end;
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); // VALOR DESCONTO A SER CONCEDIDO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF * 100); // VALOR DE IOF
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); // VALOR DO ABATIMENTO

         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0'); // IDENT. TIPO INSCRI��O DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0'); // CGC/CPF DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40,true,' '); // NOME DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40); // ENDERE�O DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12); // BAIRRO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // ENDERE�O DO SACADO
         Registro := Registro + Formatar('',40,true,' '); // NOME DO SACADOR/AVALISTA
//         Registro := Registro + Formatar(Titulos[NumeroRegistro].SacadorAvalista,40,true,' '); // NOME DO SACADOR/AVALISTA
         Registro := Registro + ' '; // BLOQUETE (NAO USO)
         Registro := Registro + '  '; // RESERVADO
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO

         Remessa.Add(Registro);
         cTotalTitulos := cTotalTitulos + Titulos[NumeroRegistro].ValorDocumento;
         NumeroRegistro := NumeroRegistro + 1;
      end;
      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+ // IDENT. DO REGISTRO
                  Formatar(' ',393,False,' ')+ // USO DO BANCO
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0')); // QUANTIDADE TOTAL DE REGISTROS

   end;

   Result := TRUE;
end;



function TgbBanco291.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
//      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;

function TgbBanco291.LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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
         Titulos.Clear; {Zera o conjunto de t�tulos, antes de incluir os t�tulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

         if length(Retorno[0]) <> 400 then
         begin
            LayoutArquivo := laOutro;
            Raise Exception.CreateFmt('Tamanho de registro diferente de 400 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
         end;

         LayoutArquivo := laCNAB400;

         {Ver se o arquivo � mesmo RETORNO DE COBRAN�A}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' n�o � um arquivo de retorno de cobran�a com layout CNAB400');

         { L� registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este n�o � um retorno de cobran�a do banco %s - %s',[CodigoBanco,NomeBanco]);

         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));

         if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
            DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));


         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],389,6)));

         {L� os registros DETALHE}
         {Processa at� o pen�ltimo registro porque o �ltimo cont�m apenas o TRAILLER}
         for NumeroRegistro := 1 to (Retorno.Count - 2) do
         begin
            {Confirmar se o tipo do registro � 1}
            if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
               Continue; {N�o processa o registro atual}

            { Ler t�tulos do arquivo retorno}
            {Dados do titulo}
            with ATitulo do
            begin
               {Dados do cedente do t�tulo}
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

               {Nosso n�mero SEM D�GITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],139,8);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],169,4);
               Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],173,1);

               {Tipo de ocorr�ncia}
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

               MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],299,10);
               DescricaoMotivoRejeicaoComando := VerificaMotivoRejeicaoComando(MotivoRejeicaoComando);
             
               Carteira := Copy(Retorno.Strings[NumeroRegistro],108,1);
               ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],202,13))/100;
               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));

            end; {with ATitulo}

            {Insere o t�tulo}
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


function TgbBanco291.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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
         Titulos.Clear; {Zera o conjunto de t�tulos, antes de incluir os t�tulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

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
               Raise Exception.CreateFmt('Tamanho de registro inv�lido: %d',[length(Retorno[0])]);
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


function TgbBanco291.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
 if sOcorrenciaOriginal='  ' then begin
    Result:='';
    Exit;
 end;
 case StrToInt(sOcorrenciaOriginal) of
   02: Result:='02-Entrada Confirmada' ;
   03: Result:='03-Entrada Rejeitada' ;
   06: Result:='06-Liquida��o Normal' ;
   08: Result:='08-Liquida��o em Cart�rio' ;
   09: Result:='09-Baixado Automaticamente (Condi��o de cadastro)' ;
   10: Result:='10-Baixado conf. Instru��o' ;
   11: Result:='11-T�tulos em Ser (posi��o mensal da carteira)' ;
   12: Result:='12-Abatimento concedido' ;
   13: Result:='13-Abatimento cancelado' ;
   14: Result:='14-Vencimento alterado' ;
   15: Result:='15-Protesto confirmado' ;
   20: Result:='20-Susta��o de protesto confirmada' ;
   28: Result:='28-Debito de Custas Cartor�rias' ;
   30: Result:='30-Altera��o de outros dados rejeitados' ;
   33: Result:='33-Confirma��o de Pedido de Altera��o de  outros dados' ;
   52: Result:='52-Pedido de baixa rejeitado' ;
   54: Result:='54-Instru��o de abatimento rejeitada' ;
   55: Result:='55-Cancelamento de abatimento rejeitado' ;
   56: Result:='56-Altera��o de vencimento rejeitada' ;
   59: Result:='59-Protesto rejeitado' ;
   68: Result:='68-Susta��o de protesto rejeitado' ;
   69: Result:='69-Instru��o em processamento' ;
   90: Result:='90-Transfer�ncia de Carteira' ;
   91: Result:='91-T�tulo Protestado' ;
 end;
end;


function TgbBanco291.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
var
 i: Integer;
begin
 Result:='';
 if sMotivoRejeicaoComando=Formatar('',20) then begin
    Result:='';
    Exit;
 end;

 i:=1;
 while i<=20 do begin
  if Copy(sMotivoRejeicaoComando,i,2)<>'  ' then begin
     case StrToInt(Copy(sMotivoRejeicaoComando,i,2)) of
       01: Result:='01-C�digo do banco inv�lido' ;
       02: Result:='02-C�digo do registro detalhe inv�lido' ;
       03: Result:='03-Data da remessa inv�lida' ;
       04: Result:='04-Ag�ncia/conta/d�gito inv�lido' ;
       05: Result:='05-C�digo da carteira inv�lido' ;
       06: Result:='06-Nosso n�mero inv�lido' ;
       07: Result:='07-Data de vencimento inv�lido' ;
       08: Result:='08-Valor do t�tulo inv�lido' ;
       09: Result:='09-Esp�cie de t�tulo inv�lido' ;
       10: Result:='10-Data de emiss�o inv�lida 11 C�digo de aceite inv�lido' ;
       12: Result:='12-Valor do desconto inv�lido' ;
       13: Result:='13-Data de desconto inv�lida' ;
       14: Result:='14-CEP inv�lido' ;
       15: Result:='15-Instru��o 1 inv�lida' ;
       16: Result:='16-Instru��o 2 inv�lida' ;
       17: Result:='17-Taxa de juro inv�lida' ;
       18: Result:='18-Valor da mora inv�lido' ;
       19: Result:='19-Nome do sacado inv�lido' ;
       20: Result:='20-Endere�o do sacado inv�lido' ;
       21: Result:='21-Cidade do sacado inv�lido' ;
       22: Result:='22-Bairro do sacado inv�lido' ;
       23: Result:='23-Estado do sacado inv�lido' ;
       24: Result:='24-Tipo de inscri��o do sacado inv�lido' ;
       25: Result:='25-Tipo de fita remessa inv�lida' ;
       26: Result:='26-Tipo de moeda inv�lida' ;
       27: Result:='27-Valor do IOF inv�lido' ;
       28: Result:='28-Ag�ncia cobradora inv�lida' ;
       29: Result:='29-Raz�o controle inv�lido' ;
       30: Result:='30-Responsabilidade inv�lida' ;
       31: Result:='31-Inscri��o do Cedente inv�lido' ;
       32: Result:='32-CGC do Cedente inv�lido' ;
       33: Result:='33-Controle da empresa inv�lido' ;
       34: Result:='34-Pra�a cobradora inv�lida' ;
       35: Result:='35-Valor do abatimento inv�lido' ;
       36: Result:='36-Sequ�ncia do registro inv�lido' ;
       37: Result:='37-Data do vencimento inv�lido' ;
       38: Result:='38-Esp�cie de t�tulo inv�lido para cheque' ;
       39: Result:='39-Cust�dia/Cau��o de cheque bloqueado' ;
       40: Result:='40-Cheque com tipo de cobran�a inv�lido' ;
       42: Result:='42-Instru��o especial inv�lida' ;
       43: Result:='43-Taxa de juro inv�lido p/ Banco. Correspondente' ;
       44: Result:='44-Mora inv�lido p/ Banco. Correspondente' ;
       45: Result:='45-Sacador/avalista invalido para Banco Correspondente' ;
       46: Result:='46-Instru��o especial inv�lida para Banco Correspondente' ;
       47: Result:='47-Esp�cie de t�tulo inv�lido para Banco Correspondente' ;
       48: Result:='48-CEP n�o cadastrado 49 Cedente - Conta Garantida - ECC' ;
       50: Result:='50-N�mero de T�tulo Inv�lido para Cliente Pr�-impresso' ;
       51: Result:='51-Registro de entrada em duplicidade' ;
       52: Result:='52-Moeda n�o identificada' ;
       53: Result:='53-CPF/CGC do sacado sem correspondente no BCNPag' ;
       54: Result:='54-Registro com caracter min�sculo - Reg. Aceito' ;
       55: Result:='55-Seu n�mero  com caracter n�o EBCDIC - Reg. Aceito' ;
       56: Result:='56-Nome do Sacado com caracter n�o EBCDIC - Reg. Aceito' ;
       57: Result:='57-Endere�o do sacado com caracter n�o EBCDIC - Reg. Aceito' ;
       58: Result:='58-Cidade do sacado com caracter n�o EBCDIC - Reg. Aceito' ;
       59: Result:='59-Bairro do sacado com caracter n�o EBCDIC - Reg. Aceito' ;
       60: Result:='60-Estado do sacado com caracter n�o EBCDIC - Reg. Aceito' ;
       61: Result:='61-Nome avalista com caracter n�o EBCDIC - Reg. Aceito' ;
       62: Result:='62-CGC/CPF do sacado inv�lido - Reg. Aceito' ;
       63: Result:='63-CGC/CPF do sacado d�gito inv�lido - Reg. Aceito' ;
       64: Result:='64-CGC/CPF do sacado inv�lido - Reg. Rejeitado' ;
       65: Result:='65-CGC/CPF do sacado digito inv�lido - Reg. Rejeitado' ;
       67: Result:='67-CEP n�o cadastrado para pra�a BCN' ;
       68: Result:='68-Pra�a do CEP n�o cumpre cart�rio' ;
       69: Result:='69-Digito do nosso numero n�o confere' ;
       70: Result:='70-IOF maior que valor do t�tulo' ;
       71: Result:='71-Instru��o de t�tulo bloqueada' ;
       72: Result:='72-Registro sem  correspondente' ;
       73: Result:='73-Instru��o inv�lida para c�digo de registro 003' ;
       74: Result:='74-Inv�lido para vendor eletr�nico' ;
       75: Result:='75-Inv�lido envio de t�tulos com mensagem para Banco correspondente' ;
       76: Result:='76-N�mero do CMC7 inv�lido' ;
       77: Result:='77-Banco/Ag�ncia/Conta de D�bito Inv. Ou n�o cadastrado' ;
       78: Result:='78-Cobran�a cau��o n�o aceita altera��o Valor menor que o cadastrado' ;
       79: Result:='79-Protesto inv�lido para esp�cie de t�tulo' ;
       80: Result:='80-Protesto inv�lido - CGC do sacado inv�lido' ;
       81: Result:='81-Data emiss�o maior que data do vencimento' ;
       82: Result:='82-Banco/Ag. Cobradora n�o dispon�vel p/ cob. D�lar' ;
       83: Result:='83-T�tulo n�o acolhido' ;
       85: Result:='85-Numero banc�rio do Banco  Correspondente - D�gito inv�lido' ;
       86: Result:='86-T�tulo n�o possui pra�a no Bradesco' ;
       87: Result:='87-T�tulo Vendor - Pra�a n�o atendida por BCN/Bradesco' ;
       88: Result:='88-Sufixo do Cep inv�lido - Registro aceito' ;
    end;
  end;
  i:=i+2;  
 end;
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco291);

end.
