unit WildBerries.Types;

interface

uses
  System.Json.Serializers;

type
  TwbResponse = class
  private
    [JsonName('version')]
    fVersion: Integer;
  public
    property Version: Integer read fVersion write fVersion;
  end;

implementation

end.
