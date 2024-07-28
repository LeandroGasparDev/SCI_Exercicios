object frmExc7: TfrmExc7
  Left = 0
  Top = 0
  ClientHeight = 371
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 608
    Height = 361
    Lines.Strings = (
      
        '-- A - Nome da empresa e valor total do produto 1 em setembro de' +
        ' 2021'
      'SELECT E.Nome, SUM(V.Valor)'
      'FROM Vendas V'
      'JOIN Produto P ON V.ProdutoID = P.ID'
      'JOIN Empresa E ON V.EmpresaID = E.ID'
      'WHERE P.ID = 1 AND V.Data BETWEEN '#39'2021-09-01'#39' AND '#39'2021-09-30'#39
      'GROUP BY E.Nome;'
      ''
      '-- B - Valor total das vendas da empresa 1'
      'SELECT SUM(V.Valor)'
      'FROM Vendas V'
      'WHERE V.EmpresaID = 1;'
      ''
      
        '-- C - Valor total das vendas da empresa 2 com produto que o val' +
        'or do custo for maior que 1 real'
      'SELECT SUM(V.Valor)'
      'FROM Vendas V'
      'JOIN Produto P ON V.ProdutoID = P.ID'
      'WHERE V.EmpresaID = 2 AND P.Custo > 1;')
    TabOrder = 0
  end
end
