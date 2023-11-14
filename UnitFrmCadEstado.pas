unit UnitFrmCadEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBTable, IBDatabase, StdCtrls,
  Mask, DBCtrls;

type
  Tufrmcadestado = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    IBTable1CAPITAL: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    tbtneditar: TButton;
    tbtnexcluir: TButton;
    Label5: TLabel;
    Edit1: TEdit;
    tbtnconsultar: TButton;
    tbtnsalvar: TButton;
    tbtnnovo: TButton;
    tbtncancelar: TButton;
    procedure tbtnconsultarClick(Sender: TObject);
    procedure tbtnexcluirClick(Sender: TObject);
    procedure tbtneditarClick(Sender: TObject);
    procedure tbtnsalvarClick(Sender: TObject);
    procedure tbtnnovoClick(Sender: TObject);
    procedure tbtncancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ufrmcadestado: Tufrmcadestado;

implementation

{$R *.dfm}

procedure Tufrmcadestado.tbtncancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tufrmcadestado.tbtnconsultarClick(Sender: TObject);
begin
  if Length(Edit1.Text)>=3 then
  begin
    IBTable1.Filtered:=false;
    IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('&'+Edit1.Text +'&');
    IBTable1.Filtered:=true;
    IBTable1.Refresh;
  end;
end;

procedure Tufrmcadestado.tbtneditarClick(Sender: TObject);
begin
try
  if MessageBox(handle, 'Deseja editar o registro','ATENÇÃO1' , mb_YesNo ) =mrYes then
  begin
    IBTable1.Edit;
    IBTable1NOME.Value:=DBEdit2.Text;
    IBTable1CAPITAL.Value:=DBEdit3.Text;
    IBTable1.Post;
    IBTable1.Close;
    IBTable1.Open;
    ShowMessage('Registro Editado!');
  end;
except
    ShowMessage('Erro ao executar atualização');

end;
end;

procedure Tufrmcadestado.tbtnexcluirClick(Sender: TObject);
begin
    if MessageBox(handle, 'Deseja excluir o registro?','ATENÇÃO!' , mb_YesNo ) =mrYes then
      IBTable1.Delete;
end;

procedure Tufrmcadestado.tbtnnovoClick(Sender: TObject);
begin
  IBTable1.Open;
  IBTable1.Append;
  DBEdit1.SetFocus;
end;

procedure Tufrmcadestado.tbtnsalvarClick(Sender: TObject);
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
