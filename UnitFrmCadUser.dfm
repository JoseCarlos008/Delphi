object ufrmcaduser: Tufrmcaduser
  Left = 0
  Top = 0
  Caption = 'Cadastro User'
  ClientHeight = 633
  ClientWidth = 726
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
    Top = 16
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 54
    Height = 13
    Caption = 'USERNAME'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
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
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 69
    Width = 395
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 112
    Width = 395
    Height = 21
    DataField = 'USERNAME'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 152
    Width = 395
    Height = 21
    DataField = 'PASSWORD'
    DataSource = DataSource1
    TabOrder = 3
  end
  object tbtncancelar: TButton
    Left = 632
    Top = 592
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
  object tbtnnovo: TButton
    Left = 344
    Top = 592
    Width = 75
    Height = 25
    Caption = '&Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = tbtnnovoClick
  end
  object tbtnsalvar: TButton
    Left = 24
    Top = 592
    Width = 75
    Height = 25
    Caption = '&Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = tbtnsalvarClick
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
    TabOrder = 7
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
    TabOrder = 8
    OnClick = tbtnexcluirClick
  end
  object Edit1: TEdit
    Left = 24
    Top = 304
    Width = 395
    Height = 21
    TabOrder = 9
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
    TabOrder = 10
    OnClick = tbtnconsultarClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 334
    Width = 683
    Height = 241
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERNAME'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASSWORD'
        Visible = True
      end>
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\PROJETO\MEUBANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 688
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 688
    Top = 80
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'USERNAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'PASSWORD'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 25
      end>
    IndexDefs = <
      item
        Name = 'PK_USER'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'USER'
    Left = 688
    Top = 144
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInWhere, pfInKey, pfHidden]
      ReadOnly = True
      Required = True
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object IBTable1USERNAME: TIBStringField
      FieldName = 'USERNAME'
      Required = True
      Size = 15
    end
    object IBTable1PASSWORD: TIBStringField
      FieldName = 'PASSWORD'
      Required = True
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 688
    Top = 208
  end
end
