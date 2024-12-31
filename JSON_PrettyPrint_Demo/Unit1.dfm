object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'JSON PrettyPrint Demo'
  ClientHeight = 578
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    675
    578)
  TextHeight = 15
  object Button1: TButton
    Left = 276
    Top = 27
    Width = 90
    Height = 25
    Caption = 'Get URL'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 25
    Top = 72
    Width = 625
    Height = 477
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Button2: TButton
    Left = 387
    Top = 27
    Width = 90
    Height = 25
    Caption = 'Format JSON'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 25
    Top = 28
    Width = 241
    Height = 23
    TabOrder = 3
    Text = 'https://api.ipquery.io/?format=json'
  end
  object Button3: TButton
    Left = 499
    Top = 27
    Width = 151
    Height = 25
    Caption = 'Get URL and Format JSON'
    TabOrder = 4
    OnClick = Button3Click
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 156
    Top = 156
  end
end
