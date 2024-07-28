unit ufrmExc4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmExc4 = class(TForm)
    Label1: TLabel;
    edtQtdeSegundos: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure edtQtdeSegundosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function calculaTempo(vintQtdeSegundos: Integer): String;
  public
    { Public declarations }
  end;

var
  frmExc4: TfrmExc4;

implementation

{$R *.dfm}

uses uFuncoes;

{ TForm1 }

procedure TfrmExc4.BitBtn1Click(Sender: TObject);
begin
  ShowMessage(calculaTempo(StrToIntDef(edtQtdeSegundos.Text,0)));
end;

function TfrmExc4.calculaTempo(vintQtdeSegundos: Integer): String;
const
  vintSegMin  = 60;
  vintSegHora = 3600;
  vintSegDia  = 86400;
var
  vstrResultado: string;
begin
  if vintQtdeSegundos >= vintSegDia then
    vstrResultado := IntToStr(vintQtdeSegundos div vintSegDia) + ' dias'
  else if vintQtdeSegundos >= vintSegHora then
    vstrResultado := IntToStr(vintQtdeSegundos div vintSegHora) + ' horas'
  else if vintQtdeSegundos >= vintSegMin then
    vstrResultado := IntToStr(vintQtdeSegundos div vintSegMin) + ' minutos'
  else
    vstrResultado := IntToStr(vintQtdeSegundos) + ' segundos';

  Result := vstrResultado;
end;

procedure TfrmExc4.edtQtdeSegundosKeyPress(Sender: TObject; var Key: Char);
begin
  ValidaKeyPressInteger(Sender, Key);
end;

end.
