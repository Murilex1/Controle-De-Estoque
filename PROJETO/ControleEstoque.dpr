program ControleEstoque;

uses
  Forms,
  Principal in '..\FORMS\Principal.pas' {FrmPrincipal},
  UDM in '..\FORMS\UDM.pas' {DM: TDataModule},
  Produtos in '..\FORMS\Produtos.pas' {FrmProdutos},
  CadMovimentacao in '..\FORMS\CadMovimentacao.pas' {FrmCadMovimentacao},
  ConsultaMovimentacao in '..\FORMS\ConsultaMovimentacao.pas' {FrmConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmCadMovimentacao, FrmCadMovimentacao);
  Application.CreateForm(TFrmConsulta, FrmConsulta);
  Application.Run;
end.
