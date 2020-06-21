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

  splashForm := TsplashForm.Create(Application);//ȭ���� �ַ� application�� ����.
  splashForm.Show;
  splashForm.Refresh;//���������� ���ϸ� �̹�������� �Ⱥ��δ�.
  Sleep(200);

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TmyCalc, myCalc);
  //����� ���÷����� ��� �������
  splashForm.Hide;
  splashForm.Free;
  Application.Run;
end.
