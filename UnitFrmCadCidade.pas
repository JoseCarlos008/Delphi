unit UnitFrmCadCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBDatabase, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls;

type
  Tufrmcadcidade = class(TForm)
    DBGrid1: TDBGrid;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    IBTable1CEP: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    tbtnsalvar: TButton;
    tbtnnovo: TButton;
    tbtncancelar: TButton;
    tbtneditar: TButton;
    tbtnexcluir: TButton;
    Label5: TLabel;
    Edit1: TEdit;
    tbtnconsultar: TButton;
    procedure tbtnsalvarClick(Sender: TObject);
    procedure tbtnnovoClick(Sender: TObject);
    procedure tbtncancelarClick(Sender: TObject);
    procedure tbtneditarClick(Sender: TObject);
    procedure tbtnexcluirClick(Sender: TObject);
    procedure tbtnconsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ufrmcadcidade: Tufrmcadcidade;

implementation

{$R *.dfm}

procedure Tufrmcadcidade.tbtncancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tufrmcadcidade.tbtnconsultarClick(Sender: TObject);
begin
  if Length(Edit1.Text)>=3 then
  begin
    IBTable1.Filtered:=false;
    IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('&'+Edit1.Text +'&');
    IBTable1.Filtered:=true;
    IBTable1.Refresh;
  end;
end;

procedure Tufrmcadcidade.tbtneditarClick(Sender: TObject);
begin
try
  if MessageBox(handle, 'Deseja editar o registro','ATEN��O1' , mb_YesNo ) =mrYes then
  begin
    IBTable1.Edit;
    IBTable1NOME.Value:=DBEdit2.Text;
    IBTable1CEP.Value:=DBEdit3.Text;
    IBTable1.Post;
    IBTable1.Close;
    IBTable1.Open;
    ShowMessage('Registro Editado!');
  end;
except
    ShowMessage('Erro ao executar atualiza��o');

end;
end;

procedure Tufrmcadcidade.tbtnexcluirClick(Sender: TObject);
begin
    if MessageBox(handle, 'Deseja excluir o registro?','ATEN��O!' , mb_YesNo ) =mrYes then
      IBTable1.Delete;
end;

procedure Tufrmcadcidade.tbtnnovoClick(Sender: TObject);
begin
  IBTable1.Open;
  IBTable1.Append;
  DBEdit1.SetFocus;
end;

procedure Tufrmcadcidade.tbtnsalvarClick(Sender: TObject);
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
