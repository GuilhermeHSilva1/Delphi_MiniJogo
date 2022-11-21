  unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, UStatus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Timer1: TTimer;
    Label3: TLabel;
    Timer2: TTimer;
    Button3: TButton;
    Timer3: TTimer;
    ProgressBar3: TProgressBar;
    Label4: TLabel;
    Button4: TButton;
    Label5: TLabel;
    ProgressBar4: TProgressBar;
    Timer4: TTimer;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    FStatusJogo: TStatus;

    procedure outras;
    procedure botoes;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.botoes;
begin

  case FStatusJogo.AtivarBotoes of
    1:
    begin
      Button2.Visible := true;
      label3.Visible := true;
      ProgressBar2.Visible := true;
    end;

    2:
    begin
      Button3.Visible := true;
      label4.Visible := true;
      ProgressBar3.Visible := true;
    end;

    3:
    begin
      Button4.Visible := true;
      label5.Visible := true;
      ProgressBar4.Visible := true;
    end;

    4: Button5.Visible:= true;

  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer2.Enabled := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer3.Enabled := true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Timer4.Enabled := true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin

  case FStatusJogo.MostrarMensagens of

    1:
    begin
      outras;
      Button1.Caption:= 'Contratar';
      Button2.Caption:= 'Contratar';
      Button3.Caption:= 'Contratar';
      Button4.Caption:= 'Contratar';
      Button5.Caption:= 'Criar impresas Multinacionais';
      label2.Caption:= 'Contratar Mamacos';
      label3.Caption:= 'Contratar Mendigos';
      label4.Caption:= 'Contratar Agiotas';
      label5.Caption:= 'Contratar Crian�as';
      FStatusJogo.xNivel:= FStatusJogo.xNivel + 1;
    end;

    2:
    begin
      outras;
      Button1.Caption:= 'Mendigar';
      Button2.Caption:= 'Mendigar';
      Button3.Caption:= 'Mendigar';
      Button4.Caption:= 'Mendigar';
      Button5.Caption:= 'Jogar na Loteria';
      label2.Caption:= 'Mendigar na Floresta';
      label3.Caption:= 'Mendigar no Sitio';
      label4.Caption:= 'Mendigar na Cidade';
      label5.Caption:= 'Mendigar no Twitter';
      FStatusJogo.xNivel:= FStatusJogo.xNivel + 1;
    end;

  end;

  label1.Caption:= 'R$:' + IntToStr(FStatusJogo.xDinheiro);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  showMessage('FINALMENTE, Depois de tanto esfor�o e trabalho duro');
  showMessage('(e sorte)');
  showMessage('Voc� se torna o mais rico de todos e consegue comprar o mundo');
  showMessage('Voc� transformou sua vida em um paraiso');
  showMessage('Pena que vieram os agiotas te mataram e roubaram tudo o que voc� tem :)');
  showMessage('Obrigado por jogar!!');
  Form1.Close;
end;

procedure TForm1.outras;
begin
    ProgressBar1.Position:= 0;
    ProgressBar2.Position:= 0;
    ProgressBar3.Position:= 0;
    ProgressBar4.Position:= 0;
    Timer1.Enabled:= false;
    Timer2.Enabled:= false;
    Timer3.Enabled:= false;
    Timer4.Enabled:= false;
    Button2.Visible:= false;
    Button3.Visible:= false;
    Button4.Visible:= false;
    Button5.Visible:= false;
    label3.Visible:= false;
    label4.Visible:= false;
    label5.Visible:= false;
    ProgressBar2.Visible:= false;
    ProgressBar3.Visible:= false;
    ProgressBar4.Visible:= false;
    FStatusJogo.xDinheiro:= 0;
    label1.Caption:= 'R$:' + IntToStr(FStatusJogo.xDinheiro);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  ProgressBar1.Position:= ProgressBar1.Position + 1;

    if(ProgressBar1.Position = 100) then
    begin
      FStatusJogo.adicionarDinheiro(ProgressBar1.Position);

      Botoes;
      label1.Caption:=('R$:' + IntToStr(FStatusJogo.xDinheiro));
      Timer1.Enabled := false;
      ProgressBar1.Position:= 0;
    end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin

  ProgressBar2.Position:= ProgressBar2.Position + 1;

  if (ProgressBar2.Position = 450)then
    begin
      FStatusJogo.adicionarDinheiro(ProgressBar2.Position);

      Botoes;
      label1.Caption:=('R$:' + IntToStr(FStatusJogo.xDinheiro));
      Timer2.Enabled := false;
      ProgressBar2.Position:= 0;
    end;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin

  ProgressBar3.Position:= ProgressBar3.Position + 1;

  if (ProgressBar3.Position = 1000)then
  begin
      FStatusJogo.adicionarDinheiro(ProgressBar3.Position);

      Botoes;
      label1.Caption:=('R$:' + IntToStr(FStatusJogo.xDinheiro));
      Timer3.Enabled := false;
      ProgressBar3.Position:= 0;
  end;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin

  ProgressBar4.Position:= ProgressBar4.Position + 1;

  if (ProgressBar4.Position = 2000)then
  begin
      FStatusJogo.adicionarDinheiro(ProgressBar4.Position);

      Botoes;
      label1.Caption:=('R$:' + IntToStr(FStatusJogo.xDinheiro));
      Timer4.Enabled := false;
      ProgressBar4.Position:= 0;
  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FStatusJogo) then
    FStatusJogo.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if not Assigned(FStatusJogo) then
    FStatusJogo:= TStatus.Create;
end;
end.
