program HelloWord;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  TelegramBotApi.Client,
  TelegramBotApi.Types,
  System.SysUtils;

procedure Awesome;
const
  YOUR_ACCESS_TOKEN_HERE = 'YOUR_ACCESS_TOKEN_HERE';
var
  LBot: TTelegramBotApi;
  LMe: TtgUser;
begin
  LBot := TTelegramBotApi.Create(YOUR_ACCESS_TOKEN_HERE);
  try
    LMe := LBot.GetMe().Result;
    WriteLn('Hello, World! I am user ', LMe.ID, ' and my name is "', LMe.FirstName, '".');
  finally
    LBot.Free;
  end;
end;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    Awesome;
    Readln
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;

end.
