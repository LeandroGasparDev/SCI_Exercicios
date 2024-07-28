unit ufrmExc1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmExc1 = class(TForm)
    Label1: TLabel;
    edtQtdeBiscoitos: TEdit;
    BitBtn1: TBitBtn;
    lblRetorno: TLabel;
    procedure edtQtdeBiscoitosKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function calculaCalorias(pintNumBiscoitos: Integer): Double;
  public
    { Public declarations }
  end;

var
  frmExc1: TfrmExc1;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmExc1.BitBtn1Click(Sender: TObject);
begin
  calculaCalorias(StrToIntDef(edtQtdeBiscoitos.Text,0));
end;

procedure TfrmExc1.edtQtdeBiscoitosKeyPress(Sender: TObject; var Key: Char);
begin
  ValidaKeyPressInteger(Sender, Key);
end;

function TfrmExc1.calculaCalorias(pintNumBiscoitos: Integer): Double;
const
  vintQtdeBiscoitos         : Integer = 40;
  vintQtdePorcoes           : Integer = 10;
  vIntQtdeCaloriaPorPorcao  : Integer = 300;

var
  vintQtdeCaloriaPorBiscoito,
  vIntQtdeCaloriasConsumidas : Double;
begin
  {Calcula quantas calorias tem em 1 biscoito
   calculo 1- 300 / (40 / 10)
   calculo 2- 300/4
   Resultado: 75}
  vintQtdeCaloriaPorBiscoito := vIntQtdeCaloriaPorPorcao / (vintQtdeBiscoitos / vintQtdePorcoes);

  // calcula o total de calorias
  vIntQtdeCaloriasConsumidas := vintQtdeCaloriaPorBiscoito * StrToIntDef(edtQtdeBiscoitos.Text,0);

  if vIntQtdeCaloriasConsumidas <> 0 then
    lblRetorno.Caption := 'Você consumiu o total de '+FloatToStr(vIntQtdeCaloriasConsumidas)+' calorias';
end;

end.
