object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'INSS'
  ClientHeight = 211
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 177
    Align = alCustom
    TabOrder = 0
    object lblSalario: TLabel
      Left = 16
      Top = 21
      Width = 111
      Height = 13
      Caption = 'Informe o Sal'#225'rio Bruto'
    end
    object edtSalario: TEdit
      Left = 16
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object btnCalcular: TButton
    Left = 374
    Top = 178
    Width = 75
    Height = 25
    Hint = 'Clique aqui para Calcular !'
    Caption = 'Calcular'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnCalcularClick
  end
end
