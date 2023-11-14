program ProjectDb;

uses
  Forms,
  UProjeto in 'UProjeto.pas' {Form1},
  UnitFrmCadUser in 'UnitFrmCadUser.pas' {ufrmcaduser},
  UPais in 'Classes\UPais.pas',
  UnitFrmCadCidade in 'UnitFrmCadCidade.pas' {ufrmcadcidade},
  UnitFrmCadEstado in 'UnitFrmCadEstado.pas' {ufrmcadestado},
  UnitFrmCadPaís in 'UnitFrmCadPaís.pas' {ufrmcadpais},
  UnitFrmCadCliente in 'UnitFrmCadCliente.pas' {ufrmcadcliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tufrmcaduser, ufrmcaduser);
  Application.CreateForm(Tufrmcadcidade, ufrmcadcidade);
  Application.CreateForm(Tufrmcadestado, ufrmcadestado);
  Application.CreateForm(Tufrmcadpais, ufrmcadpais);
  Application.CreateForm(Tufrmcadcliente, ufrmcadcliente);
  Application.Run;
end.
