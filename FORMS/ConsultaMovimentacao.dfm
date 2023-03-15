object FrmConsulta: TFrmConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta de Movimenta'#231#227'o'
  ClientHeight = 549
  ClientWidth = 852
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
    Width = 852
    Height = 66
    Align = alTop
    Color = 244915
    TabOrder = 0
    ExplicitWidth = 700
    object lblConsulta: TLabel
      Left = 40
      Top = 16
      Width = 365
      Height = 33
      Caption = 'Consulta de Movimenta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PnlGrid: TPanel
    Left = 0
    Top = 152
    Width = 852
    Height = 397
    Align = alClient
    Color = 8454143
    TabOrder = 1
    ExplicitTop = 145
    ExplicitWidth = 700
    ExplicitHeight = 295
    object Label1: TLabel
      Left = 80
      Top = 350
      Width = 234
      Height = 24
      Caption = 'Total de Movimenta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 40
      Top = 45
      Width = 320
      Height = 266
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 475
      Top = 45
      Width = 325
      Height = 266
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object PnlPesquisa: TPanel
    Left = 0
    Top = 66
    Width = 852
    Height = 86
    Align = alTop
    Color = 192220
    TabOrder = 2
    ExplicitTop = 60
    ExplicitWidth = 700
    ExplicitHeight = 79
    object Label2: TLabel
      Left = 40
      Top = 11
      Width = 120
      Height = 16
      Caption = 'Movimenta'#231#227'o De:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 255
      Top = 11
      Width = 29
      Height = 16
      Caption = 'At'#233':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnPesquisa: TBitBtn
      Left = 520
      Top = 26
      Width = 171
      Height = 36
      Caption = 'Consultar Movimenta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 0
    end
    object MKInicio: TMaskEdit
      Left = 40
      Top = 35
      Width = 120
      Height = 21
      EditMask = '##.##.####;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  .  .    '
    end
    object MKFim: TMaskEdit
      Left = 255
      Top = 35
      Width = 120
      Height = 21
      EditMask = '##.##.####;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  .  .    '
    end
  end
end
