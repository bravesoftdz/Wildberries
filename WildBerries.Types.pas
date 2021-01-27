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

  TwbMenuItems = TArray<TwbMenuItem>;

  TwbProductItem = class
  private
    [JsonName('id')]
    fID: Integer;
    fRoot: Integer;
    fKindID: Integer;
    fSubjectID: Integer;
    [JsonName('name')]
    fName: string;
    FBrand: string;
    FBrandID: Integer;
    FSiteBrandID: Integer;
    FSale: Integer;
    FPriceU: Integer;
    FSalePriceU: Integer;
    FPics: Integer;
    FRating: Byte;
  published
    property ID: Integer read fID write fID;
    property Root: Integer read fRoot write fRoot;
    property KindID: Integer read fKindID write fKindID;
    property SubjectID: Integer read fSubjectID write fSubjectID;
    property Name: string read fName write fName;
    property Brand: string read FBrand write FBrand;
    property BrandID: Integer read FBrandID write FBrandID;
    property SiteBrandID: Integer read FSiteBrandID write FSiteBrandID;
    property Sale: Integer read FSale write FSale;
    property PriceU: Integer read FPriceU write FPriceU;
    property SalePriceU: Integer read FSalePriceU write FSalePriceU;
    property Pics: Integer read FPics write FPics;
    property Rating: Byte read FRating write FRating;
  end;

implementation

end.
