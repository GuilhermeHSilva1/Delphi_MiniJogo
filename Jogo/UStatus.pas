unit UStatus;

interface

uses Vcl.Dialogs;


type TStatus = class
  private
    Dinheiro:          Integer;
    Nivel:             Integer;
    TentativaLoterica: Integer;

    function GetDinheiro: Integer;
    procedure SetDinheiro(const Value: Integer);

    function GetNivel: Integer;
    procedure SetNivel(const Value: Integer);

    function GetTentativaLoterica: Integer;
    procedure SetTentativaLoterica(const Value: Integer);

  public

  property xDinheiro:          Integer read GetDinheiro write SetDinheiro;
  property xNivel :            Integer read GetNivel write SetNivel;
  property xTentativaLoterica: Integer read GetTentativaLoterica write SetTentativaLoterica;

  procedure adicionarDinheiro(const pProgresso: Integer);

  function MostrarMensagens: Integer;
  function AtivarBotoes: Integer;


end;

implementation

{ TStatus }

function TStatus.GetDinheiro: Integer;
begin
  Result:= Dinheiro;
end;

function TStatus.GetNivel: Integer;
begin
  Result:= Nivel;
end;

function TStatus.GetTentativaLoterica: Integer;
begin
  Result:= TentativaLoterica;
end;

procedure TStatus.SetDinheiro(const Value: Integer);
begin
  Dinheiro:= Value;
end;

procedure TStatus.SetNivel(const Value: Integer);
begin
  Nivel:= Value;
end;

procedure TStatus.SetTentativaLoterica(const Value: Integer);
begin
  TentativaLoterica:= Value;
end;



{ Fun��es }

function TStatus.MostrarMensagens: Integer;
begin

  Result:= 0;

  case Nivel of
    0:
    begin
      ShowMessage('Voc� ap�s tanto trabalhar voce decide abrir uma empresa');
      ShowMessage('Agora voce ira contratar todas as pessoas para quem vc trabalhou');
      ShowMessage('Chegou SUA vez de ser o chefe mand�o');
      showMessage('Agora provavelmente sua vida ir� melhorar muito');
      showMessage('Provavelmente');
      showMessage('Ou ser� que n�o');
      Result := 1;
    end;

    1:
    begin
      showMessage('ESSA N�O!!!!');
      showMessage('Ap�s vc contratar crian�as vc foi processado pelos agiotas por trabalho infantil');
      showMessage('Voc� n�o teve chances, vc acabou perdendo tudo, seus empregados e sua empresa');
      showMessage('Os agiotas tomaram conta de todos os seus bens');
      showMessage('E vc foi preso claro, por 5 anos');
      showMessage('Ap�s vc sair da pris�o vc ir� precisar reconstruir sua hierarquia');
      Result := 2;
    end;

    2:
    begin

      case TentativaLoterica of

        0:
        begin
          showMessage('Voc� acaba decidino apostar tudo na loteria');
          showMessage('EEEE.......');
          showMessage('Voc� Perdeu :(');
          TentativaLoterica:= TentativaLoterica + 1;
        end;

        1:
        begin
          showMessage('Voc� decide arriscar tudo mais uma vez');
          showMessage('E.....');
          showMessage('Voc� perdeu de novo :( :( :( :(');
          TentativaLoterica:= TentativaLoterica + 1;
        end;

        2:
        begin
          showMessage('Voc� ja cansado, sem espera�as, decide arriscar novamente');
          showMessage('E......');
          showMessage('VOC� GANHOU!!!!!!!!!');
          Dinheiro := 10000000000;
        end;

      end;
    end;
  end;
end;

procedure TStatus.adicionarDinheiro(const pProgresso: Integer);
begin

  case Nivel of

    0:
    begin
      case pProgresso of
        2000: Dinheiro:= Dinheiro + 100;
        1000: Dinheiro:= Dinheiro + 20;
        450:  Dinheiro:= Dinheiro + 5;
        100:  Dinheiro:= Dinheiro + 2
      end;
    end;

    1:
    begin
      case pProgresso of
        2000: Dinheiro:= Dinheiro + 300;
        1000: Dinheiro:= Dinheiro + 100;
        450:  Dinheiro:= Dinheiro + 20;
        100:  Dinheiro:= Dinheiro + 5
      end;
    end;

    2:
    begin
      case pProgresso of
        2000: Dinheiro:= Dinheiro + 40;
        1000: Dinheiro:= Dinheiro + 10;
        450:  Dinheiro:= Dinheiro + 3;
        100:  Dinheiro:= Dinheiro + 1
      end;
    end;
  end;

end;

function TStatus.AtivarBotoes: Integer;
begin

  Result := 0;

  case Nivel of

    0:
    begin
      case Dinheiro of
        100..999999: Result := 4;
        50..99:      Result := 3;
        25..49:      Result := 2;
        10..24:      Result := 1
      end;
    end;

    1:
    begin
      case Dinheiro of
        500..999999: Result := 4;
        150..499:    Result := 3;
        50..149:     Result := 2;
        20..49:      Result := 1
      end;
    end;

    2:
    begin
      case Dinheiro of
        80..9999999: Result := 4;
        50..79:      Result := 3;
        20..49:      Result := 2;
        5..19:       Result := 1
      end;
    end;

  end;

end;

end.
