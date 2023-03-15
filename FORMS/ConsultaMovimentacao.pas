unit ConsultaMovimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, ExtCtrls;

type
  TFrmConsulta = class(TForm)
    PnlTopo: TPanel;
    PnlGrid: TPanel;
    PnlPesquisa: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    lblConsulta: TLabel;
    Label1: TLabel;
    BtnPesquisa: TBitBtn;
    MKInicio: TMaskEdit;
    MKFim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

uses UDM;

{$R *.dfm}

end.
