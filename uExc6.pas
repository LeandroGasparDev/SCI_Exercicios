unit uExc6;

interface

type
  TQuadrado = class
  public
    constructor Create;
    procedure Desenhar;
    destructor destroy; override;
  end;

type
  TCirculo = class
  public
    constructor Create;
    procedure Desenhar;
    destructor destroy; override;
  end;



implementation

{ TQuadrado }

constructor TQuadrado.Create;
begin
  //
end;

procedure TQuadrado.Desenhar;
begin
  //
end;

destructor TQuadrado.destroy;
begin
  //
  inherited;
end;

{ TCirculo }

constructor TCirculo.Create;
begin
  //
end;

procedure TCirculo.Desenhar;
begin
  //
end;

destructor TCirculo.destroy;
begin
  //
  inherited;
end;

end.
