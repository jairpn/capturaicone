unit uPrincipal;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.ShellAPI,
    Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.Imaging.pngimage;

type
    TForm29 = class(TForm)
        Button1: TButton;
        imgIco: TImage;
        Button2: TButton;
        OpenDialog1: TOpenDialog;
        SaveDialog1: TSaveDialog;
    Bevel1: TBevel;
        procedure Button1Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
        private
            { Private declarations }
        public
            { Public declarations }
    end;

var
      Form29: TForm29;

implementation

{$R *.dfm}


function GetIconExe(ExeName: string): TIcon;    // Função para extrair o ícone
begin
    Result := TIcon.Create;
    Result.Handle := ExtractIcon(Application.Handle, PChar(ExeName), 0);
end;

procedure TForm29.Button1Click(Sender: TObject);
begin
    OpenDialog1.Execute();
    imgIco.Picture.Assign(GetIconExe(OpenDialog1.FileName)); // Aqui ele extrai o ícone do EXE ou DLL
end;

procedure TForm29.Button2Click(Sender: TObject);
begin
    if (SaveDialog1.Execute) then
        imgIco.Picture.SaveToFile(SaveDialog1.FileName);
end;

end.
