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
   NomeBanco = 'Banco Ita� S.A.';

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
      function  GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string; {Retorna o conte�do da parte vari�vel do c�digo de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string; {Calcula o d�gito do NossoNumero, conforme crit�rios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores ser�o apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean; {L� o arquivo retorno recebido do banco}
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

      Remessa.Add('0'+ // IDENTIFICA��O DO REGISTRO HEADER
                  '1'+ // TIPO DE OPERA��O - REMESSA
                  'REMESSA'+ // IDENTIFICA��O POR EXTENSO DO MOVIMENTO
                  '01'+ // IDENTIFICA��O DO TIPO DE SERVI�O
                  Formatar('COBRANCA',15)+ // IDENTIFICA��O POR EXTENSO DO TIPO DE SERVI�O
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0')+ // AG�NCIA MANTENEDORA DA CONTA
                  '00'+ // COMPLEMENTO DE REGISTRO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,5,false,'0')+ // N�MERO DA CONTA CORRENTE DA EMPRESA
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1)+ // D�GITO DE AUTO CONFER�NCIA AG/CONTA EMPRESA
                  Formatar('',8)+ // COMPLEMENTO DO REGISTRO 
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ //  NOME POR EXTENSO DA "EMPRESA M�E"
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // N� DO BANCO NA C�MARA DE COMPENSA��O
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Nome,15,true,' ')+ // NOME POR EXTENSO DO BANCO COBRADOR
                  FormatDateTime('ddmmyy',DataArquivo)+ // DATA DE GERA��O DO ARQUIVO
                  Formatar('',294)+ // COMPLEMENTO DO REGISTRO
                  '000001'); // N�MERO SEQ�ENCIAL DO REGISTRO NO ARQUIVO 

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
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

         Registro := '1'; // IDENTIFICA��O DO REGISTRO TRANSA��O
         Registro := Registro + Formatar(ACedenteTipoInscricao,2,false,'0'); // TIPO DE INSCRI��O DA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); // N� DE INSCRI��O DA EMPRESA (CPF/CGC)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); // AG�NCIA MANTENEDORA DA CONTA
         Registro := Registro + '00'; // COMPLEMENTO DE REGISTRO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,5,false,'0'); // N�MERO DA CONTA CORRENTE DA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1); // D�GITO DE AUTO CONFER�NCIA AG/CONTA EMPRESA
         Registro := Registro + Formatar('',8,true,' '); // COMPLEMENTO DE REGISTRO/C�D.INSTRU��O/ALEGA��O A SER CANCELADA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); // IDENTIFICA��O DO T�TULO NA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,8,false,'0'); // IDENTIFICA��O DO T�TULO NO BANCO
         Registro := Registro + Formatar('',13,false,'0'); // QUANTIDADE DE MOEDA VARI�VEL
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,3,false,'0'); // N�MERO DA CARTEIRA NO BANCO
         Registro := Registro + Formatar('',21); // IDENTIFICA��O DA OPERA��O NO BANCO
         Registro := Registro + 'I'; // C�DIGO DA CARTEIRA 

         {Tipo de ocorr�ncia}
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
            Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end;
         Registro := Registro + ATipoOcorrencia; // IDENTIFICA��O DA OCORR�NCIA

         Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,10); // N� DO DOCUMENTO DE COBRAN�A (DUPL.,NP ETC.)
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento); // DATA DE VENCIMENTO DO T�TULO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); // VALOR NOMINAL DO T�TULO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // N� DO BANCO NA C�MARA DE COMPENSA��O 
         Registro := Registro + Formatar('',5,false,'0'); // AG�NCIA ONDE O T�TULO SER� COBRADO

         {Esp�cie do t�tulo}
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
         Registro := Registro + AEspecieDocumento; // ESP�CIE DO T�TULO  

         {Identifica��o de aceite do t�tulo}
         case Titulos[NumeroRegistro].AceiteDocumento of
            adSim : Registro := Registro + 'A';
            adNao : Registro := Registro + 'N';
         end;

         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento); // DATA DA EMISS�O DO T�TULO
         Registro := Registro + '00'; // Primeira Instrucao
         Registro := Registro + '00'; // Segunda Instrucao
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros*100); // VALOR DE MORA POR DIA DE ATRASO
         
         if Titulos[NumeroRegistro].DataDesconto <> 0 then // DATA LIMITE PARA CONCESS�O DE DESCONTO
            Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto)
         else
            Registro := Registro + Formatar(' ',6,false,'0');

         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto*100); // VALOR DO DESCONTO A SER CONCEDIDO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF*100); // VALOR DO I.O.F. RECOLHIDO P/ NOTAS SEGURO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento*100); // VALOR DO ABATIMENTO A SER CONCEDIDO         
         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0'); // IDENTIFICA��O DO TIPO DE INSCRI��O/SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0'); // N� DE INSCRI��O DO SACADO  (CPF/CGC)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,30); // NOME DO SACADO
         Registro := Registro + Formatar(' ',10); // COMPLEMENTO DE REGISTRO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40); // RUA, N�MERO E COMPLEMENTO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12); // BAIRRO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO 
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO 
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // UF DO SACADO
         Registro := Registro + Formatar('',30,true,' '); // NOME DO SACADOR/AVALISTA
         Registro := Registro + '000000'; // DATA DE MORA
         Registro := Registro + '00'; // PRAZO
         Registro := Registro + ' '; // BRANCOS
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // N� SEQ�ENCIAL DO REGISTRO NO ARQUIVO

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
         Titulos.Clear; {Zera o conjunto de t�tulos, antes de incluir os t�tulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

         {Ver se o arquivo � mesmo RETORNO DE COBRAN�A}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' n�o � um arquivo de retorno de cobran�a');

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
                  ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],18,4);
                  ContaBancaria.NumeroConta := Copy(Retorno.Strings[NumeroRegistro],24,5);
                  ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],29,1);
                  CodigoCedente := Cedente.ContaBancaria.NumeroConta;
                  DigitoCodigoCedente := Cedente.ContaBancaria.DigitoConta;
                  Nome := ANomeCedente;
               end; {with ACedente}

               SeuNumero := Copy(Retorno.Strings[NumeroRegistro],38,25);
               {Nosso n�mero SEM D�GITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,8);
               Carteira := Copy(Retorno.Strings[NumeroRegistro],83,3);

               {Tipo de ocorr�ncia}

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

               {Esp�cie do documento}
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


