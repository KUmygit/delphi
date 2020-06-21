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
  RichEdit1.Lines.Clear;//new버튼을 무르면 메모장을 다 지워주자.
end;

procedure TForm1.calcActionExecute(Sender: TObject);  ////////////////////////// 계산기 생성
var
  myCalc : TmyCalc;
begin
  myCalc := TmyCalc.Create(self);
  myCalc.ShowModal;

  myCalc.Free;
end;

procedure TForm1.FileOpen1Accept(Sender: TObject);
begin
  RichEdit1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);//open한 파일을 나의 메모장에 띄어준다
end;

procedure TForm1.FileOpen1BeforeExecute(Sender: TObject);
begin
  FileOpen1.Dialog.InitialDir := 'c:\';//초기 여는 위치를 설정해 줄수 있다.
  FileOpen1.Dialog.Filter := '유닛파일|*.pas|텍스트파일|*.txt';//선택할 수 있는 파일을 설정할 수 있다
end;

procedure TForm1.FileSaveAs1Accept(Sender: TObject);
begin
  RichEdit1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);//저장해주는 부분
end;

procedure TForm1.FileSaveAs1BeforeExecute(Sender: TObject);
begin
   FileSaveAs1.Dialog.InitialDir := 'c:\';//초기 여는 위치를 설정해 줄수 있다.

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//메인폼이 생성 되는 순간
  Application.OnHint := ShowHint;//어플리케이션에서 관리하는 onhint에 우리가 만든 show를 넣어준다.
end;

procedure TForm1.ShowHint(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := Application.Hint;
// application.hintPause, hintColor 등으로 이벤트 처리를 해줄 수 있다.
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := FormatDateTime('yyyy-mmmm-dd dddd hh:nn:ss am/pm', now);//statusbar에 날짜를 형식에 맞춰서 표시
end;

end.
