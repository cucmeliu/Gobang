unit WinnerFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg;

type
  TWinnerForm = class(TForm)
    shpWinner: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    
  end;

  procedure ShowWinner(Color: TColor; Inden: byte = 1);
var
  WinnerForm: TWinnerForm;
  winnerColor: TColor;
  fInden: byte;

implementation

{$R *.dfm}

procedure ShowWinner(Color: TColor; Inden: byte);
begin
  WinnerForm := TWinnerForm.Create(application);
  winnerColor := Color;
  fInden := inden;
  WinnerForm.ShowModal;
end;

procedure TWinnerForm.FormShow(Sender: TObject);
begin
  if fInden = 0 then
  begin
    label1.Caption := 'ª∂”≠ π”√';
    Label2.Visible := false;
    shpwinner.Visible := false;
  end;   
  ShpWinner.Brush.Color := winnerColor;
end;

procedure TWinnerForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TWinnerForm.FormClick(Sender: TObject);
begin
  close;
end;

end.
