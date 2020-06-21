unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdActns, Vcl.ActnMenus, Vcl.ComCtrls,
  Vcl.ActnPopup, Vcl.ExtActns, Vcl.StdCtrls, Ucalc;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    ActionMainMenuBar1: TActionMainMenuBar;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    PopupMenu1: TPopupMenu;
    RichEdit1: TRichEdit;
    StatusBar1: TStatusBar;
    Action1: TAction;
    Timer1: TTimer;
    calcAction: TAction;
    procedure Action1Execute(Sender: TObject);
    procedure FileOpen1BeforeExecute(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1BeforeExecute(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ShowHint(Sender:TObject);
    procedure FormCreate(Sender: TObject);
    procedure calcActionExecute(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;//new��ư�� ������ �޸����� �� ��������.
end;

procedure TForm1.calcActionExecute(Sender: TObject);  ////////////////////////// ���� ����
var
  myCalc : TmyCalc;
begin
  myCalc := TmyCalc.Create(self);
  myCalc.ShowModal;

  myCalc.Free;
end;

procedure TForm1.FileOpen1Accept(Sender: TObject);
begin
  RichEdit1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);//open�� ������ ���� �޸��忡 ����ش�
end;

procedure TForm1.FileOpen1BeforeExecute(Sender: TObject);
begin
  FileOpen1.Dialog.InitialDir := 'c:\';//�ʱ� ���� ��ġ�� ������ �ټ� �ִ�.
  FileOpen1.Dialog.Filter := '��������|*.pas|�ؽ�Ʈ����|*.txt';//������ �� �ִ� ������ ������ �� �ִ�
end;

procedure TForm1.FileSaveAs1Accept(Sender: TObject);
begin
  RichEdit1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);//�������ִ� �κ�
end;

procedure TForm1.FileSaveAs1BeforeExecute(Sender: TObject);
begin
   FileSaveAs1.Dialog.InitialDir := 'c:\';//�ʱ� ���� ��ġ�� ������ �ټ� �ִ�.

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//�������� ���� �Ǵ� ����
  Application.OnHint := ShowHint;//���ø����̼ǿ��� �����ϴ� onhint�� �츮�� ���� show�� �־��ش�.
end;

procedure TForm1.ShowHint(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := Application.Hint;
// application.hintPause, hintColor ������ �̺�Ʈ ó���� ���� �� �ִ�.
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := FormatDateTime('yyyy-mmmm-dd dddd hh:nn:ss am/pm', now);//statusbar�� ��¥�� ���Ŀ� ���缭 ǥ��
end;

end.
