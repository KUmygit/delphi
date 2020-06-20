unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdActns, Vcl.ActnMenus;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    ActionMainMenuBar1: TActionMainMenuBar;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
