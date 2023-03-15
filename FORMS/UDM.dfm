object DM: TDM
  OldCreateOrder = False
  Height = 315
  Width = 356
  object conexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Documents and Settings\Aldo\Meus documentos\Projetos' +
        ' Delphi\Controle de Estoque\EXE\DADOS\ESTOQUE.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 15
    Top = 35
  end
  object sqlProduto: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM PRODUTOS ORDER BY ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 45
    Top = 85
  end
  object dspProduto: TDataSetProvider
    DataSet = sqlProduto
    Left = 40
    Top = 140
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 41
    Top = 205
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsProdutoFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 50
    end
    object cdsProdutoVALIDADE: TDateField
      FieldName = 'VALIDADE'
      EditMask = '##/##/####;1;_'
    end
    object cdsProdutoESTOQUEATUAL: TIntegerField
      FieldName = 'ESTOQUEATUAL'
    end
  end
  object dtsProduto: TDataSource
    DataSet = cdsProduto
    Left = 43
    Top = 255
  end
  object sqlMovimentacao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID, RESPONSAVEL, DATAHORA, TIPO, OBSERVACOES FROM MOVIMEN' +
      'TACOES ORDER BY ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 125
    Top = 85
  end
  object dspMovimentacao: TDataSetProvider
    DataSet = sqlMovimentacao
    Left = 125
    Top = 135
  end
  object cdsMovimentacao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimentacao'
    Left = 125
    Top = 200
    object cdsMovimentacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMovimentacaoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 30
    end
    object cdsMovimentacaoDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      EditMask = '##/##/####;1;_'
    end
    object cdsMovimentacaoTIPO: TStringField
      FieldName = 'TIPO'
    end
    object cdsMovimentacaoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 100
    end
  end
  object dtsMovimentacao: TDataSource
    DataSet = cdsMovimentacao
    Left = 120
    Top = 255
  end
  object sqlMovProd: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM MOVIMENTACOES_PRODUTOS ORDER BY ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 230
    Top = 85
  end
  object dspMovProd: TDataSetProvider
    DataSet = sqlMovProd
    Left = 225
    Top = 140
  end
  object cdsMovProd: TClientDataSet
    Active = True
    Aggregates = <>
    MasterFields = 'ID'
    MasterSource = dtsMovimentacao
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspMovProd'
    Left = 230
    Top = 200
    object cdsMovProdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMovProdIDMOVIMENTACAO: TIntegerField
      FieldName = 'IDMOVIMENTACAO'
    end
    object cdsMovProdIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
    end
    object cdsMovProdQTDE: TIntegerField
      FieldName = 'QTDE'
    end
  end
  object dtsMovProd: TDataSource
    DataSet = cdsMovProd
    Left = 230
    Top = 255
  end
end
