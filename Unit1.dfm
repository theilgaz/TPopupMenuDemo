object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 236
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Tag = 42
    Left = 8
    Top = 8
    Width = 99
    Height = 41
    Caption = 'Menu 1 (Tag: 42)'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Tag = 55
    Left = 113
    Top = 8
    Width = 104
    Height = 41
    Caption = 'Menu 2 (Tag: 55)'
    TabOrder = 1
    OnClick = Button1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 40
  end
end
