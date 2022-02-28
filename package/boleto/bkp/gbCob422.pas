unit gbCob422;

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
   CodigoBanco = '422';
   NomeBanco = 'Banco Safra';

type

   TgbBanco422 = class(TPersistent)
   private
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
      function  GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string; {Retorna o conte�do da parte vari�vel do c�digo de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string; {Calcula o d�gito do NossoNumero, conforme crit�rios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores ser�o apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean; {L� o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
   end;


implementation


function TgbBanco422.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco422.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,8,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

function TgbBanco422.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
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
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
      ACodigoCedente := Formatar(Cedente.CodigoCedente + Cedente.DigitoCodigoCedente,10,false,'0');
      ANossoNumero := Formatar(NossoNumero,9,false,'0');
   end;

   Result := '7' + ACodigoAgencia + ACodigoCedente + ANossoNumero + '2';
end;

procedure TgbBanco422.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Cedente.ContaBancaria.CodigoAgencia + '/' + Cedente.CodigoCedente;
      ANossoNumero := Formatar(NossoNumero,9,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,1,false,'0');
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco422.GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
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
                  Formatar('COBRANCA',8)+ // IDENT.POR EXTENSO TIPO SERVI�O
                  Formatar('',7)+ // USO DO BANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,14,True,' ')+ // IDENTIFICA��O DA CONTA COBRAN�A/CARTEIRA FORNECIDO PELO BANCO
                  Formatar('',6)+ // USO DO BANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ // NOME DA EMPRESA POR EXTENSO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // NUMERO DO BANCO DA COMPENSA��O
                  Formatar('BANCO SAFRA',11,true,' ')+ // NOME DO BANCO POR EXTENSO
                  Formatar('',4)+ // USO DO BANCO
                  FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataProcessamento)+ // DATA DA GRAVA��O DO ARQUIVO
                  Formatar('',291)+ // USO DO BANCO
                  Formatar(IntToStr(NumeroArquivo),3,false,'0')+ //NUMERO DE GERACAO DO ARQUIVO
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
//            toRemessaPedidoDevolucao : ATitulosTipoOcorrencia := '02';
            toRemessaConcederAbatimento  : ATitulosTipoOcorrencia := '04';
//            toRemessaProrrogacaoVencimento : ATitulosTipoOcorrencia := '06';
            toRemessaProtestar  : ATitulosTipoOcorrencia := '09';
//            toRemessaSustarProtesto  : ATitulosTipoOcorrencia := '10';

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
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,14,True,' '); // IDENTIFICA��O DA CONTA COBRAN�A/CARTEIRA FORNECIDO PELO BANCO
         Registro := Registro + Formatar(' ',06,False,' ');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); // IDENT. DO TITULO NA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,9,True,' '); // IDENT. DO TITULO NO BANCO COM DIG VERIFICADOR
         Registro := Registro + Formatar(' ',30,False,' '); // USO DO BANCO
         Registro := Registro + '0'; // CODIGO IOF OPERA��ES
