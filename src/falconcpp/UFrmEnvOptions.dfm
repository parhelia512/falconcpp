object FrmEnvOptions: TFrmEnvOptions
  Left = 572
  Top = 304
  BorderStyle = bsDialog
  Caption = 'Environment Options'
  ClientHeight = 428
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 449
    Height = 385
    ActivePage = TSGeneral
    TabOrder = 0
    object TSGeneral: TTabSheet
      Caption = 'General'
      object RadioGroupAutoOpen: TRadioGroup
        Left = 4
        Top = 229
        Width = 221
        Height = 122
        Caption = 'Auto open'
        ItemIndex = 4
        Items.Strings = (
          'All projects files'
          'All files of last section'
          'Only last open file'
          'Only first project'
          'None')
        TabOrder = 0
        OnClick = EditorOptionsChanged
      end
      object CheckBoxDefCpp: TCheckBox
        Left = 4
        Top = 16
        Width = 201
        Height = 17
        Caption = 'Default to C++ on new file'
        TabOrder = 1
        OnClick = EditorOptionsChanged
      end
      object CheckBoxShowToolbars: TCheckBox
        Left = 4
        Top = 40
        Width = 201
        Height = 17
        Caption = 'Show toolbars in full screen'
        TabOrder = 2
        OnClick = EditorOptionsChanged
      end
      object CheckBoxOneClickFile: TCheckBox
        Left = 4
        Top = 88
        Width = 181
        Height = 17
        Caption = 'One click to open file'
        TabOrder = 3
        OnClick = EditorOptionsChanged
      end
      object CheckBoxCheckForUpdate: TCheckBox
        Left = 4
        Top = 112
        Width = 201
        Height = 17
        Caption = 'Check for updates automatically'
        TabOrder = 4
        OnClick = EditorOptionsChanged
      end
      object CheckBoxRemoveFileOnClose: TCheckBox
        Left = 4
        Top = 64
        Width = 181
        Height = 17
        Caption = 'Remove file on close'
        TabOrder = 5
        OnClick = EditorOptionsChanged
      end
      object CheckBoxCreateLayoutFiles: TCheckBox
        Left = 4
        Top = 136
        Width = 201
        Height = 17
        Caption = 'Create layout files'
        TabOrder = 6
        OnClick = EditorOptionsChanged
      end
      object CheckBoxAskDeleteFile: TCheckBox
        Left = 4
        Top = 160
        Width = 277
        Height = 17
        Caption = 'Ask if you want to delete the project file'
        TabOrder = 7
        OnClick = EditorOptionsChanged
      end
      object CheckBoxRunConsoleRunner: TCheckBox
        Left = 4
        Top = 184
        Width = 381
        Height = 17
        Caption = 'Run console applications in console runner'
        TabOrder = 8
        OnClick = EditorOptionsChanged
      end
    end
    object TSInterface: TTabSheet
      Caption = 'Interface'
      ImageIndex = 1
      object LabelMaxFileReopenMenu: TLabel
        Left = 4
        Top = 16
        Width = 117
        Height = 13
        Caption = 'Max files in reopen menu'
      end
      object LabelLang: TLabel
        Left = 188
        Top = 16
        Width = 51
        Height = 13
        Caption = 'Language:'
      end
      object ComboBoxLanguage: TComboBoxEx
        Left = 189
        Top = 32
        Width = 244
        Height = 22
        ItemsEx = <>
        Style = csExDropDownList
        ItemHeight = 16
        TabOrder = 0
        OnChange = EditorOptionsChanged
        Images = FrmFalconMain.ImgListCountry
        DropDownCount = 8
      end
      object CheckBoxShowSplashScreen: TCheckBox
        Left = 4
        Top = 72
        Width = 172
        Height = 17
        Caption = 'Show splash screen'
        TabOrder = 1
        OnClick = EditorOptionsChanged
      end
      object RadioGroupTheme: TRadioGroup
        Left = 4
        Top = 106
        Width = 133
        Height = 143
        Caption = 'Theme'
        Items.Strings = (
          'Default'
          'Office2003'
          'OfficeXP'
          'Stripes'
          'Professional'
          'Aluminum')
        TabOrder = 2
        OnClick = EditorOptionsChanged
      end
      object EditmaxFilesInReopen: TEditAlign
        Left = 4
        Top = 32
        Width = 69
        Height = 21
        TabOrder = 3
        Text = '0'
        OnChange = EditmaxFilesInReopenChange
        OnKeyPress = EditmaxFilesInReopenKeyPress
        Alignment = taRightJustify
      end
      object UpDownMaxFiles: TUpDown
        Left = 73
        Top = 32
        Width = 17
        Height = 21
        Associate = EditmaxFilesInReopen
        TabOrder = 4
      end
    end
    object TSFilesandDir: TTabSheet
      Caption = 'Files and Directories'
      ImageIndex = 2
      object LabelTemplatesDir: TLabel
        Left = 4
        Top = 124
        Width = 92
        Height = 13
        Caption = 'Templates directory'
      end
      object BtnChooseTemplatesDir: TSpeedButton
        Tag = 1
        Left = 403
        Top = 141
        Width = 24
        Height = 24
        Hint = 'Open'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          00669900669900669900669900669900669900669900669900669900669966CC
          CCFF00FFFF00FFFF00FFFF00FFCCCCCCBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEBEBEBEBEBEBEBED6D6D6FF00FFFF00FFFF00FF3399CC3399CC
          99FFFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF3399CC0066
          99FF00FFFF00FFFF00FFCCCCCCCCCCCCE2E2E2D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7CCCCCCBEBEBEFF00FFFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF0066
          993399CCFF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7BEBEBECCCCCCFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF66CC
          CC006699FF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7D6D6D6BEBEBEFF00FFFF00FF3399CC66CCFF
          3399CC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF0066993399CCFF00FFCCCCCCD7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2BEBEBECCCCCCFF00FF3399CC66CCFF
          66CCCC66CCCC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF66CCCC006699FF00FFCCCCCCD7D7D7D6D6D6D6D6D6E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2D6D6D6BEBEBEFF00FF3399CC99FFFF
          66CCFF3399CCCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF99FFFFCCFF
          FFCCFFFF006699FF00FFCCCCCCE2E2E2D7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FF3399CC99FFFF
          99FFFF66CCFF3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399
          CC3399CC66CCFFFF00FFCCCCCCE2E2E2E2E2E2D7D7D7CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD7D7D7FF00FF3399CCCCFFFF
          99FFFF99FFFF99FFFF99FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF006699FF00
          FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          CCFFFFCCFFFFCCFFFFCCFFFF3399CC3399CC3399CC3399CC3399CCFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2CCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          3399CC3399CC3399CC3399CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF993300993300993300FF00FFFF00FFCCCCCCCCCCCCCCCCCCCCCCCCFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00
          FF993300FF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFAFAFAFFF00FFFF00FFFF00FFAFAFAFFF00FFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9933009933009933
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnChooseDirClick
      end
      object LabelLangDir: TLabel
        Left = 4
        Top = 170
        Width = 112
        Height = 13
        Caption = 'Language files directory'
      end
      object BtnChooseLangDir: TSpeedButton
        Tag = 2
        Left = 403
        Top = 187
        Width = 24
        Height = 24
        Hint = 'Open'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          00669900669900669900669900669900669900669900669900669900669966CC
          CCFF00FFFF00FFFF00FFFF00FFCCCCCCBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEBEBEBEBEBEBEBED6D6D6FF00FFFF00FFFF00FF3399CC3399CC
          99FFFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF3399CC0066
          99FF00FFFF00FFFF00FFCCCCCCCCCCCCE2E2E2D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7CCCCCCBEBEBEFF00FFFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF0066
          993399CCFF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7BEBEBECCCCCCFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF66CC
          CC006699FF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7D6D6D6BEBEBEFF00FFFF00FF3399CC66CCFF
          3399CC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF0066993399CCFF00FFCCCCCCD7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2BEBEBECCCCCCFF00FF3399CC66CCFF
          66CCCC66CCCC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF66CCCC006699FF00FFCCCCCCD7D7D7D6D6D6D6D6D6E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2D6D6D6BEBEBEFF00FF3399CC99FFFF
          66CCFF3399CCCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF99FFFFCCFF
          FFCCFFFF006699FF00FFCCCCCCE2E2E2D7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FF3399CC99FFFF
          99FFFF66CCFF3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399
          CC3399CC66CCFFFF00FFCCCCCCE2E2E2E2E2E2D7D7D7CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD7D7D7FF00FF3399CCCCFFFF
          99FFFF99FFFF99FFFF99FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF006699FF00
          FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          CCFFFFCCFFFFCCFFFFCCFFFF3399CC3399CC3399CC3399CC3399CCFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2CCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          3399CC3399CC3399CC3399CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF993300993300993300FF00FFFF00FFCCCCCCCCCCCCCCCCCCCCCCCCFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00
          FF993300FF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFAFAFAFFF00FFFF00FFFF00FFAFAFAFFF00FFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9933009933009933
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnChooseDirClick
      end
      object LabelHelpDocDir: TLabel
        Left = 4
        Top = 262
        Width = 142
        Height = 13
        Caption = 'Help/Documentation directory'
        Enabled = False
      end
      object BtnViewHelpDir: TSpeedButton
        Left = 403
        Top = 279
        Width = 24
        Height = 24
        Hint = 'View'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          00669900669900669900669900669900669900669900669900669900669966CC
          CCFF00FFFF00FFFF00FFFF00FFCCCCCCBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEBEBEBEBEBEBEBED6D6D6FF00FFFF00FFFF00FF3399CC3399CC
          99FFFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF3399CC0066
          99FF00FFFF00FFFF00FFCCCCCCCCCCCCE2E2E2D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7CCCCCCBEBEBEFF00FFFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF0066
          993399CCFF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7BEBEBECCCCCCFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF66CC
          CC006699FF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7D6D6D6BEBEBEFF00FFFF00FF3399CC66CCFF
          3399CC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF0066993399CCFF00FFCCCCCCD7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2BEBEBECCCCCCFF00FF3399CC66CCFF
          66CCCC66CCCC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF66CCCC006699FF00FFCCCCCCD7D7D7D6D6D6D6D6D6E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2D6D6D6BEBEBEFF00FF3399CC99FFFF
          66CCFF3399CCCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF99FFFFCCFF
          FFCCFFFF006699FF00FFCCCCCCE2E2E2D7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FF3399CC99FFFF
          99FFFF66CCFF3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399
          CC3399CC66CCFFFF00FFCCCCCCE2E2E2E2E2E2D7D7D7CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD7D7D7FF00FF3399CCCCFFFF
          99FFFF99FFFF99FFFF99FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF006699FF00
          FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          CCFFFFCCFFFFCCFFFFCCFFFF3399CC3399CC3399CC3399CC3399CCFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2CCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          3399CC3399CC3399CC3399CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF993300993300993300FF00FFFF00FFCCCCCCCCCCCCCCCCCCCCCCCCFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00
          FF993300FF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFAFAFAFFF00FFFF00FFFF00FFAFAFAFFF00FFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9933009933009933
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnViewDirClick
      end
      object LabelExamplesDir: TLabel
        Left = 4
        Top = 310
        Width = 88
        Height = 13
        Caption = 'Examples directory'
        Enabled = False
      end
      object BtnViewExamplesDir: TSpeedButton
        Tag = 1
        Left = 403
        Top = 327
        Width = 24
        Height = 24
        Hint = 'View'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          00669900669900669900669900669900669900669900669900669900669966CC
          CCFF00FFFF00FFFF00FFFF00FFCCCCCCBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEBEBEBEBEBEBEBED6D6D6FF00FFFF00FFFF00FF3399CC3399CC
          99FFFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF3399CC0066
          99FF00FFFF00FFFF00FFCCCCCCCCCCCCE2E2E2D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7CCCCCCBEBEBEFF00FFFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF0066
          993399CCFF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7BEBEBECCCCCCFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF66CC
          CC006699FF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7D6D6D6BEBEBEFF00FFFF00FF3399CC66CCFF
          3399CC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF0066993399CCFF00FFCCCCCCD7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2BEBEBECCCCCCFF00FF3399CC66CCFF
          66CCCC66CCCC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF66CCCC006699FF00FFCCCCCCD7D7D7D6D6D6D6D6D6E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2D6D6D6BEBEBEFF00FF3399CC99FFFF
          66CCFF3399CCCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF99FFFFCCFF
          FFCCFFFF006699FF00FFCCCCCCE2E2E2D7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FF3399CC99FFFF
          99FFFF66CCFF3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399
          CC3399CC66CCFFFF00FFCCCCCCE2E2E2E2E2E2D7D7D7CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD7D7D7FF00FF3399CCCCFFFF
          99FFFF99FFFF99FFFF99FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF006699FF00
          FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          CCFFFFCCFFFFCCFFFFCCFFFF3399CC3399CC3399CC3399CC3399CCFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2CCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          3399CC3399CC3399CC3399CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF993300993300993300FF00FFFF00FFCCCCCCCCCCCCCCCCCCCCCCCCFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00
          FF993300FF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFAFAFAFFF00FFFF00FFFF00FFAFAFAFFF00FFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9933009933009933
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnViewDirClick
      end
      object LabelUserDefDir: TLabel
        Left = 4
        Top = 78
        Width = 107
        Height = 13
        Caption = 'User'#39's default directory'
      end
      object BtnChooseUsersDefDir: TSpeedButton
        Left = 403
        Top = 95
        Width = 24
        Height = 24
        Hint = 'Open'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          00669900669900669900669900669900669900669900669900669900669966CC
          CCFF00FFFF00FFFF00FFFF00FFCCCCCCBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEBEBEBEBEBEBEBED6D6D6FF00FFFF00FFFF00FF3399CC3399CC
          99FFFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF3399CC0066
          99FF00FFFF00FFFF00FFCCCCCCCCCCCCE2E2E2D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7CCCCCCBEBEBEFF00FFFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF0066
          993399CCFF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7BEBEBECCCCCCFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF66CC
          CC006699FF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7D6D6D6BEBEBEFF00FFFF00FF3399CC66CCFF
          3399CC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF0066993399CCFF00FFCCCCCCD7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2BEBEBECCCCCCFF00FF3399CC66CCFF
          66CCCC66CCCC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF66CCCC006699FF00FFCCCCCCD7D7D7D6D6D6D6D6D6E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2D6D6D6BEBEBEFF00FF3399CC99FFFF
          66CCFF3399CCCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF99FFFFCCFF
          FFCCFFFF006699FF00FFCCCCCCE2E2E2D7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FF3399CC99FFFF
          99FFFF66CCFF3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399
          CC3399CC66CCFFFF00FFCCCCCCE2E2E2E2E2E2D7D7D7CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD7D7D7FF00FF3399CCCCFFFF
          99FFFF99FFFF99FFFF99FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF006699FF00
          FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          CCFFFFCCFFFFCCFFFFCCFFFF3399CC3399CC3399CC3399CC3399CCFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2CCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          3399CC3399CC3399CC3399CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF993300993300993300FF00FFFF00FFCCCCCCCCCCCCCCCCCCCCCCCCFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00
          FF993300FF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFAFAFAFFF00FFFF00FFFF00FFAFAFAFFF00FFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9933009933009933
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnChooseDirClick
      end
      object LabelProjDir: TLabel
        Left = 4
        Top = 217
        Width = 81
        Height = 13
        Caption = 'Projects directory'
      end
      object BtnChooseProjDir: TSpeedButton
        Tag = 3
        Left = 403
        Top = 234
        Width = 24
        Height = 24
        Hint = 'Open'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          00669900669900669900669900669900669900669900669900669900669966CC
          CCFF00FFFF00FFFF00FFFF00FFCCCCCCBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEBEBEBEBEBEBEBED6D6D6FF00FFFF00FFFF00FF3399CC3399CC
          99FFFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF3399CC0066
          99FF00FFFF00FFFF00FFCCCCCCCCCCCCE2E2E2D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7CCCCCCBEBEBEFF00FFFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF0066
          993399CCFF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7BEBEBECCCCCCFF00FFFF00FF3399CC3399CC
          66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF66CC
          CC006699FF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7D6D6D6BEBEBEFF00FFFF00FF3399CC66CCFF
          3399CC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF0066993399CCFF00FFCCCCCCD7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2BEBEBECCCCCCFF00FF3399CC66CCFF
          66CCCC66CCCC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
          FF66CCCC006699FF00FFCCCCCCD7D7D7D6D6D6D6D6D6E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2D6D6D6BEBEBEFF00FF3399CC99FFFF
          66CCFF3399CCCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF99FFFFCCFF
          FFCCFFFF006699FF00FFCCCCCCE2E2E2D7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FF3399CC99FFFF
          99FFFF66CCFF3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399
          CC3399CC66CCFFFF00FFCCCCCCE2E2E2E2E2E2D7D7D7CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD7D7D7FF00FF3399CCCCFFFF
          99FFFF99FFFF99FFFF99FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF006699FF00
          FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
          E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
          CCFFFFCCFFFFCCFFFFCCFFFF3399CC3399CC3399CC3399CC3399CCFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2CCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          3399CC3399CC3399CC3399CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF993300993300993300FF00FFFF00FFCCCCCCCCCCCCCCCCCCCCCCCCFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00
          FF993300FF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFAFAFAFFF00FFFF00FFFF00FFAFAFAFFF00FFAFAFAFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9933009933009933
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnChooseDirClick
      end
      object EditTemplatesDir: TEdit
        Left = 5
        Top = 142
        Width = 392
        Height = 21
        TabOrder = 0
        OnChange = EditorOptionsChanged
      end
      object EditLangDir: TEdit
        Left = 5
        Top = 188
        Width = 392
        Height = 21
        TabOrder = 1
        OnChange = EditorOptionsChanged
      end
      object EditHelpDocDir: TEdit
        Left = 5
        Top = 280
        Width = 392
        Height = 21
        Enabled = False
        TabOrder = 2
        Text = 'Help\'
      end
      object EditExamplesDir: TEdit
        Left = 5
        Top = 328
        Width = 392
        Height = 21
        Enabled = False
        TabOrder = 3
        Text = 'Examples\'
      end
      object EditUsersDefDir: TEdit
        Left = 5
        Top = 96
        Width = 392
        Height = 21
        TabOrder = 4
        OnChange = EditorOptionsChanged
      end
      object GroupBoxUseAltConfFile: TGroupBox
        Left = 4
        Top = 8
        Width = 429
        Height = 65
        Caption = '      Alternative configuration file'
        TabOrder = 5
        object LabelConfFile: TLabel
          Left = 8
          Top = 18
          Width = 78
          Height = 13
          Caption = 'Configuration file'
        end
        object BtnChooseConfFile: TSpeedButton
          Left = 399
          Top = 33
          Width = 24
          Height = 24
          Hint = 'Open'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
            00669900669900669900669900669900669900669900669900669900669966CC
            CCFF00FFFF00FFFF00FFFF00FFCCCCCCBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
            BEBEBEBEBEBEBEBEBEBEBEBEBEBED6D6D6FF00FFFF00FFFF00FF3399CC3399CC
            99FFFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF66CCFF3399CC0066
            99FF00FFFF00FFFF00FFCCCCCCCCCCCCE2E2E2D7D7D7D7D7D7D7D7D7D7D7D7D7
            D7D7D7D7D7D7D7D7D7D7D7CCCCCCBEBEBEFF00FFFF00FFFF00FF3399CC3399CC
            66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF0066
            993399CCFF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
            E2E2E2E2E2E2E2E2E2E2E2D7D7D7BEBEBECCCCCCFF00FFFF00FF3399CC3399CC
            66CCFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF66CC
            CC006699FF00FFFF00FFCCCCCCCCCCCCD7D7D7E2E2E2E2E2E2E2E2E2E2E2E2E2
            E2E2E2E2E2E2E2E2E2E2E2D7D7D7D6D6D6BEBEBEFF00FFFF00FF3399CC66CCFF
            3399CC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
            FF0066993399CCFF00FFCCCCCCD7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2
            E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2BEBEBECCCCCCFF00FF3399CC66CCFF
            66CCCC66CCCC99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF66CCFF99FF
            FF66CCCC006699FF00FFCCCCCCD7D7D7D6D6D6D6D6D6E2E2E2E2E2E2E2E2E2E2
            E2E2E2E2E2E2E2E2E2E2E2D7D7D7E2E2E2D6D6D6BEBEBEFF00FF3399CC99FFFF
            66CCFF3399CCCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF99FFFFCCFF
            FFCCFFFF006699FF00FFCCCCCCE2E2E2D7D7D7CCCCCCE2E2E2E2E2E2E2E2E2E2
            E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FF3399CC99FFFF
            99FFFF66CCFF3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399CC3399
            CC3399CC66CCFFFF00FFCCCCCCE2E2E2E2E2E2D7D7D7CCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD7D7D7FF00FF3399CCCCFFFF
            99FFFF99FFFF99FFFF99FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF006699FF00
            FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
            E2E2E2E2E2E2E2E2E2E2E2BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF3399CC
            CCFFFFCCFFFFCCFFFFCCFFFF3399CC3399CC3399CC3399CC3399CCFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFCCCCCCE2E2E2E2E2E2E2E2E2E2E2E2CCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            3399CC3399CC3399CC3399CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF993300993300993300FF00FFFF00FFCCCCCCCCCCCCCCCCCCCCCCCCFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00
            FF993300FF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFAFAFAFFF00FFFF00FFFF00FFAFAFAFFF00FFAFAFAFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9933009933009933
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
        end
        object CheckBoxUseAltConfFile: TCheckBox
          Left = 9
          Top = 0
          Width = 152
          Height = 17
          TabOrder = 0
          OnClick = CheckBoxEnableGroupClick
        end
        object EditAltConfFile: TEdit
          Left = 9
          Top = 35
          Width = 384
          Height = 21
          TabOrder = 1
          OnChange = EditorOptionsChanged
        end
      end
      object EditProjDir: TEdit
        Left = 5
        Top = 235
        Width = 392
        Height = 21
        TabOrder = 6
        OnChange = EditorOptionsChanged
      end
    end
  end
  object BtnOk: TButton
    Left = 220
    Top = 398
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object BtnCancel: TButton
    Left = 300
    Top = 398
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object BtnApply: TButton
    Left = 380
    Top = 398
    Width = 75
    Height = 25
    Caption = 'Apply'
    Enabled = False
    TabOrder = 3
    OnClick = BtnApplyClick
  end
end
