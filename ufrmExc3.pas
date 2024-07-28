unit ufrmExc3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmExc3 = class(TForm)
    Label1: TLabel;
    edtQtdeOvos: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure edtQtdeOvosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function CalculaValorOvos(pintQtdeOvos: Integer): Double;
  public
    { Public declarations }
  end;

var
  frmExc3: TfrmExc3;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmExc3.BitBtn1Click(Sender: TObject);
begin
  CalculaValorOvos(StrToIntDef(edtQtdeOvos.Text,0));
end;

function TfrmExc3.CalculaValorOvos(pintQtdeOvos: Integer): Double;
const
  cdbValorDuzia = 3.25;
  cdbValorUnd   = 0.45;
var
  vintQtdeDuzias,
  vintQtdeAvulsos: Integer;
  vdbValorTotal  : Double;
begin
  vintQtdeDuzias  := pintQtdeOvos div 12;
  vintQtdeAvulsos := pintQtdeOvos mod 12;

  vdbValorTotal := (vintQtdeDuzias * cdbValorDuzia) + (vintQtdeAvulsos * cdbValorUnd);
  ShowMessage( 'Dúzias: ' + IntToStr(vintQtdeDuzias) + sLineBreak +
                        'Ovos Avulsos: ' + IntToStr(vintQtdeAvulsos) + sLineBreak +
                        'Valor Total: R$ ' + FloatToStrF(vdbValorTotal, ffFixed, 8, 2) + sLineBreak +
                        '(' + IntToStr(vintQtdeDuzias) + ' dúzias a R$ ' + FloatToStr(cdbValorDuzia) + ' cada e ' +
                        IntToStr(vintQtdeAvulsos) + ' ovos avulsos a R$ ' + FloatToStr(cdbValorUnd) + ' cada)');
end;

procedure TfrmExc3.edtQtdeOvosKeyPress(Sender: TObject; var Key: Char);
begin
  ValidaKeyPressInteger(Sender, Key);
end;

end.
