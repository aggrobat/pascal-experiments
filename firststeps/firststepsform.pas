unit firststepsform;

{$mode objfpc}{$H+}

interface

uses 
Controls,
forms, 
StdCtrls, 
classes;

type
// Q: In which package is TForm defined?
// A: In the LCL package, which is the Lazarus Component Library

  TFirstSteps = class(TForm)
  public
    MyButton: TButton;
    procedure ButtonClick(ASender: TObject);
    constructor Create(AOwner: TComponent); override;
  end;

implementation

procedure TFirstSteps.ButtonClick(ASender:TObject);
begin
  Close;
end;

constructor TFirstSteps.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  //Hint: FormCreate() is called BEFORE Create() !
  //so You can also put this code into FormCreate()
  //(This is not the case when creating components ..)

  Position := poScreenCenter;
  Height := 400;
  Width := 400;

  VertScrollBar.Visible := False;
  HorzScrollBar.Visible := False;

  MyButton := TButton.Create(Self);
  with MyButton do
  begin
    // Height := 30;
    // Left := 100;
    // Top := 100;
    // Width := 100;
    Align := alTop;
    Caption := 'Close';
    OnClick := @ButtonClick;
    Parent := Self;
  end;

  // Add other component creation and property setting code here
end;

end.
