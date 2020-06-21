unit Ucalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TmyCalc = class(TForm)
    GridPanel1: TGridPanel;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_div: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_mul: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_sub: TButton;
    btn_cancel: TButton;
    btn_0: TButton;
    btn_comma: TButton;
    btn_add: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  myCalc: TmyCalc;
  leftSide : string;
  rightSide: string;
  flag : Boolean = false;

implementation

{$R *.dfm}



function myAdd(a,b : Double):Double ; external 'calcDll.dll';
function mySub(a,b : Double):Double ; external 'calcDll.dll';
function myMul(a,b : Double):Double ; external 'calcDll.dll';
function myDiv(a,b : Double):Double ; external 'calcDll.dll';






end.
