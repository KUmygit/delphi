program myProject;

uses
  Vcl.Forms,
  winapi.windows,
  Umain in 'Umain.pas' {Form1},
  Usplash in 'Usplash.pas' {splashForm},
  Ucalc in 'Ucalc.pas' {myCalc};

{$R *.res}

begin
  Application.Initialize;

  splashForm := TsplashForm.Create(Application);//화면은 주로 application을 쓴다.
  splashForm.Show;
  splashForm.Refresh;//리프레쉬를 안하면 이미지가계속 안보인다.
  Sleep(200);

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TmyCalc, myCalc);
  //여기다 스플래쉬를 잠깐 띄어주자
  splashForm.Hide;
  splashForm.Free;
  Application.Run;
end.
