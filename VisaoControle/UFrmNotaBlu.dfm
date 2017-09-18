object FrmNotaBlu: TFrmNotaBlu
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Nota Blu'
  ClientHeight = 673
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object PnTopo: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 7621415
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 983
    DesignSize = (
      772
      49)
    object LbNometela: TLabel
      Left = 24
      Top = 4
      Width = 205
      Height = 39
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Nota Blu - Nfe-s'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 49
    Width = 772
    Height = 624
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 767
    ExplicitHeight = 412
    ControlData = {
      4C000000CA4F00007E4000000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
