object frmExc2: TfrmExc2
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 2'
  ClientHeight = 110
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 37
    Width = 182
    Height = 15
    Caption = 'Informe a quantidade de homens: '
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 185
    Height = 15
    Caption = 'Informe a quantidade de mulheres '
  end
  object lblRetornoMulheres: TLabel
    Left = 8
    Top = 72
    Width = 3
    Height = 15
  end
  object lblRetornoHomens: TLabel
    Left = 8
    Top = 87
    Width = 3
    Height = 15
  end
  object edtQtdeHomens: TEdit
    Left = 199
    Top = 29
    Width = 79
    Height = 23
    TabOrder = 0
    OnKeyPress = edtQtdeHomensKeyPress
  end
  object edtQtdeMulheres: TEdit
    Left = 199
    Top = 5
    Width = 79
    Height = 23
    TabOrder = 1
    OnKeyPress = edtQtdeHomensKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 283
    Top = 28
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
