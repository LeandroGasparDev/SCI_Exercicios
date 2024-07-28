object frmExc5: TfrmExc5
  Left = 0
  Top = 0
  ClientHeight = 99
  ClientWidth = 561
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
    Width = 173
    Height = 15
    Caption = 'Informe o sal'#225'rio do funcion'#225'rio:'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 169
    Height = 15
    Caption = 'Informe o cargo do funcion'#225'rio:'
  end
  object Label3: TLabel
    Left = 334
    Top = 40
    Width = 219
    Height = 15
    Caption = '(Informe 000 - Outros para outros cargos)'
  end
  object edtSalario: TEdit
    Left = 187
    Top = 5
    Width = 141
    Height = 23
    TabOrder = 0
  end
  object cboCargo: TComboBox
    Left = 183
    Top = 34
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 1
    Items.Strings = (
      '101 - Gerente'
      '102 - Engenheiro'
      '103 - T'#233'cnico'
      '000 - Outros')
  end
  object BitBtn1: TBitBtn
    Left = 253
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
