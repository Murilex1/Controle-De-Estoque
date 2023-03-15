unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema: TMenuItem;
    Cadastro: TMenuItem;
    movimentacao: TMenuItem;
    Sair: TMenuItem;
    Produtos: TMenuItem;
    Cad_movi: TMenuItem;
    Consu_Movi: TMenuItem;
    procedure Consu_MoviClick(Sender: TObject);
    procedure Cad_moviClick(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses Produtos, CadMovimentacao, ConsultaMovimentacao;

{$R *.dfm}

procedure TFrmPrincipal.Cad_moviClick(Sender: TObject);
begin
  FrmCadMovimentacao := TFrmCadMovimentacao.create(self);
  FrmCadMovimentacao.ShowModal;
  try

  finally
    FrmCadMovimentacao.Free;
    FrmCadMovimentacao := nil;
  end;
end;

procedure TFrmPrincipal.Consu_MoviClick(Sender: TObject);
begin
  FrmConsulta := TFrmConsulta.create(self);
  FrmConsulta.ShowModal;
  try

  finally
    FrmConsulta.Free;
    FrmConsulta := nil;
  end;
end;

procedure TFrmPrincipal.ProdutosClick(Sender: TObject);
begin
  FrmProdutos := TFrmProdutos.Create(self);
  FrmProdutos.ShowModal;
  try

  finally
    FrmProdutos.Free;
    FrmProdutos:= nil;
  end;
end;

procedure TFrmPrincipal.SairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
