object Form1: TForm1
  Left = 1559
  Top = 136
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 24
    Top = 21
    Width = 112
    Height = 13
    Caption = 'Caminho do Arquivo txt:'
  end
  object SpeedButton2: TSpeedButton
    Left = 439
    Top = 39
    Width = 29
    Height = 22
    Caption = '...'
    OnClick = SpeedButton2Click
  end
  object Label2: TLabel
    Left = 368
    Top = 288
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object EdtArquivoOriginal: TEdit
    Left = 24
    Top = 40
    Width = 409
    Height = 21
    TabOrder = 0
    Text = 
      'C:\Componentes - Sistemas Fontes\TesteItamar14-10-2013\pesquisa.' +
      'csv'
  end
  object btnProcesso: TBitBtn
    Left = 24
    Top = 67
    Width = 137
    Height = 25
    Caption = 'Processar...'
    TabOrder = 1
    OnClick = btnProcessoClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 112
    Width = 266
    Height = 105
    Caption = 'Rela'#231#227'o de todos entrevistados ordem alfab'#233'tica : '
    TabOrder = 2
    object ListBoxAlfabetica: TListBox
      Left = 2
      Top = 15
      Width = 262
      Height = 88
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 288
    Top = 112
    Width = 265
    Height = 105
    Caption = 'Rela'#231#227'o entrevistados renda superior a 30.000,00'
    TabOrder = 3
    object ListBoxRenda: TListBox
      Left = 2
      Top = 15
      Width = 261
      Height = 88
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 223
    Width = 266
    Height = 125
    Caption = 'Rela'#231#227'o entrevistados com idade entre 50 e 65 anos '
    TabOrder = 4
    object ListBoxIdade: TListBox
      Left = 2
      Top = 15
      Width = 262
      Height = 108
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object ProgressBar1: TProgressBar
    Left = 288
    Top = 67
    Width = 150
    Height = 25
    TabOrder = 5
  end
  object OpenDialog1: TOpenDialog
    Left = 520
    Top = 24
  end
end
