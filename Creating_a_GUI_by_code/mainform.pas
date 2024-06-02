unit mainform;

{$MODE DELPHI}{$H+}

interface

uses Forms, StdCtrls, Classes;

type
  TMyForm = class(TCustomForm)
  public
    MyButton: TButton;
    procedure ButtonClick(ASender: TObject);
    constructor CreateNew(AOwner: TComponent); reintroduce;
  end;

implementation

procedure TMyForm.ButtonClick(ASender:TObject);
begin
  Close;
end;

constructor TMyForm.CreateNew(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
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
    Height := 30;
    Left := 100;
    Top := 100;
    Width := 100;
    Caption := 'Close';
    OnClick := ButtonClick;
    Parent := Self;
  end;

  // Add other component creation and property setting code here
end;

end.
