unit Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, Mask;

type
  TFrmProdutos = class(TForm)
    PnlTopo: TPanel;
    pnlBottom: TPanel;
    lblCadastro: TLabel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    edtID: TDBEdit;
    Label2: TLabel;
    edtNome: TDBEdit;
    Label3: TLabel;
    edtFabricante: TDBEdit;
    Label4: TLabel;
    edtValidade: TDBEdit;
    Label5: TLabel;
    edtEstoque: TDBEdit;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    lblPesquisa: TLabel;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnDeletar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSair: TBitBtn;
    procedure edtPesquisaChange(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmProdutos.BtnCancelarClick(Sender: TObject);
begin
  dm.cdsProduto.CancelUpdates;
end;

procedure TFrmProdutos.BtnDeletarClick(Sender: TObject);
begin
  dm.cdsProduto.Delete;
  dm.cdsProduto.ApplyUpdates(0);
end;

procedure TFrmProdutos.BtnEditarClick(Sender: TObject);
begin
  dm.cdsProduto.Edit;
end;

procedure TFrmProdutos.BtnNovoClick(Sender: TObject);
var proximo:Integer;
begin
  dm.cdsProduto.Open;
  dm.cdsProduto.Last;
  proximo :=  dm.cdsProdutoID.AsInteger + 1;
  dm.cdsProduto.Append;
  dm.cdsProdutoID.AsInteger := proximo;
  edtNome.SetFocus;
end;

procedure TFrmProdutos.BtnSairClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja sair da aba ?', 'Sair', MB_ICONINFORMATION+MB_YESNO) = MRYES then
  begin
    Close;
  end
  else
  Abort;
end;

procedure TFrmProdutos.BtnSalvarClick(Sender: TObject);
begin
  dm.cdsProduto.Post;
  dm.cdsProduto.ApplyUpdates(0);
  Application.MessageBox('Produto salvo com sucesso', 'Salvo', MB_ICONINFORMATION+MB_OK);
end;


procedure TFrmProdutos.edtPesquisaChange(Sender: TObject);
begin
  dm.cdsProduto.Close;
  dm.sqlProduto.CommandText := 'SELECT * FROM PRODUTOS WHERE NOME LIKE ''%'+edtPesquisa.Text+'%''';
  dm.cdsProduto.Open;
end;

end.
