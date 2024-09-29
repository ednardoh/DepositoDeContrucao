unit uUsuarioControl;

interface

uses
  uUsuarioModel, System.SysUtils, FireDAC.Comp.Client;

type
  TUsuarioControl = class
    private
      FUsuarioModel: TUsuarioModel;
    public
      constructor Create;
      destructor Destroy; override;

      function Salvar: Boolean;
      function ObterUsuario(AValorpesquisa: string): TFDQuery;
      function GetId: Integer;

      property UsuarioModel: TUsuarioModel read FUsuarioModel write FUsuarioModel;

  end;

implementation

{ TUsuarioControl }

constructor TUsuarioControl.Create;
begin
  FUsuarioModel := TUsuarioModel.Create;
end;

destructor TUsuarioControl.Destroy;
begin
  FUsuarioModel.Free;
  inherited;
end;

function TUsuarioControl.GetId: Integer;
begin
  Result := FUsuarioModel.GetId;
end;

function TUsuarioControl.ObterUsuario(AValorpesquisa: string): TFDQuery;
begin
  Result := FUsuarioModel.ObterUsuario(AValorpesquisa);
end;

function TUsuarioControl.Salvar: Boolean;
begin
  Result := FUsuarioModel.Salvar;
end;

end.
