unit uFuncoes;

interface

procedure ValidaKeyPressInteger(Sender: TObject; var Key: Char);

implementation

procedure ValidaKeyPressInteger(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

end.
