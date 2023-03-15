unit UDM;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDM = class(TDataModule)
    conexao: TSQLConnection;
    sqlProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dtsProduto: TDataSource;
    cdsProdutoID: TIntegerField;
    cdsProdutoNOME: TStringField;
    cdsProdutoFABRICANTE: TStringField;
    cdsProdutoVALIDADE: TDateField;
    cdsProdutoESTOQUEATUAL: TIntegerField;
    sqlMovimentacao: TSQLDataSet;
    dspMovimentacao: TDataSetProvider;
    cdsMovimentacao: TClientDataSet;
    dtsMovimentacao: TDataSource;
    cdsMovimentacaoID: TIntegerField;
    cdsMovimentacaoRESPONSAVEL: TStringField;
    cdsMovimentacaoDATAHORA: TSQLTimeStampField;
    cdsMovimentacaoTIPO: TStringField;
    cdsMovimentacaoOBSERVACOES: TStringField;
    sqlMovProd: TSQLDataSet;
    dspMovProd: TDataSetProvider;
    cdsMovProd: TClientDataSet;
    dtsMovProd: TDataSource;
    cdsMovProdID: TIntegerField;
    cdsMovProdIDMOVIMENTACAO: TIntegerField;
    cdsMovProdIDPRODUTO: TIntegerField;
    cdsMovProdQTDE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
