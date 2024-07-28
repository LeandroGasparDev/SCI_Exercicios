unit ufrmExc5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmExc5 = class(TForm)
    Label1: TLabel;
    edtSalario: TEdit;
    cboCargo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function CalculaAumentoSalarial(pdbValorSalario: Double; pintIndexCargo: Integer): String;
  public
    { Public declarations }
  end;

var
  frmExc5: TfrmExc5;

implementation

{$R *.dfm}

procedure TfrmExc5.BitBtn1Click(Sender: TObject);
begin
  ShowMessage(CalculaAumentoSalarial(StrToFloatDef(edtSalario.Text,0),cboCargo.ItemIndex));
end;

function TfrmExc5.CalculaAumentoSalarial(pdbValorSalario: Double; pintIndexCargo: Integer): String;
var
  vdbSalNovo,
  vdbSalDif: Double;
begin
  case pintIndexCargo of
    0: vdbSalNovo := pdbValorSalario * 1.10;
    1: vdbSalNovo := pdbValorSalario * 1.20;
    2: vdbSalNovo := pdbValorSalario * 1.30;
    else
      vdbSalNovo := pdbValorSalario * 1.40;
  end;
  vdbSalDif := vdbSalNovo - pdbValorSalario;

  Result := 'Salário antigo: '+FormatFloat('R$0.00',pdbValorSalario)+sLineBreak+
              'Salário novo:'+FormatFloat('R$0.00',vdbSalNovo)+sLineBreak+
              'Diferença: '+FormatFloat('R$0.00',vdbSalDif);
end;

end.
