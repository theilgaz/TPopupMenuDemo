unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    procedure Fill(menu: TPopupMenu; sender: integer);
    procedure SampleProcedure(sender: TObject);
    procedure Button1Click(sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.Button1Click(sender: TObject);
begin
  Fill(PopupMenu1, TButton(sender).Tag);
end;

procedure TForm1.Fill(menu: TPopupMenu; sender: integer);
var
  item: TMenuItem;
  i: Integer;
begin

  menu.Items.Clear;

  for i := 0 to 9 do
  begin
    item := TMenuItem.Create(Self);
    item.Caption := sender.ToString + ' item ' + i.ToString;
    item.Tag := i;
    menu.Items.Add(item);
    menu.Items[i].OnClick := SampleProcedure;
  end;

  menu.Popup(100, 100);

end;

procedure TForm1.SampleProcedure(sender: TObject);
begin
  ShowMessage(TMenuItem(sender).Tag.ToString);
end;

end.
