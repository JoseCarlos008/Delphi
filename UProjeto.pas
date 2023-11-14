unit UProjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, UnitFrmCadUser, UnitFrmCadCidade, UnitFrmCadEstado, UnitFrmCadPaís, UnitFrmCadCliente;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    CADASTRO1: TMenuItem;
    USURIO1: TMenuItem;
    CIDADE1: TMenuItem;
    ESTADO1: TMenuItem;
    PAS1: TMenuItem;
    CLIENTE1: TMenuItem;
    procedure USURIO1Click(Sender: TObject);
    procedure CIDADE1Click(Sender: TObject);
    procedure ESTADO1Click(Sender: TObject);
    procedure PAS1Click(Sender: TObject);
    procedure CLIENTE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CIDADE1Click(Sender: TObject);
begin
  ufrmcadcidade.ShowModal;
end;

procedure TForm1.CLIENTE1Click(Sender: TObject);
begin
  ufrmcadcliente.ShowModal;
end;

procedure TForm1.ESTADO1Click(Sender: TObject);
begin
  ufrmcadestado.ShowModal;
end;

procedure TForm1.PAS1Click(Sender: TObject);
begin
  ufrmcadpais.ShowModal;
end;

procedure TForm1.USURIO1Click(Sender: TObject);
begin
  ufrmcaduser.ShowModal;

end;

end.
