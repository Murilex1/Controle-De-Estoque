object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 534
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 15
    Top = 25
    object Sistema: TMenuItem
      Caption = '&Sistema'
      object Sair: TMenuItem
        Caption = 'Sair'
        OnClick = SairClick
      end
    end
    object Cadastro: TMenuItem
      Caption = '&Cadastro'
      object Produtos: TMenuItem
        Caption = 'Produtos'
        OnClick = ProdutosClick
      end
    end
    object movimentacao: TMenuItem
      Caption = '&Movimenta'#231#227'o'
      object Cad_movi: TMenuItem
        Caption = 'Cadastrar Movimenta'#231#227'o'
        OnClick = Cad_moviClick
      end
      object Consu_Movi: TMenuItem
        Caption = 'Consultar Movimenta'#231#227'o'
        OnClick = Consu_MoviClick
      end
    end
  end
end
