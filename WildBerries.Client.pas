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
    function GetMenu: TwbResponse<TwbMenuItem>;
    constructor Create;
    destructor Destroy; override;

  end;

implementation

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

function TWildBerriesClient.GetMenu: TwbResponse<TwbMenuItem>;
begin

end;

end.
