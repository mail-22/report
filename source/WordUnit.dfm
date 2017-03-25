object WordForm: TWordForm
  Left = 397
  Top = 124
  Width = 1111
  Height = 768
  Caption = 'WordForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MStringGrid1: TStringGrid
    Left = 432
    Top = 376
    Width = 320
    Height = 120
    TabOrder = 0
  end
  object JvgStringGrid1: TJvgStringGrid
    Left = 456
    Top = 512
    Width = 320
    Height = 120
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    ExtOptions = [fsgHottrack, fsgMemoEditor, fsgWordWrap, fsgCellHeightAutoSize, fsgTabThroughCells]
    EditorFont.Charset = DEFAULT_CHARSET
    EditorFont.Color = clWindowText
    EditorFont.Height = -11
    EditorFont.Name = 'Tahoma'
    EditorFont.Style = []
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object JvStringGrid1: TJvStringGrid
    Left = 448
    Top = 648
    Width = 320
    Height = 120
    TabOrder = 2
    Alignment = taLeftJustify
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    RowHeights = (
      24
      30
      24
      24
      24)
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 1095
    Height = 768
    Align = alClient
    ColCount = 99
    RowCount = 99
    TabOrder = 3
    ColWidths = (
      64
      361
      161
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 32
    Top = 48
  end
  object WordDocument1: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 120
    Top = 48
  end
  object WordFont1: TWordFont
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 224
    Top = 48
  end
  object WordParagraphFormat1: TWordParagraphFormat
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 344
    Top = 48
  end
end
