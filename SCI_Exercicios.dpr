program SCI_Exercicios;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  ufrmExc1 in 'ufrmExc1.pas' {frmExc1},
  ufrmExc2 in 'ufrmExc2.pas' {frmExc2},
  uFuncoes in 'uFuncoes.pas',
  ufrmExc3 in 'ufrmExc3.pas' {frmExc3},
  ufrmExc4 in 'ufrmExc4.pas' {frmExc4},
  ufrmExc5 in 'ufrmExc5.pas' {frmExc5},
  uExc6 in 'uExc6.pas',
  UfrmExc7 in 'UfrmExc7.pas' {frmExc7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
