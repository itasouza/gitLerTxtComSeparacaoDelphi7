unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    EdtArquivoOriginal: TEdit;
    btnProcesso: TBitBtn;
    GroupBox1: TGroupBox;
    ListBoxAlfabetica: TListBox;
    GroupBox2: TGroupBox;
    ListBoxRenda: TListBox;
    GroupBox3: TGroupBox;
    ListBoxIdade: TListBox;
    ProgressBar1: TProgressBar;
    OpenDialog1: TOpenDialog;
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnProcessoClick(Sender: TObject);
    procedure Split(Str: string; Delimiter: Char; ListOfStrings: TStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
   EdtArquivoOriginal.Text := OpenDialog1.FileName;
end;

procedure TForm1.btnProcessoClick(Sender: TObject);
var
   slItens, slDados: TStringList;
   QtdLinhasTotal, y :Integer;
   sLinha, data, regiao, renda, id, nome, Arquivo, dataDia :string;
   dia, mes, ano :Word;

begin
   slItens := TStringList.Create;
   slDados := TStringList.Create;

      //limpa os listBox
   ListBoxAlfabetica.Clear;
   ListBoxRenda.Clear;
   ListBoxIdade.Clear;

   slItens.LoadFromFile(EdtArquivoOriginal.Text);
   QtdLinhasTotal := slItens.Count - 1;

    for y := 1 to Pred( QtdLinhasTotal ) do
    begin
      sLinha := slItens[y];
     // ShowMessage(sLinha );
      Split( sLinha, ';', slDados );

      id      :=  slDados[0];
      nome    :=  slDados[1];
      renda   :=  slDados[2];
      regiao  :=  slDados[3];
      data    :=  slDados[4];


      if (data > '01/12/1983') then
       begin
         ListBoxAlfabetica.Items.Add(slDados[1]);
         ListBoxAlfabetica.Sorted := True;
      end;

      if (renda > '30.000,00')then
       begin
         ListBoxRenda.Items.Add(slDados[1]);
      end;

      if (regiao = 'OESTE') and (data >= '01/12/1948') and (data <= '01/12/1963')  then
       begin
         ListBoxIdade.Items.Add(slDados[1]);
      end;

    end;

     ListBoxAlfabetica.Items.SaveToFile('C:\\ListaAlfabetica' + FormatDateTime('yyyymm', date) + '.txt');
     ListBoxRenda.Items.SaveToFile('C:\\ListaRenda' + FormatDateTime('yyyymm', date) + '.txt');
     ListBoxIdade.Items.SaveToFile('C:\\ListaIdade' + FormatDateTime('yyyymm', date) + '.txt');

     slItens.Free;
     slDados.Free;

end;

procedure TForm1.Split(Str: string; Delimiter: Char;
  ListOfStrings: TStrings);
begin
   // ListOfStrings.StrictDelimiter := True;
    ListOfStrings.Clear;
    ListOfStrings.Delimiter       := Delimiter;
    ListOfStrings.DelimitedText   := Str;
end;

end.
