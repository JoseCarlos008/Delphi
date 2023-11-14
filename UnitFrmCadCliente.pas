unit UnitFrmCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, DB, IBCustomDataSet,
  IBTable, IBDatabase;

type
  Tufrmcadcliente = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    tbtneditar: TButton;
    tbtnexcluir: TButton;
    tbtnsalvar: TButton;
    tbtnnovo: TButton;
    tbtncancelar: TButton;
    IBTable1CPF: TIBStringField;
    IBTable1NOME: TIBStringField;
    IBTable1TELEFONE: TIntegerField;
    IBTable1ENDEREÇO: TIBStringField;
    IBTable1RG: TIntegerField;
    IBTable1CNH: TIntegerField;
    IBTable1NOMEDAMÃE: TIBStringField;
    IBTable1NOMEDOPAI: TIBStringField;
    IBTable1SEXO: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    Edit1: TEdit;
    tbtnconsultar: TButton;
    procedure tbtnconsultarClick(Sender: TObject);
    procedure tbtnexcluirClick(Sender: TObject);
    procedure tbtnsalvarClick(Sender: TObject);
    procedure tbtnnovoClick(Sender: TObject);
    procedure tbtncancelarClick(Sender: TObject);
    procedure tbtneditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ufrmcadcliente: Tufrmcadcliente;

implementation

{$R *.dfm}

procedure Tufrmcadcliente.tbtncancelarClick(Sender: TObject);
begin
    Self.Close;
end;

procedure Tufrmcadcliente.tbtnconsultarClick(Sender: TObject);
begin
  if Length(Edit1.Text)>=3 then
  begin
    IBTable1.Filtered:=false;
    IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('&'+Edit1.Text +'&');
    IBTable1.Filtered:=true;
    IBTable1.Refresh;
  end;
end;

procedure Tufrmcadcliente.tbtneditarClick(Sender: TObject);
begin
try
  if MessageBox(handle, 'Deseja editar o registro','ATENÇÃO1' , mb_YesNo ) =mrYes then
  begin
    IBTable1.Edit;
    IBTable1NOME.Value:=DBEdit2.Text;
    IBTable1TELEFONE.Value:=STRTOINT(DBEdit3.Text);
    IBTable1ENDEREÇO.Value:=DBEdit4.Text;
    IBTable1RG.Value:=STRTOINT(DBEdit5.Text);
    IBTable1CNH.Value:=STRTOINT(DBEdit6.Text);
    IBTable1NOMEDAMÃE.Value:=DBEdit7.Text;
    IBTable1NOMEDOPAI.Value:=DBEdit8.Text;
    IBTable1SEXO.Value:=DBEdit9.Text;
    IBTable1.Post;
    IBTable1.Close;
    IBTable1.Open;
    ShowMessage('Registro Editado!');
  end;
except
    ShowMessage('Erro ao executar atualização');

end;
end;

procedure Tufrmcadcliente.tbtnexcluirClick(Sender: TObject);
begin
    if MessageBox(handle, 'Deseja excluir o registro?','ATENÇÃO!' , mb_YesNo ) =mrYes then
      IBTable1.Delete;
end;

procedure Tufrmcadcliente.tbtnnovoClick(Sender: TObject);
begin
  IBTable1.Open;
  IBTable1.Append;
  DBEdit1.SetFocus;
end;

procedure Tufrmcadcliente.tbtnsalvarClick(Sender: TObject);
begin
  try
    if MessageBox(handle, 'Deseja salvar o registro?','SALVANDO', mb_YesNo ) = mrYes then
    if IBTable1.State in [dsInsert] then
    begin
      IBTable1.Post;
      TBtnNovo.SetFocus;
    end;
    IBTransaction1.CommitRetaining;
    IBTable1.Close;
    IBTable1.Open;
  finally
  IBTransaction1.RollbackRetaining;
  end;
end;

end.