//         Registro := Registro + Formatar(Titulos[NumeroRegistro].CodigoIof,1,false,'0'); // CODIGO IOF OPERA��ES
         Registro := Registro + '00'; // CODIGO DA MOEDA
         Registro := Registro + ' '; // USO DO BANCO
         Registro := Registro + '00'; // INSTRU��O 3
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,1); // CODIGO DA CARTEIRA
         Registro := Registro + Formatar(aTitulosTipoOcorrencia,2,false,'0'); // IDENT. DA TRANSACAO(OCORRENCIA)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,10); // NUMERO DA DUPLICATA, ETC...
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento); // DATA DE VENCIMENTO DO TITULO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); // VALOR NOMINAL DO TITULO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // BANCO ENCARREGADO DA COBRAN�A
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,true,' '); // AGENCIA ENCARREGADA DA COBRAN�A
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,' '); // DIGITO AGENCIA ENCARREGADA DA COBRAN�A
         Registro := Registro + Formatar(aTitulosEspecieDocumento,2,false,'0'); // ESP�CIE DO TITULO
         Registro := Registro + Formatar(aTitulosAceite,1); // IDENT. DE ACEITE DO TITULO
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento); // DATA DE EMISSAO DO TITULO
         Registro := Registro + '00'; // Primeira Instrucao
         Registro := Registro + '00'; // Segunda Instrucao
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO
         if Titulos[NumeroRegistro].DataDesconto=0 then begin
            Registro := Registro + Formatar(' ',6,False,' '); // DATA LIMITE P/ CONCESS�O DESC.
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
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,10); // BAIRRO DO SACADO
         Registro := Registro + '  '; // BRANCOS
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // ENDERE�O DO SACADO

         Registro := Registro + Formatar('',30,true,' '); // NOME DO SACADOR/AVALISTA
         Registro := Registro + Formatar('',7); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // BANCO ENCARREGADO DA COBRAN�A
         Registro := Registro + Formatar(IntToStr(NumeroArquivo),3,false,'0'); //NUMERO DE GERACAO DO ARQUIVO         

         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
         Remessa.Add(Registro);
         cTotalTitulos:=cTotalTitulos+Titulos[NumeroRegistro].ValorDocumento;
         NumeroRegistro := NumeroRegistro + 1;
      end;
      { GERAR REGISTRO TRAILER DA REMESSA }


      Remessa.Add('9'+ // IDENT. DO REGISTRO
                  Formatar(' ',367,False,' ')+ // USO DO BANCO      
                  Formatar(IntToStr(NumeroRegistro),8,false,'0')+ // QUANT. DE TITULOS NO ENVIADOS
                  FormatCurr('000000000000000',cTotalTitulos)+ // VALOR TOTAL DOS TITULOS ENVIADOS
                  Formatar(IntToStr(NumeroArquivo),3,false,'0')+ //NUMERO DE GERACAO DO ARQUIVO
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0')); // QUANTIDADE TOTAL DE REGISTROS
   end;

   Result := TRUE;
end;




function TgbBanco422.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
//      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;


function TgbBanco422.LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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


         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],392,3)));

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
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,9);
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

               MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],105,3);
               DescricaoMotivoRejeicaoComando:=VerificaMotivoRejeicaoComando(MotivoRejeicaoComando);
               
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

function TgbBanco422.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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

function TgbBanco422.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
  if sOcorrenciaOriginal='  ' then begin
     Result:='';
     Exit;
  end;

  case StrToInt(sOcorrenciaOriginal) of
    02: Result:='02-ENTRADA CONFIRMADA' ;
    03: Result:='03-ENTRADA REJEITADA' ;
    04: Result:='04-TRANSFER�NCIA DE CARTEIRA (ENTRADA)' ;
    05: Result:='05-TRANSFER�NCIA DE CARTEIRA (BAIXA)' ;
    06: Result:='06-LIQUIDA��O NORMAL' ;
    07: Result:='07-LIQUIDA��O PARCIAL' ;
    09: Result:='09-BAIXADO AUTOMATICAMENTE' ;
    10: Result:='10-BAIXADO CONFORME INSTRU��ES' ;
    11: Result:='11-T�TULOS EM SER (PARA ARQUIVO MENSAL)' ;
    12: Result:='12-ABATIMENTO CONCEDIDO' ;
    13: Result:='13-ABATIMENTO CANCELADO' ;
    14: Result:='14-VENCIMENTO ALTERADO' ;
    15: Result:='15-LIQUIDA��O EM CART�RIO' ;
    16: Result:='16-BAIXADO POR ENTREGA FRANCO DE PAGAMENTO' ;
    19: Result:='19-CONFIRMA��O DE INSTRU��O DE PROTESTO' ;
    20: Result:='20-CONFIRMA��O DE SUSTAR PROTESTO' ;
    21: Result:='21-TRANSFER�NCIA DE CEDENTE' ;
    23: Result:='23-T�TULO ENVIADO A CART�RIO' ;
    40: Result:='40-BAIXA DE T�TULO PROTESTADO' ;
    41: Result:='41-LIQUIDA��O DE T�TULO BAIXADO' ;
    42: Result:='42-T�TULO RETIRADO DO CART�RIO' ;
    43: Result:='43-DESPESA DE CART�RIO' ;
    51: Result:='51-VALOR DO T�TULO ALTERADO' ;
  end;
end;

