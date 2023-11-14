object ufrmcadcidade: Tufrmcadcidade
  Left = 0
  Top = 0
  Caption = 'Cadastro Cidade'
  ClientHeight = 634
  ClientWidth = 728
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
    Width = 11
    Height = 13
    Caption = 'ID'
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
    Top = 104
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit3
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
  object DBGrid1: TDBGrid
    Left = 24
    Top = 334
    Width = 675
    Height = 241
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 43
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 77
    Width = 329
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 120
    Width = 329
    Height = 21
    DataField = 'CEP'
    DataSource = DataSource1
    TabOrder = 3
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
    TabOrder = 4
    OnClick = tbtnsalvarClick
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
    TabOrder = 6
    OnClick = tbtncancelarClick
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
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\PROJETO\MEUBANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
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
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftWideString
        Size = 25
      end
      item
        Name = 'CEP'
        DataType = ftWideString
        Size = 25
      end>
    IndexDefs = <
      item
        Name = 'PK_CIDADE'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CIDADE'
    Left = 680
    Top = 136
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Size = 25
    end
    object IBTable1CEP: TIBStringField
      FieldName = 'CEP'
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 680
    Top = 192
  end
end
