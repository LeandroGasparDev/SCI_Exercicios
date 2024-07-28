object frmExc3: TfrmExc3
  Left = 0
  Top = 0
  ClientHeight = 39
  ClientWidth = 539
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
    Width = 224
    Height = 15
    Caption = 'Informe a quantidade de ovos comprados:'
  end
  object edtQtdeOvos: TEdit
    Left = 238
    Top = 5
    Width = 79
    Height = 23
    TabOrder = 0
    OnKeyPress = edtQtdeOvosKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 323
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
