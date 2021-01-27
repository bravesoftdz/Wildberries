unit WildBerries.Types;

interface

uses
  System.Json.Serializers;

type
  TwbResponse<T> = class
  private
    [JsonName('version')]
    fVersion: Integer;
    [JsonName('data')]
    fData: T;
  public
    property Version: Integer read fVersion write fVersion;
    property Data: T read fData write fData;
  end;

  TwbMenuItem = class
  private
    [JsonName('id')]
    fID: Integer;
    [JsonName('name')]
    fName: string;
    [JsonName('shardKey')]
    fShardKey: string;
    [JsonName('query')]
    fQuery: string;
    [JsonName('filters')]
    fFilters: string;
    [JsonName('type')]
    fType: Integer;
    [JsonName('nodes')]
    fNodes: TArray<TwbMenuItem>;
  public
    property ID: Integer read fID write fID;
    property Name: string read fName write fName;
    property ShardKey: string read fShardKey write fShardKey;
    property Query: string read fQuery write fQuery;
    property Filters: string read fFilters write fFilters;
    property &Type: Integer read fType write fType;
    property Nodes: TArray<TwbMenuItem> read fNodes write fNodes;
  end;

implementation

end.
