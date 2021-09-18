program capturaIcon;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form29};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm29, Form29);
  Application.Run;
end.
