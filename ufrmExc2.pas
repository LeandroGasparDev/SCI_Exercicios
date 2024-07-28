unit ufrmExc2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmExc2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtQtdeHomens: TEdit;
    edtQtdeMulheres: TEdit;
    BitBtn1: TBitBtn;
    lblRetornoMulheres: TLabel;
    lblRetornoHomens: TLabel;
    procedure edtQtdeHomensKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function calculaPercHomemMulher(pintQtdeHomens, pintQtdeMulheres: Integer): Double;
  public
    { Public declarations }
  end;

var
  frmExc2: TfrmExc2;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmExc2.BitBtn1Click(Sender: TObject);
begin
  calculaPercHomemMulher(StrToIntDef(edtQtdeHomens.Text,0),StrToIntDef(edtQtdeMulheres.Text,0));
end;

function TfrmExc2.calculaPercHomemMulher(pintQtdeHomens, pintQtdeMulheres: Integer): Double;
var
  vintQtdeTotal : Integer;
  vdbPeHomens,
  vdbPeMulheres : Double;
begin
  vintQtdeTotal := pintQtdeHomens + pintQtdeMulheres;

  vdbPeMulheres := (pintQtdeMulheres / vintQtdeTotal) * 100;
  vdbPeHomens   := (pintQtdeHomens   / vintQtdeTotal) * 100;

  lblRetornoMulheres.Caption  := 'O percentual de Mulheres é de: '+formatFloat('0.00%',vdbPeMulheres);
  lblRetornoHomens.Caption    := 'O percentual de Homens é de: '+formatFloat('0.00%',vdbPeHomens);

end;

procedure TfrmExc2.edtQtdeHomensKeyPress(Sender: TObject; var Key: Char);
begin
  ValidaKeyPressInteger(Sender, Key);
end;

end.
