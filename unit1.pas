unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    Convert: TButton;
    Decimal: TSpinEdit;
    HexaValeur: TLabel;
    Label1: TLabel;
    Binaire: TLabel;
    BinaireValeur: TLabel;
    Hexa: TLabel;
    procedure ConvertClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  reste, partie1,partie2 : string;
  i : integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ConvertClick(Sender: TObject);
begin
  reste:='';
  for i:=1 to 8 do
  begin
       reste:=  inttostr(Decimal.Value MOD 2) + reste ;
       Decimal.Value:= (Decimal.Value DIV 2);
  end;
  BinaireValeur.Caption:= reste;

  partie1:= copy(reste,1,4);
  partie2:= copy(reste,5,4);

   case partie1 of
  '0000' : HexaValeur.Caption:= '0';
  '0001' : HexaValeur.Caption:= '1';
  '0010' : HexaValeur.Caption:= '2';
  '0011' : HexaValeur.Caption:= '3';
  '0100' : HexaValeur.Caption:= '4';
  '0101' : HexaValeur.Caption:= '5';
  '0110' : HexaValeur.Caption:= '6';
  '0111' : HexaValeur.Caption:= '7';
  '1000' : HexaValeur.Caption:= '8';
  '1001' : HexaValeur.Caption:= '9';
  '1010' : HexaValeur.Caption:= 'A';
  '1011' : HexaValeur.Caption:= 'B';
  '1100' : HexaValeur.Caption:= 'C';
  '1101' : HexaValeur.Caption:= 'D';
  '1110' : HexaValeur.Caption:= 'E';
  '1111' : HexaValeur.Caption:= 'F';
  end;

  case partie2 of
  '0000' : HexaValeur.Caption:= HexaValeur.Caption+'0';
  '0001' : HexaValeur.Caption:= HexaValeur.Caption+'1';
  '0010' : HexaValeur.Caption:= HexaValeur.Caption+'2';
  '0011' : HexaValeur.Caption:= HexaValeur.Caption+'3';
  '0100' : HexaValeur.Caption:= HexaValeur.Caption+'4';
  '0101' : HexaValeur.Caption:= HexaValeur.Caption+'5';
  '0110' : HexaValeur.Caption:= HexaValeur.Caption+'6';
  '0111' : HexaValeur.Caption:= HexaValeur.Caption+'7';
  '1000' : HexaValeur.Caption:= HexaValeur.Caption+'8';
  '1001' : HexaValeur.Caption:= HexaValeur.Caption+'9';
  '1010' : HexaValeur.Caption:= HexaValeur.Caption+'A';
  '1011' : HexaValeur.Caption:= HexaValeur.Caption+'B';
  '1100' : HexaValeur.Caption:= HexaValeur.Caption+'C';
  '1101' : HexaValeur.Caption:= HexaValeur.Caption+'D';
  '1110' : HexaValeur.Caption:= HexaValeur.Caption+'E';
  '1111' : HexaValeur.Caption:= HexaValeur.Caption+'F';
  end;


end;

end.