function TgbBanco341.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
 if sOcorrenciaOriginal='  ' then begin
    Result:='';
    Exit;
 end;
 case StrToInt(sOcorrenciaOriginal) of
   02: Result:='02-ENTRADA CONFIRMADA' ;
   03: Result:='03-ENTRADA REJEITADA (NOTA 20 - TABELA 1)' ;
   04: Result:='04-ALTERA��O DE DADOS - NOVA ENTRADA' ;
   05: Result:='05-ALTERA��O DE DADOS - BAIXA' ;
   06: Result:='06-LIQUIDA��O NORMAL' ;
   08: Result:='08-LIQUIDA��O EM CART�RIO' ;
   09: Result:='09-BAIXA SIMPLES' ;
   10: Result:='10-BAIXA POR TER SIDO LIQUIDADO' ;
   11: Result:='11-EM SER (S� NO RETORNO MENSAL)' ;
   12: Result:='12-ABATIMENTO CONCEDIDO' ;
   13: Result:='13-ABATIMENTO CANCELADO' ;
   14: Result:='14-VENCIMENTO ALTERADO' ;
   15: Result:='15-BAIXAS REJEITADAS (NOTA 20 - TABELA 4)' ;
   16: Result:='16-INSTRU��ES REJEITADAS (NOTA 20 - TABELA 3)' ;
   17: Result:='17-ALTERA��O DE DADOS REJEITADOS (NOTA 20 - TABELA 2)' ;
   18: Result:='18-COBRAN�A CONTRATUAL - ABATIMENTO E BAIXA BLOQUEADOS(NOTA 20 - TABELA 5)' ;
   19: Result:='19-CONFIRMA RECEBIMENTO DE INSTRU��O DE PROTESTO' ;
   20: Result:='20-CONFIRMA RECEBIMENTO DE INSTRU��O DE SUSTA��O DE PROTESTO /TARIFA' ;
   21: Result:='21-CONFIRMA RECEBIMENTO DE INSTRU��O DE N�O PROTESTAR' ;
   23: Result:='23-PROTESTO ENVIADO A CART�RIO/TARIFA' ;
   24: Result:='24-INSTRU��O DE PROTESTO REJEITADA / SUSTADA / PENDENTE (NOTA 20 - TABELA 7)' ;
   25: Result:='25-ALEGA��ES DO SACADO (NOTA 20 - TABELA 6)' ;
   26: Result:='26-TARIFA DE AVISO DE COBRAN�A' ;
   27: Result:='27-TARIFA DE EXTRATO POSI��O (B40X)' ;
   28: Result:='28-TARIFA DE RELA��O DAS LIQUIDA��ES' ;
   29: Result:='29-TARIFA DE MANUTEN��O DE T�TULOS VENCIDOS' ;
   30: Result:='30-D�BITO MENSAL DE TARIFAS (PARA ENTRADAS E BAIXAS)' ;
   32: Result:='32-BAIXA POR TER SIDO PROTESTADO' ;
   33: Result:='33-CUSTAS DE PROTESTO' ;
   34: Result:='34-CUSTAS DE SUSTA��O' ;
   35: Result:='35-CUSTAS DE CART�RIO DISTRIBUIDOR' ;
   36: Result:='36-CUSTAS DE EDITAL' ;
   37: Result:='37-TARIFA DE EMISS�O DE BLOQUETO/TARIFA DE ENVIO DE DUPLICATA' ;
   38: Result:='38-TARIFA DE INSTRU��O' ;
   39: Result:='39-TARIFA DE OCORR�NCIAS' ;
   40: Result:='40-TARIFA MENSAL DE EMISS�O DE BLOQUETO/TARIFA MENSAL DE ENVIO DE DUPLICATA' ;
   41: Result:='41-D�BITO MENSAL DE TARIFAS - EXTRATO DE POSI��O (B4EP/B4OX)' ;
   42: Result:='42-D�BITO MENSAL DE TARIFAS - OUTRAS INSTRU��ES' ;
   43: Result:='43-D�BITO MENSAL DE TARIFAS - MANUTEN��O DE T�TULOS VENCIDOS' ;
   44: Result:='44-D�BITO MENSAL DE TARIFAS - OUTRAS OCORR�NCIAS' ;
   45: Result:='45-D�BITO MENSAL DE TARIFAS - PROTESTO' ;
   46: Result:='46-D�BITO MENSAL DE TARIFAS - SUSTA��O DE PROTESTO' ;
   47: Result:='47-BAIXA COM TRANSFER�NCIA PARA DESCONTO' ;
   48: Result:='48-CUSTAS DE SUSTA��O JUDICIAL' ;
   51: Result:='51-TARIFA MENSAL REF A ENTRADAS BANCOS CORRESPONDENTES NA CARTEIRA' ;
   52: Result:='52-TARIFA MENSAL BAIXAS NA CARTEIRA' ;
   53: Result:='53-TARIFA MENSAL BAIXAS EM BANCOS CORRESPONDENTES NA CARTEIRA' ;
   54: Result:='54-TARIFA MENSAL  DE LIQUIDA��ES NA CARTEIRA' ;
   55: Result:='55-TARIFA MENSAL DE LIQUIDA��ES EM BANCOS CORRESPONDENTES NA CARTEIRA' ;
   56: Result:='56-CUSTAS DE IRREGULARIDADE' ;
   57: Result:='57-INSTRU��O CANCELADA(NOTA 20 - TABELA 8)' ;
      
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
       03: Result:='AG. COBRADORA - N�O FOI POSS�VEL ATRIBUIR A AG�NCIA  PELO CEP OU CEP INV�LIDO' ;
       04: Result:='ESTADO - SIGLA DO ESTADO INV�LIDA' ;
       05: Result:='DATA VENCIMENTO - PRAZO DA OPERA��O MENOR QUE PRAZO M�NIMO OU MAIOR QUE O M�XIMO' ;
       07: Result:='VALOR DO T�TULO - VALOR DO T�TULO MAIOR QUE 10.000.000,00' ;
       08: Result:='NOME DO SACADO - N�O INFORMADO OU DESLOCADO' ;
       09: Result:='AG�NCIA/CONTA - AG�NCIA ENCERRADA' ;
       10: Result:='LOGRADOURO - N�O INFORMADO OU DESLOCADO' ;
       11: Result:='CEP	- CEP N�O NUM�RICO' ;
       12: Result:='SACADOR / AVALISTA - NOME N�O INFORMADO OU DESLOCADO (BANCOS CORRESPONDENTES)' ;
       13: Result:='ESTADO/CEP - CEP INCOMPAT�VEL COM A SIGLA DO ESTADO' ;
       14: Result:='NOSSO N�MERO - NOSSO N�MERO J� REGISTRADO NO CADASTRO DO BANCO OU FORA DA FAIXA' ;
       15: Result:='NOSSO N�MERO - NOSSO N�MERO EM DUPLICIDADE NO MESMO MOVIMENTO' ;
       18: Result:='DATA DE ENTRADA - DATA DE ENTRADA INV�LIDA PARA OPERAR COM ESTA CARTEIRA' ;
       19: Result:='OCORR�NCIA - OCORR�NCIA INV�LIDA' ;
       21: Result:='AG. COBRADORA - CARTEIRA N�O ACEITA DEPOSIT�RIA CORRESPONDENTE/'+
                   'ESTADO DA AG�NCIA DIFERENTE DO ESTADO DO SACADO/'+
                   'AG. COBRADORA N�O CONSTA NO CADASTRO OU  ENCERRANDO' ;
       22: Result:='CARTEIRA - CARTEIRA N�O PERMITIDA (NECESS�RIO CADASTRAR FAIXA LIVRE)' ;
       27: Result:='CGC INAPTO - CGC DO CEDENTE INAPTO' ;
       29: Result:='C�DIGO EMPRESA - CATEGORIA DA CONTA INV�LIDA' ;
       35: Result:='VALOR DO IOF - IOF MAIOR QUE 5%' ;
       36: Result:='QTDADE DE MOEDA - QUANTIDADE DE MOEDA INCOMPAT�VEL COM VALOR DO T�TULO' ;
       37: Result:='CGC/CPF DO SACADO - N�O NUM�RICO OU IGUAL A ZEROS' ;
       42: Result:='NOSSO N�MERO - NOSSO N�MERO FORA DE FAIXA' ;
       52: Result:='AG. COBRADORA - EMPRESA N�O ACEITA BANCO CORRESPONDENTE' ;
       53: Result:='AG. COBRADORA - EMPRESA N�O ACEITA BANCO CORRESPONDENTE  - COBRAN�A MENSAGEM' ;
       54: Result:='DATA DE VENCTO - BANCO CORRESPONDENTE - T�TULO COM VENCIMENTO INFERIOR A 15 DIAS' ;
       55: Result:='DEP/BCO CORRESP - CEP N�O PERTENCE A DEPOSIT�RIA INFORMADA' ;
       56: Result:='DT VENCTO/BCO CORRESP - VENCTO SUPERIOR A 180 DIAS DA DATA DE ENTRADA' ;
       57: Result:='DATA DE VENCTO - CEP S� DEPOSIT�RIA BCO DO BRASIL COM VENCTO INFERIOR A 8 DIAS' ;
       60: Result:='ABATIMENTO - VALOR DO ABATIMENTO INV�LIDO' ;
       61: Result:='JUROS DE MORA - JUROS DE MORA MAIOR QUE O PERMITIDO' ;
       62: Result:='DESCONTO - VALOR DO DESCONTO MAIOR QUE O VALOR DO T�TULO' ;
       63: Result:='IMPORT�NCIA POR DIA DE DESCONTO - N�O PERMITIDO' ;
       64: Result:='EMISS�O DO T�TULO - DATA DE EMISS�O DO T�TULO INV�LIDA (VENDOR)' ;
       65: Result:='TAXA FINANCTO - TAXA INV�LIDA (VENDOR)' ;
       66: Result:='DATA DE VENCTO - INVALIDA/FORA DE PRAZO DE OPERA��O (M�NIMO OU M�XIMO)' ;
       67: Result:='VALOR/QTIDADE - VALOR DO T�TULO/QUANTIDADE DE MOEDA INV�LIDO' ;
       68: Result:='CARTEIRA - CARTEIRA INV�LIDA' ;
       98: Result:='FLASH INV�LIDO - REGISTRO MENSAGEM SEM FLASH CADASTRADO OU FLASH INFORMADO DIFERENTE DO CADASTRADO' ;
       99: Result:='FLASH INV�LIDO - CONTA DE COBRAN�A COM FLASH CADASTRADO E SEM REGISTRO DE MENSAGEM CORRESPONDENTE' ;
    end;
  end;
  i:=i+2;  
 end;
end;


{$ENDIF}

initialization
RegisterClass(TgbBanco341);

end.
