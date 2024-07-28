unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    btnExercicio1: TBitBtn;
    btnExercicio2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label1: TLabel;
    procedure btnExercicio1Click(Sender: TObject);
    procedure btnExercicio2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmExc1, ufrmExc2, ufrmExc3, ufrmExc4, ufrmExc5, UfrmExc7;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  frmExc3 := TfrmExc3.Create(nil);
  frmExc3.ShowModal;
  FreeAndNil(frmExc3);
end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
  frmExc4 := TfrmExc4.Create(nil);
  frmExc4.ShowModal;
  FreeAndNil(frmExc4);
end;

procedure TfrmPrincipal.BitBtn3Click(Sender: TObject);
begin
  frmExc5 := TfrmExc5.Create(nil);
  frmExc5.ShowModal;
  FreeAndNil(frmExc5);
end;

procedure TfrmPrincipal.BitBtn4Click(Sender: TObject);
begin
  frmExc7 := TfrmExc7.Create(nil);
  frmExc7.ShowModal;
  FreeAndNil(frmExc7);
end;

procedure TfrmPrincipal.btnExercicio1Click(Sender: TObject);
begin
  frmExc1 := TfrmExc1.Create(nil);
  frmExc1.ShowModal;
  FreeAndNil(frmExc1);
end;

procedure TfrmPrincipal.btnExercicio2Click(Sender: TObject);
begin
  frmExc2 := TfrmExc2.Create(nil);
  frmExc2.ShowModal;
  FreeAndNil(frmExc2);
end;

end.
