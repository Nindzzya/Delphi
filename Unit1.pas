unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    ScrollBox1: TScrollBox;
    procedure FormActivate(Sender: TObject);
  end;
var
  Form1: TForm1;
implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
var
  i, top_item, space : integer;
  lst_box: array[0..50] of TListBox;
begin
top_item := 0;
space := 10;
for i:= 0 to 50 do
  begin
    lst_box[i]:= TListBox.Create(Self);
    lst_box[i].Parent:= ScrollBox1;
    lst_box[i].Top := top_item;
    lst_box[i].Left:= 0;
    lst_box[i].Width:= 250;
    lst_box[i].Height:= 50;
    lst_box[i].Items.add('Text' + ' ' + inttostr(i));
    top_item := top_item +  lst_box[i].Height + space;
  end
end;
end.
 