function TgbBanco422.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
begin
 if sMotivoRejeicaoComando='  ' then begin
    Result:='';
    Exit;
 end;
   
 case StrToInt(sMotivoRejeicaoComando) of
   001: Result:='001-MOEDA INV�LIDA' ;
   002: Result:='002-MOEDA INV�LIDA PARA CARTEIRA' ;
   003: Result:='003-CARTEIRA 3 INV�LIDA PARA TIPO DE MOEDA' ;
   004: Result:='004-TIPO DE IOF. INV�LIDO PARA COBRAN�A DE SEGUROS' ;
   005: Result:='005-TIPO DE IOF. INV�LIDO PARA VALOR DE IOF (SEGUROS)' ;
   006: Result:='006-VALOR DE IOF INV�LIDO (SEGUROS)' ;
   007: Result:='007-CEP N�O CORRESPONDE UF' ;
   008: Result:='008-VALOR JUROS MAIOR QUE 5% DO VALOR DO T�TULO' ;
   010: Result:='010-SEU NUMERO - N�O NUM�RICO PARA CHEQUE' ;
   009: Result:='009-USO EXCLUSIVO N�O NUM�RICO PARA COBRANCA EXPRESS' ;
   011: Result:='011-NOSSO N�MERO FORA DA FAIXA' ;
   012: Result:='012-CEP DE CIDADE INEXISTENTE' ;
   013: Result:='013-CEP FORA DE FAIXA DA CIDADE' ;
   014: Result:='014-UF INVALIDO PARA CEP DA CIDADE' ;
   015: Result:='015-CEP ZERADO' ;
   016: Result:='016-CEP N�O CONSTA NA TABELA SAFRA' ;
   017: Result:='017-CEP N�O CONSTA TABELA BCO. CORRESPONDENTE' ;
   018: Result:='018-DADOS DO CHEQUE N�O N�MERICO' ;
   019: Result:='019-PROTESTO IMPRATIC�VEL' ;
   020: Result:='020-PRIMEIRA INSTRU��O DE COBRAN�A INVALIDA' ;
   021: Result:='021-SEGUNDA INSTRU��O DE COBRAN�A INV�LIDA' ;
   022: Result:='022-SEGUNDA INSTR. ( 10 ) E TERCEIRA INSTR. INVALIDA' ;
   023: Result:='023-TERCEIRA INSTRU��O DE COBRAN�A INV�LIDA' ;
   024: Result:='024-DIGITO VERIFICADOR  C1 INV�LIDO' ;
   025: Result:='025-DIGITO VERIFICADOR  C2 INV�LIDO' ;
   026: Result:='026-C�DIGO DE OPERA��O/OCORR�NCIA INV�LIDO' ;
   027: Result:='027-OPERA��O INV�LIDA PARA O CLIENTE' ;
   028: Result:='028-NOSSO N�MERO N�O NUM�RICO OU ZERADO' ;
   029: Result:='029-NOSSO N�MERO COM D�GITO DE CONTROLE ERRADO' ;
   030: Result:='030-VALOR DO ABATIMENTO N�O NUM�RICO OU ZERADO' ;
   031: Result:='031-SEU N�MERO EM BRANCO' ;
   032: Result:='032-C�DIGO DA CARTEIRA INV�LIDO' ;
   033: Result:='033-DIGITO VERIFICADOR C3 INV�LIDO' ;
   034: Result:='034-C�DIGO DO T�TULO INV�LIDO' ;
   035: Result:='035-DATA DE MOVIMENTO INV�LIDA' ;
   036: Result:='036-DATA DE EMISS�O INV�LIDA' ;
   037: Result:='037-DATA DE VENCIMENTO INV�LIDA' ;
   038: Result:='038-DEPOSIT�RIA INV�LIDA' ;
   039: Result:='039-DEPOSIT�RIA INV�LIDA PARA O CLIENTE' ;
   040: Result:='040-DEPOSIT�RIA N�O CADASTRADA NO BANCO' ;
   041: Result:='041-C�DIGO DE ACEITE INV�LIDO' ;
   042: Result:='042-ESP�CIE DE T�TULO INV�LIDO' ;
   043: Result:='043-INSTRU��O DE COBRAN�A INV�LIDA' ;
   044: Result:='044-VALOR DO T�TULO N�O NUM�RICO OU ZERADO' ;
   045: Result:='045-DATA  DE OPERA��O INVALIDA' ;
   046: Result:='046-VALOR DE JUROS N�O NUM�RICO OU ZERADO' ;
   047: Result:='047-DATA LIMITE PARA DESCONTO INV�LIDA' ;
   048: Result:='048-VALOR DO DESCONTO INV�LIDO' ;
   049: Result:='049-VALOR IOF. N�O NUM�RICO OU ZERADO (SEGUROS)' ;
   050: Result:='050-ABATIMENTO COM VALOR PARA OPERA��O "01"  (Entrada de T�tulo)' ;
   051: Result:='051-C�DIGO DE INSCRI��O DO SACADO INV�LIDO' ;
   052: Result:='052-C�DIGO DE INSCRI��O / N�MERO DE INSCRI��O DO SACADO INV�LIDO' ;
   053: Result:='053-N�MERO DE INSCRI��O DO SACADO N�O NUM�RICO OU D�GITO ERRADO' ;
   054: Result:='054-NOME DO SACADO EM BRANCO' ;
   055: Result:='055-ENDERE�O DO SACADO EM BRANCO' ;
   056: Result:='056-CLIENTE NAO RECADASTRADO' ;
   057: Result:='057-CLIENTE BLOQUEADO' ;
   058: Result:='058-PROCESSO DE CART�RIO INV�LIDO' ;
   059: Result:='059-ESTADO DO SACADO INV�LIDO' ;
   060: Result:='060-CEP / ENDERE�O DIVERGEM DO CORREIO' ;
   061: Result:='061-INSTRU��O AGENDADA PARA AG�NCIA' ;
   062: Result:='062-OPERA��O INV�LIDA PARA A CARTEIRA' ;
   063: Result:='063-C�DIGO N�O PREVISTO' ;
   064: Result:='064-T�TULO INEXISTENTE (TFC)' ;
   065: Result:='065-OPERA��O J� EXISTENTE PARA O T�TULO' ;
   066: Result:='066-T�TULO J� EXISTE       (TFC)' ;
   067: Result:='067-DATA DE VENCIMENTO INV�LIDA PARA PROTESTO' ;
   068: Result:='068-CEP DO SACADO N�O CONSTA NA TABELA' ;
   069: Result:='069-PRA�A N�O ATENDIDA PELO SERVI�O CART�RIO' ;
   070: Result:='070-AG�NCIA INV�LIDA' ;
   071: Result:='071-CLIENTE N�O CADASTRADO' ;
   072: Result:='072-T�TULO J� EXISTE (COB)' ;
   073: Result:='073-TAXA OPERA��O N�O NUM�RICA OU ZERADA  (VENDOR)' ;
   074: Result:='074-T�TULO FORA DE SEQ��NCIA' ;
   075: Result:='075-TAXA DE OPERA��O ZERADA   (VENDOR)' ;
   076: Result:='076-EQUALIZA��O N�O NUM�RICA OU INV�LIDA  (VENDOR)' ;
   077: Result:='077-TAXA NEGOCIADA N�O NUM�RICA OU ZERADA  (VENDOR)' ;
   078: Result:='078-T�TULO INEXISTENTE (COB)' ;
   079: Result:='079-OPERA��O N�O CONCLUIDA' ;
   080: Result:='080-T�TULO J� CADASTRADO' ;
   081: Result:='081-T�TULO N�O DESCONTADO' ;
   082: Result:='082-C�DIGO N�O PREVISTO' ;
   083: Result:='083-PRORROGA��O / ALTERA��O DE VENCIMENTO INV�LIDA' ;
   084: Result:='084-MOVIMENTO IGUAL AO CADASTRO DE EXIST�NCIA DO COB' ;
   085: Result:='085-C�DIGO OPERA��O COM PCB INV�LIDO  ( OPERA��O INV�LIDA P/ CARTEIRA )' ;
   086: Result:='086-ABATIMENTO MAIOR QUE VALOR DO T�TULO' ;
   087: Result:='087-ALTERA��O DE CART�RIO INV�LIDA' ;
   088: Result:='088-C�DIGO N�O PREVISTO' ;
   089: Result:='089-ALTERA��O DE DATA DE PROTESTO INV�LIDA' ;
   090: Result:='090-MODALIDADE DE VENDOR INVALIDO' ;
   091: Result:='091-PCB CTO INVALIDA' ;
   092: Result:='092-DATA DE OPERA��O CTO INV�LIDA' ;
   093: Result:='093-BAIXA DE T�TULO DE OUTRA AG�NCIA' ;
   094: Result:='094-ENTRADA T�TULO COBRAN�A DIRETA INV�LIDA' ;
   095: Result:='095-BAIXA T�TULO COBRAN�A DIRETA INV�LIDA' ;
   096: Result:='096-VALOR DO T�TULO INV�LIDO' ;
   097: Result:='097-MOEDA INV�LIDA PARA BANCO CORRESPONDENTE' ;
   098: Result:='098-PCB DO TFC DIVERGEM DA PCB DO COB' ;
   099: Result:='099-INCLUS�O DE TERCEIRA MOEDA INV�LIDA' ;
 end;
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco422);

end.
