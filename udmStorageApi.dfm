object dmStorageApi: TdmStorageApi
  Height = 458
  Width = 627
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Users\adf7b\Code\prox-switch\Win32\Debug\data.db'
      'DriverID=SQLite')
    Left = 48
    Top = 24
  end
  object FDQueryUpdateSettings: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'UPDATE Config SET Value = :v WHERE Key = :k')
    Left = 248
    Top = 80
    ParamData = <
      item
        Name = 'V'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'K'
        ParamType = ptInput
      end>
  end
  object FDCommandCreateSettings: TFDCommand
    Connection = FDConnection
    CommandText.Strings = (
      'CREATE TABLE IF NOT EXISTS Config ('
      '    Key TEXT PRIMARY KEY,'
      '    Value TEXT'
      ');'
      '')
    Left = 248
    Top = 24
  end
  object FDTableConfig: TFDTable
    Connection = FDConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Config'
    Left = 248
    Top = 136
  end
  object FDQueryListSettings: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CONFIG')
    Left = 248
    Top = 192
  end
end
