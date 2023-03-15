unit CadMovimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Buttons;

type
  TFrmCadMovimentacao = class(TForm)
    PnlTopo: TPanel;
    PnlBottom: TPanel;
    LblMovimentacao: TLabel;
    lblTipo: TLabel;
    cbTipo: TDBComboBox;
    lblDataeHora: TLabel;
    edtDataHora: TDBEdit;
    lblResponsavel: TLabel;
    edtResponsavel: TDBEdit;
    lblObservacao: TLabel;
    memoObersavacao: TDBMemo;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BtnSair: TSpeedButton;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnDeletar: TBitBtn;
    BtnCancelar: TBitBtn;
    Pnl2: TPanel;
    DBGrid2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    LblProd: TLabel;
    DBEdit1: TDBEdit;
    LblQtde: TLabel;
    lblMovProd: TLabel;
    LblQtdeProd: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
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
  FrmCadMovimentacao: TFrmCadMovimentacao;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmCadMovimentacao.BtnCancelarClick(Sender: TObject);
begin
  dm.cdsMovimentacao.CancelUpdates;
end;

procedure TFrmCadMovimentacao.BtnDeletarClick(Sender: TObject);
begin
  dm.cdsMovimentacao.Delete;
  dm.cdsMovimentacao.ApplyUpdates(0);
end;

procedure TFrmCadMovimentacao.BtnEditarClick(Sender: TObject);
begin
  dm.cdsMovimentacao.Edit;
end;

procedure TFrmCadMovimentacao.BtnNovoClick(Sender: TObject);
var proximo: Integer;
begin
  dm.cdsMovimentacao.Open;
  dm.cdsMovimentacao.Last;
  proximo := dm.cdsMovimentacaoID.AsInteger + 1;
  dm.cdsMovimentacao.Append;
  dm.cdsMovimentacaoID.AsInteger := proximo;
  dm.cdsMovimentacaoDATAHORA.AsDateTime := Now;
end;

procedure TFrmCadMovimentacao.BtnSairClick(Sender: TObject);
begin
 if Application.MessageBox('Deseja fechar a aba ?', 'Sair', MB_ICONINFORMATION+MB_YESNO) = MRYES then
 begin
   Close;
 end
 else
 Abort;
end;

procedure TFrmCadMovimentacao.BtnSalvarClick(Sender: TObject);
begin
  dm.cdsMovimentacao.Post;
  dm.cdsMovimentacao.ApplyUpdates(0);
//  Application.MessageBox('Registro salvo com sucesso', 'Salvo', MB_ICONINFORMATION+MBOK);
end;

end.
