unit UnitFrmCadUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBDatabase, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls, Buttons;

type
  Tufrmcaduser = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    IBTable1USERNAME: TIBStringField;
    IBTable1PASSWORD: TIBStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    tbtncancelar: TButton;
    tbtnnovo: TButton;
    tbtnsalvar: TButton;
    tbtneditar: TButton;
    tbtnexcluir: TButton;
    Edit1: TEdit;
    Label5: TLabel;
    tbtnconsultar: TButton;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    procedure tbtnsalvarClick(Sender: TObject);
    procedure tbtnnovoClick(Sender: TObject);
    procedure tbtncancelarClick(Sender: TObject);
    procedure tbtnexcluirClick(Sender: TObject);
    procedure tbtneditarClick(Sender: TObject);
    procedure tbtnconsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
  function ValidaCampos(): Boolean;
    { Public declarations }
  end;

var
  ufrmcaduser: Tufrmcaduser;

implementation

{$R *.dfm}

procedure Tufrmcaduser.tbtncancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tufrmcaduser.tbtnconsultarClick(Sender: TObject);
begin
  if Length(Edit1.Text)>=3 then
  begin
    IBTable1.Filtered:=false;
    IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('&'+Edit1.Text +'&');
    IBTable1.Filtered:=true;
    IBTable1.Refresh;
  end;
end;

procedure Tufrmcaduser.tbtneditarClick(Sender: TObject);
begin
try
  if MessageBox(handle, 'Deseja editar o registro','ATENÇÃO1' , mb_YesNo ) =mrYes then
  begin
    IBTable1.Edit;
    IBTable1NOME.Value:=DBEdit2.Text;
    IBTable1USERNAME.Value:=DBEdit3.Text;
    IBTable1PASSWORD.Value:=DBEdit4.Text;
    IBTable1.Post;
    IBTable1.Close;
    IBTable1.Open;
    ShowMessage('Registro Editado!');
  end;
except
    ShowMessage('Erro ao executar atualização');

end;
end;

procedure Tufrmcaduser.tbtnexcluirClick(Sender: TObject);
begin
    if MessageBox(handle, 'Deseja excluir o registro?','ATENÇÃO!' , mb_YesNo ) =mrYes then
      IBTable1.Delete;
end;

procedure Tufrmcaduser.tbtnnovoClick(Sender: TObject);
begin
  IBTable1.Open;
  IBTable1.Append;
  DBEdit1.SetFocus;
end;

procedure Tufrmcaduser.tbtnsalvarClick(Sender: TObject);
begin
  try
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
function Tufrmcaduser.ValidaCampos(): Boolean;
var retorno:boolean;
begin
  if (Length(DBEdit2.Text) > 6) and (Length(DBEdit3.Text) > 4) and (Length(DBEdit4.Text) > 5) then
  begin
      retorno := True;
      DBEdit4.Color:=clRed;
  end
  else
  begin
    retorno:=False;
    ShowMessage('Existem campos que não foram preenchidos!');
  end;

    result:=retorno;
end;

end.
