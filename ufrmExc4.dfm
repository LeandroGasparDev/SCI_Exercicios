object frmExc4: TfrmExc4
  Left = 0
  Top = 0
  Caption = 'frmExc4'
  ClientHeight = 41
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 187
    Height = 15
    Caption = 'Informe a quantidade de segundos:'
  end
  object edtQtdeSegundos: TEdit
    Left = 201
    Top = 6
    Width = 79
    Height = 23
    TabOrder = 0
    OnKeyPress = edtQtdeSegundosKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 286
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
