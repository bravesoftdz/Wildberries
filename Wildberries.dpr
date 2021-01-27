program Wildberries;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Wildberries.Types in 'WildBerries.Types.pas',
  Wildberries.Client in 'WildBerries.Client.pas';

procedure WriteMenu(ANodes: TArray<TwbMenuItem>; APrefixLength: Integer);
var
  I: Integer;
  lPrefix: string;
begin
  for I := 0 to APrefixLength do
    lPrefix := lPrefix + '-';
  for I := Low(ANodes) to High(ANodes) do
  begin
    WriteLn(lPrefix + ' ' + ANodes[I].Name + ' - ' + ANodes[I].ShardKey);
    if Assigned(ANodes[I].Nodes) then
      WriteMenu(ANodes[I].Nodes, APrefixLength + 1);
  end;
end;

procedure Main;
var
  lWB: TWildBerriesClient;
  lMenu: TwbResponse<TwbMenuItems>;

begin
  lWB := TWildBerriesClient.Create;
  try
    lMenu := lWB.GetMenu;
    WriteMenu(lMenu.Data, 0);
  finally
    lWB.Free;
  end;
end;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    Main;
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;
  Readln;

end.
