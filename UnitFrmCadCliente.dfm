object ufrmcadcliente: Tufrmcadcliente
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 628
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 150
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 107
    Width = 54
    Height = 13
    Caption = 'ENDERE'#199'O'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 261
    Top = 24
    Width = 14
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 476
    Top = 24
    Width = 21
    Height = 13
    Caption = 'CNH'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 24
    Top = 193
    Width = 70
    Height = 13
    Caption = 'NOME DA M'#195'E'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 24
    Top = 233
    Width = 67
    Height = 13
    Caption = 'NOME DO PAI'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 312
    Top = 150
    Width = 26
    Height = 13
    Caption = 'SEXO'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 24
    Top = 291
    Width = 35
    Height = 13
    Caption = 'NOME*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object tbtneditar: TButton
    Left = 632
    Top = 303
    Width = 75
    Height = 25
    Caption = '&Editar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = tbtneditarClick
  end
  object tbtnexcluir: TButton
    Left = 632
    Top = 272
    Width = 75
    Height = 25
    Caption = '&Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = tbtnexcluirClick
  end
  object tbtnsalvar: TButton
    Left = 24
    Top = 587
    Width = 75
    Height = 25
    Caption = '&Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = tbtnsalvarClick
  end
  object tbtnnovo: TButton
    Left = 344
    Top = 587
    Width = 75
    Height = 25
    Caption = '&Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = tbtnnovoClick
  end
  object tbtncancelar: TButton
    Left = 632
    Top = 587
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = tbtncancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 40
    Width = 161
    Height = 21
    DataField = 'CPF'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 80
    Width = 602
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 166
    Width = 267
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 123
    Width = 602
    Height = 21
    DataField = 'ENDERE'#199'O'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 261
    Top = 40
    Width = 158
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 476
    Top = 40
    Width = 150
    Height = 21
    DataField = 'CNH'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 24
    Top = 209
    Width = 602
    Height = 21
    DataField = 'NOME DA M'#195'E'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit8: TDBEdit
    Left = 24
    Top = 249
    Width = 602
    Height = 21
    DataField = 'NOME DO PAI'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit9: TDBEdit
    Left = 312
    Top = 166
    Width = 314
    Height = 21
    DataField = 'SEXO'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 331
    Width = 683
    Height = 241
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERE'#199'O'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME DA M'#195'E'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME DO PAI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 24
    Top = 304
    Width = 395
    Height = 21
    TabOrder = 15
  end
  object tbtnconsultar: TButton
    Left = 425
    Top = 302
    Width = 75
    Height = 25
    Caption = '&Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = tbtnconsultarClick
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\PROJETO\MEUBANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    Left = 680
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 680
    Top = 80
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    IndexDefs = <
      item
        Name = 'PK_CLIENTE'
        Fields = 'CPF'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CLIENTE'
    Left = 680
    Top = 136
    object IBTable1CPF: TIBStringField
      FieldName = 'CPF'
      Required = True
      Size = 11
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
    object IBTable1TELEFONE: TIntegerField
      FieldName = 'TELEFONE'
    end
    object IBTable1ENDEREÇO: TIBStringField
      FieldName = 'ENDERE'#199'O'
      Size = 35
    end
    object IBTable1RG: TIntegerField
      FieldName = 'RG'
    end
    object IBTable1CNH: TIntegerField
      FieldName = 'CNH'
    end
    object IBTable1NOMEDAMÃE: TIBStringField
      FieldName = 'NOME DA M'#195'E'
      Size = 50
    end
    object IBTable1NOMEDOPAI: TIBStringField
      FieldName = 'NOME DO PAI'
      Size = 50
    end
    object IBTable1SEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 680
    Top = 192
  end
end
