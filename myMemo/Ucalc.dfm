object myCalc: TmyCalc
  Left = 0
  Top = 0
  Caption = #44228#49328#44592
  ClientHeight = 344
  ClientWidth = 223
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
  object GridPanel1: TGridPanel
    Left = 0
    Top = 119
    Width = 223
    Height = 225
    Align = alBottom
    Caption = 'GridPanel1'
    Color = clBtnText
    ColumnCollection = <
      item
        Value = 24.826501802419550000
      end
      item
        Value = 24.919239131027340000
      end
      item
        Value = 25.502236769540830000
      end
      item
        Value = 24.752022297012290000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = btn_7
        Row = 0
      end
      item
        Column = 1
        Control = btn_8
        Row = 0
      end
      item
        Column = 2
        Control = btn_9
        Row = 0
      end
      item
        Column = 3
        Control = btn_div
        Row = 0
      end
      item
        Column = 0
        Control = btn_4
        Row = 1
      end
      item
        Column = 1
        Control = btn_5
        Row = 1
      end
      item
        Column = 2
        Control = btn_6
        Row = 1
      end
      item
        Column = 3
        Control = btn_mul
        Row = 1
      end
      item
        Column = 0
        Control = btn_1
        Row = 2
      end
      item
        Column = 1
        Control = btn_2
        Row = 2
      end
      item
        Column = 2
        Control = btn_3
        Row = 2
      end
      item
        Column = 3
        Control = btn_sub
        Row = 2
      end
      item
        Column = 0
        Control = btn_cancel
        Row = 3
      end
      item
        Column = 1
        Control = btn_0
        Row = 3
      end
      item
        Column = 2
        Control = btn_comma
        Row = 3
      end
      item
        Column = 3
        Control = btn_add
        Row = 3
      end>
    ParentBackground = False
    RowCollection = <
      item
        Value = 24.964478249328600000
      end
      item
        Value = 24.779517678203230000
      end
      item
        Value = 25.313712826322800000
      end
      item
        Value = 24.942291246145360000
      end>
    TabOrder = 0
    object btn_7: TButton
      Left = 1
      Top = 1
      Width = 54
      Height = 55
      Align = alClient
      Caption = '7'
      TabOrder = 0
    end
    object btn_8: TButton
      Left = 55
      Top = 1
      Width = 55
      Height = 55
      Align = alBottom
      Caption = '8'
      TabOrder = 1
    end
    object btn_9: TButton
      Left = 110
      Top = 1
      Width = 56
      Height = 55
      Align = alClient
      Caption = '9'
      TabOrder = 2
    end
    object btn_div: TButton
      Left = 166
      Top = 1
      Width = 56
      Height = 55
      Align = alClient
      Caption = '%'
      TabOrder = 3
    end
    object btn_4: TButton
      Left = 1
      Top = 56
      Width = 54
      Height = 55
      Align = alClient
      Caption = '4'
      TabOrder = 4
    end
    object btn_5: TButton
      Left = 55
      Top = 56
      Width = 55
      Height = 55
      Align = alClient
      Caption = '5'
      TabOrder = 5
    end
    object btn_6: TButton
      Left = 110
      Top = 56
      Width = 56
      Height = 55
      Align = alClient
      Caption = '6'
      TabOrder = 6
    end
    object btn_mul: TButton
      Left = 166
      Top = 56
      Width = 56
      Height = 55
      Align = alClient
      Caption = 'X'
      TabOrder = 7
    end
    object btn_1: TButton
      Left = 1
      Top = 111
      Width = 54
      Height = 56
      Align = alClient
      Caption = '1'
      TabOrder = 8
    end
    object btn_2: TButton
      Left = 55
      Top = 111
      Width = 55
      Height = 56
      Align = alClient
      Caption = '2'
      TabOrder = 9
    end
    object btn_3: TButton
      Left = 110
      Top = 111
      Width = 56
      Height = 56
      Align = alClient
      Caption = '3'
      TabOrder = 10
    end
    object btn_sub: TButton
      Left = 166
      Top = 111
      Width = 56
      Height = 56
      Align = alClient
      Caption = #12641
      TabOrder = 11
    end
    object btn_cancel: TButton
      Left = 1
      Top = 167
      Width = 54
      Height = 57
      Align = alClient
      Caption = 'C'
      TabOrder = 12
    end
    object btn_0: TButton
      Left = 55
      Top = 167
      Width = 55
      Height = 57
      Align = alClient
      Caption = '0'
      TabOrder = 13
    end
    object btn_comma: TButton
      Left = 110
      Top = 167
      Width = 56
      Height = 57
      Align = alClient
      Caption = '.'
      TabOrder = 14
    end
    object btn_add: TButton
      Left = 166
      Top = 167
      Width = 56
      Height = 57
      Align = alClient
      Caption = '+'
      TabOrder = 15
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = -6
    Width = 224
    Height = 87
    Caption = 'Panel1'
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
    object RichEdit2: TRichEdit
      Left = 1
      Top = 1
      Width = 222
      Height = 85
      Align = alClient
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Zoom = 100
    end
  end
  object Panel2: TPanel
    Left = 1
    Top = 81
    Width = 223
    Height = 40
    Caption = 'Panel2'
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
    object RichEdit1: TRichEdit
      Left = 1
      Top = 1
      Width = 221
      Height = 38
      Align = alClient
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Zoom = 100
    end
  end
end
