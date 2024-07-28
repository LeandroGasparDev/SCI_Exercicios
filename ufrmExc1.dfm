object frmExc1: TfrmExc1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Exerc'#237'cio 1'
  ClientHeight = 86
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 151
    Height = 15
    Caption = 'N'#186' de Biscoitos consumidos:'
  end
  object lblRetorno: TLabel
    Left = 8
    Top = 48
    Width = 55
    Height = 15
    Caption = 'lblRetorno'
  end
  object edtQtdeBiscoitos: TEdit
    Left = 165
    Top = 8
    Width = 68
    Height = 23
    TabOrder = 0
    OnKeyPress = edtQtdeBiscoitosKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 239
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
