unit gbBoleto7;

interface

uses Classes, Controls, ExtCtrls, QuickRpt, Qrctrls, Graphics;

type
  TBoleto = class(TQuickRep)
    bandDetalhe: TQRBand;
    QRImage1: TQRImage;
    txtNomeBanco: TQRLabel;
    lblReciboSacado: TQRLabel;
    txtNomeCedente: TQRLabel;
    txtDataDocumento: TQRLabel;
    txtNumeroDocumento: TQRLabel;
    txtEspecieDocumento: TQRLabel;
    txtAceite: TQRLabel;
    txtUsoBanco: TQRLabel;
    txtCarteira: TQRLabel;
    txtQuantidadeMoeda: TQRLabel;
    txtEspecieMoeda: TQRLabel;
    txtSacadoNome: TQRLabel;
    txtSacadoRuaNumeroComplemento: TQRLabel;
    txtSacadoCEPBairroCidadeEstado: TQRLabel;
    txtSacadoCPFCGC: TQRLabel;
    txtCodigoBaixa: TQRLabel;
    txtLocalPagamento: TQRLabel;
    txtValorCobrado: TQRLabel;
    txtValorMoraMultaB: TQRLabel;
    txtValorMoraMulta: TQRLabel;
    txtValorDescontoAbatimentoB: TQRLabel;
    txtValorDescontoAbatimento: TQRLabel;
    txtValorDocumento: TQRLabel;
    txtNossoNumero: TQRLabel;
    txtAgenciaCodigoCedente: TQRLabel;
    txtDataVencimento: TQRLabel;
    txtDataProcessamento: TQRLabel;
    txtValorMoeda: TQRLabel;
    lblLocalPagamento: TQRLabel;
    lblDataDocumento: TQRLabel;
    lblNumeroDocumento: TQRLabel;
    lblDataVencimento: TQRLabel;
    lblAgenciaCodigoCedente: TQRLabel;
    lblNossoNumero: TQRLabel;
    lblEspecieDocumento: TQRLabel;
    lblAceite: TQRLabel;
    lblDataProcessamento: TQRLabel;
    lblUsoBanco: TQRLabel;
    lblCarteira: TQRLabel;
    lblEspecieMoeda: TQRLabel;
    lblQuantidadeMoeda: TQRLabel;
    lblValorMoeda: TQRLabel;
    lblValorDocumento: TQRLabel;
    lblInstrucoes: TQRLabel;
    lblValorDescontoAbatimento: TQRLabel;
    lblValorMoraMulta: TQRLabel;
    lblValorCobrado: TQRLabel;
    lblSacado: TQRLabel;
    lblCodigoBaixa: TQRLabel;
    lblSacadoCPFCGC: TQRLabel;
    lblNomeCedente: TQRLabel;
    QRImage2: TQRImage;
    QRImage3: TQRImage;
    QRImage4: TQRImage;
    QRImage5: TQRImage;
    QRImage6: TQRImage;
    QRImage7: TQRImage;
    QRImage8: TQRImage;
    QRImage9: TQRImage;
    QRImage11: TQRImage;
    QRImage10: TQRImage;
    QRImage12: TQRImage;
    QRImage13: TQRImage;
    QRImage14: TQRImage;
    QRImage15: TQRImage;
    QRImage16: TQRImage;
    QRImage17: TQRImage;
    txtCodigoBanco: TQRLabel;
    QRShape1: TQRShape;
    lblAutenticacaoMecanica: TQRLabel;
    lblRecebidoComCheque: TQRLabel;
    lblRecebidoComChequeB: TQRLabel;
    lblRecebidoComChequeC: TQRLabel;
    QRImage18: TQRImage;
    txtNomeBanco2: TQRLabel;
    lblFichaCaixa: TQRLabel;
    txtNomeCedente2: TQRLabel;
    txtDataDocumento2: TQRLabel;
    txtNumeroDocumento2: TQRLabel;
    txtEspecieDocumento2: TQRLabel;
    txtAceite2: TQRLabel;
    txtUsoBanco2: TQRLabel;
    txtCarteira2: TQRLabel;
    txtQuantidadeMoeda2: TQRLabel;
    txtEspecieMoeda2: TQRLabel;
    txtSacadoNome2: TQRLabel;
    txtSacadoRuaNumeroComplemento2: TQRLabel;
    txtSacadoCEPBairroCidadeEstado2: TQRLabel;
    txtSacadoCPFCGC2: TQRLabel;
    txtCodigoBaixa2: TQRLabel;
    txtLocalPagamento2: TQRLabel;
    txtValorCobrado2: TQRLabel;
    txtValorMoraMultaB2: TQRLabel;
    txtValorMoraMulta2: TQRLabel;
    txtValorDescontoAbatimentoB2: TQRLabel;
    txtValorDescontoAbatimento2: TQRLabel;
    txtValorDocumento2: TQRLabel;
    txtNossoNumero2: TQRLabel;
    txtAgenciaCodigoCedente2: TQRLabel;
    txtDataVencimento2: TQRLabel;
    txtDataProcessamento2: TQRLabel;
    txtValorMoeda2: TQRLabel;
    lblLocalPagamento2: TQRLabel;
    lblDataDocumento2: TQRLabel;
    lblNumeroDocumento2: TQRLabel;
    lblDataVencimento2: TQRLabel;
    lblAgenciaCodigoCedente2: TQRLabel;
    lblNossoNumero2: TQRLabel;
    lblEspecieDocumento2: TQRLabel;
    lblAceite2: TQRLabel;
    lblDataProcessamento2: TQRLabel;
    lblUsoBanco2: TQRLabel;
    lblCarteira2: TQRLabel;
    lblEspecieMoeda2: TQRLabel;
    lblQuantidadeMoeda2: TQRLabel;
    lblValorMoeda2: TQRLabel;
    lblValorDocumento2: TQRLabel;
    lblInstrucoes2: TQRLabel;
    lblValorDescontoAbatimento2: TQRLabel;
    lblMoraMulta2: TQRLabel;
    lblValorCobrado2: TQRLabel;
    lblSacado2: TQRLabel;
    lblCodigoBaixa2: TQRLabel;
    lblSacadoCPFCGC2: TQRLabel;
    lblNomeCedente2: TQRLabel;
    QRImage19: TQRImage;
    QRImage20: TQRImage;
    QRImage21: TQRImage;
    QRImage22: TQRImage;
    QRImage23: TQRImage;
    QRImage24: TQRImage;
    QRImage25: TQRImage;
    QRImage26: TQRImage;
    QRImage27: TQRImage;
    QRImage28: TQRImage;
    QRImage29: TQRImage;
    QRImage30: TQRImage;
    QRImage31: TQRImage;
    QRImage32: TQRImage;
    QRImage33: TQRImage;
    QRImage34: TQRImage;
    txtCodigoBanco2: TQRLabel;
    QRShape2: TQRShape;
    lblAutenticacaoMecanica2: TQRLabel;
    QRImage35: TQRImage;
    txtNomeBanco3: TQRLabel;
    txtLinhaDigitavel3: TQRLabel;
    txtNomeCedente3: TQRLabel;
    txtDataDocumento3: TQRLabel;
    txtNumeroDocumento3: TQRLabel;
    txtEspecieDocumento3: TQRLabel;
    txtAceite3: TQRLabel;
    txtUsoBanco3: TQRLabel;
    txtCarteira3: TQRLabel;
    txtQuantidadeMoeda3: TQRLabel;
    txtEspecieMoeda3: TQRLabel;
    txtSacadoNome3: TQRLabel;
    txtSacadoRuaNumeroComplemento3: TQRLabel;
    txtSacadoCEPBairroCidadeEstado3: TQRLabel;
    txtSacadoCPFCGC3: TQRLabel;
    txtCodigoBaixa3: TQRLabel;
    txtLocalPagamento3: TQRLabel;
    txtValorCobrado3: TQRLabel;
    txtValorMoraMultaB3: TQRLabel;
    txtValorMoraMulta3: TQRLabel;
    txtValorDescontoAbatimentoB3: TQRLabel;
    txtValorDescontoAbatimento3: TQRLabel;
    txtValorDocumento3: TQRLabel;
    txtNossoNumero3: TQRLabel;
    txtAgenciaCodigoCedente3: TQRLabel;
    txtDataVencimento3: TQRLabel;
    txtDataProcessamento3: TQRLabel;
    txtValorMoeda3: TQRLabel;
    lblLocalPagamento3: TQRLabel;
    lblDataDocumento3: TQRLabel;
    lblNumeroDocumento3: TQRLabel;
    lblDataVencimento3: TQRLabel;
    lblAgenciaCodigoCedente3: TQRLabel;
    lblNossoNumero3: TQRLabel;
    lblEspecieDocumento3: TQRLabel;
    lblAceite3: TQRLabel;
    lblDataProcessamento3: TQRLabel;
    lblUsoBanco3: TQRLabel;
    lblCarteira3: TQRLabel;
    lblEspecieMoeda3: TQRLabel;
    lblQuantidadeMoeda3: TQRLabel;
    lblValorMoeda3: TQRLabel;
    lblValorDocumento3: TQRLabel;
    lblInstrucoes3: TQRLabel;
    lblValorDescontoAbatimento3: TQRLabel;
    lblMoraMulta3: TQRLabel;
    lblValorCobrado3: TQRLabel;
    lblSacado3: TQRLabel;
    lblCodigoBaixa3: TQRLabel;
    lblSacadoCPFCGC3: TQRLabel;
    lblNomeCedente3: TQRLabel;
    QRImage36: TQRImage;
    QRImage37: TQRImage;
    QRImage38: TQRImage;
    QRImage39: TQRImage;
    QRImage40: TQRImage;
    QRImage41: TQRImage;
    QRImage42: TQRImage;
    QRImage43: TQRImage;
    QRImage44: TQRImage;
    QRImage45: TQRImage;
    QRImage46: TQRImage;
    QRImage47: TQRImage;
    QRImage48: TQRImage;
    QRImage49: TQRImage;
    QRImage50: TQRImage;
    QRImage51: TQRImage;
    txtCodigoBanco3: TQRLabel;
    lblAutenticacaoMecanica3: TQRLabel;
    imgCodigoBarras3: TQRImage;
    txtInstrucoes: TQRMemo;
    txtInstrucoes2: TQRMemo;
    txtInstrucoes3: TQRMemo;
    QRImage52: TQRImage;
  private

  public

  end;

var
  Boleto: TBoleto;

implementation

{$R *.DFM}

end.

