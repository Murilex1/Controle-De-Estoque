object FrmProdutos: TFrmProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 552
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 91
    Align = alTop
    Color = -1
    TabOrder = 0
    object lblCadastro: TLabel
      Left = 45
      Top = 29
      Width = 358
      Height = 40
      Caption = 'Cadastro de Produtos'
      Color = -1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 500
      Top = 21
      Width = 184
      Height = 50
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 91
    Width = 774
    Height = 461
    Align = alClient
    Color = 2434341
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      774
      461)
    object Label1: TLabel
      Left = 65
      Top = 41
      Width = 14
      Height = 16
      Caption = 'ID'
      FocusControl = edtID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 65
      Top = 103
      Width = 35
      Height = 16
      Caption = 'NOME'
      FocusControl = edtNome
    end
    object Label3: TLabel
      Left = 65
      Top = 170
      Width = 78
      Height = 16
      Caption = 'FABRICANTE'
      FocusControl = edtFabricante
    end
    object Label4: TLabel
      Left = 65
      Top = 237
      Width = 66
      Height = 16
      Caption = 'VALIDADE'
      FocusControl = edtValidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 65
      Top = 298
      Width = 91
      Height = 16
      Caption = 'QTDE ESTOQUE'
      FocusControl = edtEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPesquisa: TLabel
      Left = 380
      Top = 41
      Width = 113
      Height = 16
      Caption = 'Localizar Produto'
    end
    object edtID: TDBEdit
      Left = 65
      Top = 63
      Width = 35
      Height = 24
      DataField = 'ID'
      DataSource = DM.dtsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edtNome: TDBEdit
      Left = 65
      Top = 125
      Width = 226
      Height = 24
      DataField = 'NOME'
      DataSource = DM.dtsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edtFabricante: TDBEdit
      Left = 65
      Top = 190
      Width = 226
      Height = 24
      DataField = 'FABRICANTE'
      DataSource = DM.dtsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object edtValidade: TDBEdit
      Left = 65
      Top = 258
      Width = 134
      Height = 24
      DataField = 'VALIDADE'
      DataSource = DM.dtsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
    end
    object edtEstoque: TDBEdit
      Left = 65
      Top = 320
      Width = 35
      Height = 24
      BiDiMode = bdLeftToRight
      DataField = 'ESTOQUEATUAL'
      DataSource = DM.dtsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
    end
    object DBGrid1: TDBGrid
      Left = 380
      Top = 103
      Width = 374
      Height = 276
      Anchors = [akLeft, akTop, akRight]
      DataSource = DM.dtsProduto
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Color = clBlack
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Color = clBlack
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABRICANTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Color = clBlack
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Color = clBlack
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUEATUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Color = clBlack
          Visible = True
        end>
    end
    object edtPesquisa: TEdit
      Left = 380
      Top = 63
      Width = 376
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnChange = edtPesquisaChange
    end
    object BtnNovo: TBitBtn
      Left = 65
      Top = 395
      Width = 75
      Height = 35
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BtnNovoClick
    end
    object BtnEditar: TBitBtn
      Left = 175
      Top = 395
      Width = 75
      Height = 35
      Caption = 'Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BtnEditarClick
    end
    object BtnSalvar: TBitBtn
      Left = 285
      Top = 395
      Width = 75
      Height = 35
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BtnSalvarClick
    end
    object BtnDeletar: TBitBtn
      Left = 395
      Top = 395
      Width = 75
      Height = 35
      Caption = 'Deletar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BtnDeletarClick
    end
    object BtnCancelar: TBitBtn
      Left = 500
      Top = 395
      Width = 75
      Height = 35
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BtnCancelarClick
    end
    object BtnSair: TBitBtn
      Left = 675
      Top = 395
      Width = 75
      Height = 35
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = BtnSairClick
    end
  end
end
