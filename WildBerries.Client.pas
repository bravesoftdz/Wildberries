unit WildBerries.Client;

interface

uses
  CloudAPI.Client.Sync,
  WildBerries.Types;

type
  TWildBerriesClient = class
  private
    fCloud: TCloudApiClient;
  public
    function GetMenu: TwbResponse<TwbMenuItems>;
    constructor Create;
    destructor Destroy; override;

  end;

implementation

uses
  CloudAPI.Request,
  CloudAPI.Response;
{ TWildBerriesClient }

constructor TWildBerriesClient.Create;
begin
  inherited Create();
  fCloud := TCloudApiClient.Create;
end;

destructor TWildBerriesClient.Destroy;
begin
  fCloud.Free;
  inherited;
end;

function TWildBerriesClient.GetMenu: TwbResponse<TwbMenuItems>;
var
  lReq: IcaRequest;
  lRes: IcaResponse<TwbResponse<TwbMenuItems>>;
begin
  lReq := TcaRequest.Create;
  lReq.Resource := 'https://wbxmenu-eu.wildberries.ru/ua/v3/api?lang=ru';
  lRes := fCloud.Execute < TwbResponse < TwbMenuItems >> (lReq);
  Result := lRes.Data;
end;

end.
