//
// Created by the DataSnap proxy generator.
// 27/10/2016 15:21:16
//

unit Proxy;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.FireDACJSONReflect, untLibServer, Data.DBXJSONReflect;

type

  IDSRestCachedTFDJSONDataSets = interface;

  TSrvServerMetodosClient = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FGetAlunosTesteCommand: TDSRestCommand;
    FGetAlunosTesteCommand_Cache: TDSRestCommand;
    FLoginFuncionarioCommand: TDSRestCommand;
    FLoginResponsavelCommand: TDSRestCommand;
    FValidarEmailExistenteResponsavelCommand: TDSRestCommand;
    FValidarCPFExistenteResponsavelCommand: TDSRestCommand;
    FCriarUsuarioResponsavelCommand: TDSRestCommand;
    FGetAlunosCommand: TDSRestCommand;
    FGetAlunosCommand_Cache: TDSRestCommand;
    FGetTurmasCommand: TDSRestCommand;
    FGetTurmasCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function GetAlunosTeste(const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetAlunosTeste_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function LoginFuncionario(Login: string; Senha: string; const ARequestFilter: string = ''): Boolean;
    function LoginResponsavel(Login: string; Senha: string; const ARequestFilter: string = ''): Boolean;
    function ValidarEmailExistenteResponsavel(Email: string; const ARequestFilter: string = ''): Boolean;
    function ValidarCPFExistenteResponsavel(CPF: string; const ARequestFilter: string = ''): Boolean;
    function CriarUsuarioResponsavel(Nome: string; SobreNome: string; Email: string; Senha: string; Telefone: string; CPF: string; RG: string; Sexo: string; const ARequestFilter: string = ''): string;
    function GetAlunos(EscolaId: Integer; FuncionarioId: Integer; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetAlunos_Cache(EscolaId: Integer; FuncionarioId: Integer; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetTurmas(EscolaId: Integer; FuncionarioId: Integer; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetTurmas_Cache(EscolaId: Integer; FuncionarioId: Integer; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
  end;

  TSmTesteClient = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FGetAlunosTesteCommand: TDSRestCommand;
    FGetAlunosTesteCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function GetAlunosTeste(const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetAlunosTeste_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
  end;

  TSmEscolaClient = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FLoginFuncionarioCommand: TDSRestCommand;
    FLoginFuncionarioCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    function LoginFuncionario(Login: string; Senha: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function LoginFuncionario_Cache(Login: string; Senha: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
  end;

  TSmResponsavelClient = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FLoginResponsavelCommand: TDSRestCommand;
    FLoginResponsavelCommand_Cache: TDSRestCommand;
    FValidarEmailExistenteResponsavelCommand: TDSRestCommand;
    FValidarCPFExistenteResponsavelCommand: TDSRestCommand;
    FCriarUsuarioResponsavelCommand: TDSRestCommand;
    FSalvarResponsavelCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    function LoginResponsavel(Login: string; Senha: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function LoginResponsavel_Cache(Login: string; Senha: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function ValidarEmailExistenteResponsavel(Email: string; const ARequestFilter: string = ''): Boolean;
    function ValidarCPFExistenteResponsavel(CPF: string; const ARequestFilter: string = ''): Boolean;
    function CriarUsuarioResponsavel(Nome: string; SobreNome: string; Email: string; Senha: string; Telefone: string; CPF: string; RG: string; Sexo: string; const ARequestFilter: string = ''): string;
    function SalvarResponsavel(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string = ''): string;
  end;

  TSmMainClient = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FfdqLogErrorBeforePostCommand: TDSRestCommand;
    FApplicationEventsExceptionCommand: TDSRestCommand;
    FFDConnectionAfterConnectCommand: TDSRestCommand;
    FfdqConfiguracoesBeforePostCommand: TDSRestCommand;
    FSetLogErrorOldCommand: TDSRestCommand;
    FSaveLogErrorCommand: TDSRestCommand;
    FSaveLogServerRequestCommand: TDSRestCommand;
    FSaveLogCloudMessagingCommand: TDSRestCommand;
    FGetSQLEscolaIdCommand: TDSRestCommand;
    FStartRequestCommand: TDSRestCommand;
    FEndRequestCommand: TDSRestCommand;
    FSetParamsServerCommand: TDSRestCommand;
    FSendCloudMessagingCommand: TDSRestCommand;
    FGetAlunosCommand: TDSRestCommand;
    FGetAlunosCommand_Cache: TDSRestCommand;
    FGetTurmasCommand: TDSRestCommand;
    FGetTurmasCommand_Cache: TDSRestCommand;
    FGetResponsaveisCommand: TDSRestCommand;
    FGetResponsaveisCommand_Cache: TDSRestCommand;
    FGetFuncionariosCommand: TDSRestCommand;
    FGetFuncionariosCommand_Cache: TDSRestCommand;
    FGetConfiguracoesCommand: TDSRestCommand;
    FGetConfiguracoesCommand_Cache: TDSRestCommand;
    FGetDeviceUsuarioCommand: TDSRestCommand;
    FGetDeviceUsuarioCommand_Cache: TDSRestCommand;
    FSalvarFuncionarioCommand: TDSRestCommand;
    FSalvarLogErrorCommand: TDSRestCommand;
    FSalvarConfiguracoesCommand: TDSRestCommand;
    FSalvarDeviceUsuarioCommand: TDSRestCommand;
    FGetProcessoAtualizacaoCommand: TDSRestCommand;
    FGetProcessoAtualizacaoCommand_Cache: TDSRestCommand;
    FGetDataSetCommand: TDSRestCommand;
    FGetDataSetCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    procedure fdqLogErrorBeforePost(DataSet: TDataSet);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure FDConnectionAfterConnect(Sender: TObject);
    procedure fdqConfiguracoesBeforePost(DataSet: TDataSet);
    procedure SetLogErrorOld(MsgError: string; Aplicacao: string; UnitNome: string; Classe: string; Metodo: string; Data: TDateTime; pEscolaId: Integer);
    procedure SaveLogError(LogServerRequest: TLogServerRequest);
    procedure SaveLogServerRequest(LogServerRequest: TLogServerRequest);
    procedure SaveLogCloudMessaging(AData: string; Response: string; MsgError: string; LogServerRequest: TLogServerRequest);
    function GetSQLEscolaId(FieldNameEscolaId: string; Condicao: string; const ARequestFilter: string = ''): string;
    procedure StartRequest(pEscolaId: Integer; pUsuario: TJSONValue);
    procedure EndRequest;
    procedure SetParamsServer(pEscolaId: Integer; pUsuario: TJSONValue);
    procedure SendCloudMessaging(Mensagem: string);
    function GetAlunos(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetAlunos_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetTurmas(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetTurmas_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetResponsaveis(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetResponsaveis_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetFuncionarios(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetFuncionarios_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetConfiguracoes(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetConfiguracoes_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetDeviceUsuario(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetDeviceUsuario_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function SalvarFuncionario(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string = ''): string;
    function SalvarLogError(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string = ''): string;
    function SalvarConfiguracoes(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string = ''): string;
    function SalvarDeviceUsuario(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string = ''): string;
    function GetProcessoAtualizacao(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetProcessoAtualizacao_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetDataSet(pEscolaId: Integer; Nome: string; pUsuario: TJSONValue; UtilizaParamEscolaId: Boolean; Condicoes: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetDataSet_Cache(pEscolaId: Integer; Nome: string; pUsuario: TJSONValue; UtilizaParamEscolaId: Boolean; Condicoes: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
  end;

  TSmAgendaClient = class(TDSAdminRestClient)
  private
    FfdqAgendaBeforePostCommand: TDSRestCommand;
    FDataModuleCreateCommand: TDSRestCommand;
    FfdqAgendaAfterPostCommand: TDSRestCommand;
    FGetAgendaCommand: TDSRestCommand;
    FGetAgendaCommand_Cache: TDSRestCommand;
    FGetAgendaTesteCommand: TDSRestCommand;
    FGetAgendaTesteCommand_Cache: TDSRestCommand;
    FSalvarAgendaCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure fdqAgendaBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure fdqAgendaAfterPost(DataSet: TDataSet);
    function GetAgenda(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; KeysInserts: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetAgenda_Cache(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; KeysInserts: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetAgendaTeste(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; KeysInserts: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetAgendaTeste_Cache(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; KeysInserts: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function SalvarAgenda(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; LDataSetList: TFDJSONDataSets; const ARequestFilter: string = ''): string;
  end;

  IDSRestCachedTFDJSONDataSets = interface(IDSRestCachedObject<TFDJSONDataSets>)
  end;

  TDSRestCachedTFDJSONDataSets = class(TDSRestCachedObject<TFDJSONDataSets>, IDSRestCachedTFDJSONDataSets, IDSRestCachedCommand)
  end;

const
  TSrvServerMetodos_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TSrvServerMetodos_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSrvServerMetodos_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSrvServerMetodos_GetAlunosTeste: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSrvServerMetodos_GetAlunosTeste_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSrvServerMetodos_LoginFuncionario: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'Login'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TSrvServerMetodos_LoginResponsavel: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'Login'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TSrvServerMetodos_ValidarEmailExistenteResponsavel: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Email'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TSrvServerMetodos_ValidarCPFExistenteResponsavel: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'CPF'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TSrvServerMetodos_CriarUsuarioResponsavel: array [0..8] of TDSRestParameterMetaData =
  (
    (Name: 'Nome'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'SobreNome'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Email'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Telefone'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'CPF'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'RG'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Sexo'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSrvServerMetodos_GetAlunos: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'EscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'FuncionarioId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSrvServerMetodos_GetAlunos_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'EscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'FuncionarioId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSrvServerMetodos_GetTurmas: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'EscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'FuncionarioId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSrvServerMetodos_GetTurmas_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'EscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'FuncionarioId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmTeste_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TSmTeste_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmTeste_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmTeste_GetAlunosTeste: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmTeste_GetAlunosTeste_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmEscola_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TSmEscola_LoginFuncionario: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'Login'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmEscola_LoginFuncionario_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'Login'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmResponsavel_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TSmResponsavel_LoginResponsavel: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'Login'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmResponsavel_LoginResponsavel_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'Login'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmResponsavel_ValidarEmailExistenteResponsavel: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Email'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TSmResponsavel_ValidarCPFExistenteResponsavel: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'CPF'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TSmResponsavel_CriarUsuarioResponsavel: array [0..8] of TDSRestParameterMetaData =
  (
    (Name: 'Nome'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'SobreNome'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Email'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Telefone'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'CPF'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'RG'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Sexo'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmResponsavel_SalvarResponsavel: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'LDataSetList'; Direction: 1; DBXType: 37; TypeName: 'TFDJSONDataSets'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmMain_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TSmMain_fdqLogErrorBeforePost: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'DataSet'; Direction: 1; DBXType: 23; TypeName: 'TDataSet')
  );

  TSmMain_ApplicationEventsException: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject'),
    (Name: 'E'; Direction: 1; DBXType: 37; TypeName: 'Exception')
  );

  TSmMain_FDConnectionAfterConnect: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TSmMain_fdqConfiguracoesBeforePost: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'DataSet'; Direction: 1; DBXType: 23; TypeName: 'TDataSet')
  );

  TSmMain_SetLogErrorOld: array [0..6] of TDSRestParameterMetaData =
  (
    (Name: 'MsgError'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Aplicacao'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'UnitNome'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Classe'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Metodo'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Data'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TSmMain_SaveLogError: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'LogServerRequest'; Direction: 1; DBXType: 37; TypeName: 'TLogServerRequest')
  );

  TSmMain_SaveLogServerRequest: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'LogServerRequest'; Direction: 1; DBXType: 37; TypeName: 'TLogServerRequest')
  );

  TSmMain_SaveLogCloudMessaging: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AData'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Response'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'MsgError'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'LogServerRequest'; Direction: 1; DBXType: 37; TypeName: 'TLogServerRequest')
  );

  TSmMain_GetSQLEscolaId: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'FieldNameEscolaId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Condicao'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmMain_StartRequest: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue')
  );

  TSmMain_SetParamsServer: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue')
  );

  TSmMain_SendCloudMessaging: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Mensagem'; Direction: 1; DBXType: 26; TypeName: 'string')
  );

  TSmMain_GetAlunos: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmMain_GetAlunos_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmMain_GetTurmas: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmMain_GetTurmas_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmMain_GetResponsaveis: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmMain_GetResponsaveis_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmMain_GetFuncionarios: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmMain_GetFuncionarios_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmMain_GetConfiguracoes: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmMain_GetConfiguracoes_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmMain_GetDeviceUsuario: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmMain_GetDeviceUsuario_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmMain_SalvarFuncionario: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'LDataSetList'; Direction: 1; DBXType: 37; TypeName: 'TFDJSONDataSets'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmMain_SalvarLogError: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'LDataSetList'; Direction: 1; DBXType: 37; TypeName: 'TFDJSONDataSets'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmMain_SalvarConfiguracoes: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'LDataSetList'; Direction: 1; DBXType: 37; TypeName: 'TFDJSONDataSets'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmMain_SalvarDeviceUsuario: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'LDataSetList'; Direction: 1; DBXType: 37; TypeName: 'TFDJSONDataSets'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSmMain_GetProcessoAtualizacao: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmMain_GetProcessoAtualizacao_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmMain_GetDataSet: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'Nome'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'UtilizaParamEscolaId'; Direction: 1; DBXType: 4; TypeName: 'Boolean'),
    (Name: 'Condicoes'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmMain_GetDataSet_Cache: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'Nome'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'UtilizaParamEscolaId'; Direction: 1; DBXType: 4; TypeName: 'Boolean'),
    (Name: 'Condicoes'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmAgenda_fdqAgendaBeforePost: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'DataSet'; Direction: 1; DBXType: 23; TypeName: 'TDataSet')
  );

  TSmAgenda_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TSmAgenda_fdqAgendaAfterPost: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'DataSet'; Direction: 1; DBXType: 23; TypeName: 'TDataSet')
  );

  TSmAgenda_GetAgenda: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'DtIni'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'DtFim'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'KeysInserts'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmAgenda_GetAgenda_Cache: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'DtIni'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'DtFim'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'KeysInserts'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmAgenda_GetAgendaTeste: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'DtIni'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'DtFim'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'KeysInserts'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSmAgenda_GetAgendaTeste_Cache: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'DtIni'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'DtFim'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'KeysInserts'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSmAgenda_SalvarAgenda: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'pEscolaId'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pUsuario'; Direction: 1; DBXType: 37; TypeName: 'TJSONValue'),
    (Name: 'DtIni'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'DtFim'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'LDataSetList'; Direction: 1; DBXType: 37; TypeName: 'TFDJSONDataSets'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

implementation

procedure TSrvServerMetodosClient.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TSrvServerMetodos."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TSrvServerMetodos_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

function TSrvServerMetodosClient.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TSrvServerMetodos.EchoString';
    FEchoStringCommand.Prepare(TSrvServerMetodos_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TSrvServerMetodosClient.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TSrvServerMetodos.ReverseString';
    FReverseStringCommand.Prepare(TSrvServerMetodos_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TSrvServerMetodosClient.GetAlunosTeste(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetAlunosTesteCommand = nil then
  begin
    FGetAlunosTesteCommand := FConnection.CreateCommand;
    FGetAlunosTesteCommand.RequestType := 'GET';
    FGetAlunosTesteCommand.Text := 'TSrvServerMetodos.GetAlunosTeste';
    FGetAlunosTesteCommand.Prepare(TSrvServerMetodos_GetAlunosTeste);
  end;
  FGetAlunosTesteCommand.Execute(ARequestFilter);
  if not FGetAlunosTesteCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetAlunosTesteCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetAlunosTesteCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetAlunosTesteCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSrvServerMetodosClient.GetAlunosTeste_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetAlunosTesteCommand_Cache = nil then
  begin
    FGetAlunosTesteCommand_Cache := FConnection.CreateCommand;
    FGetAlunosTesteCommand_Cache.RequestType := 'GET';
    FGetAlunosTesteCommand_Cache.Text := 'TSrvServerMetodos.GetAlunosTeste';
    FGetAlunosTesteCommand_Cache.Prepare(TSrvServerMetodos_GetAlunosTeste_Cache);
  end;
  FGetAlunosTesteCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetAlunosTesteCommand_Cache.Parameters[0].Value.GetString);
end;

function TSrvServerMetodosClient.LoginFuncionario(Login: string; Senha: string; const ARequestFilter: string): Boolean;
begin
  if FLoginFuncionarioCommand = nil then
  begin
    FLoginFuncionarioCommand := FConnection.CreateCommand;
    FLoginFuncionarioCommand.RequestType := 'GET';
    FLoginFuncionarioCommand.Text := 'TSrvServerMetodos.LoginFuncionario';
    FLoginFuncionarioCommand.Prepare(TSrvServerMetodos_LoginFuncionario);
  end;
  FLoginFuncionarioCommand.Parameters[0].Value.SetWideString(Login);
  FLoginFuncionarioCommand.Parameters[1].Value.SetWideString(Senha);
  FLoginFuncionarioCommand.Execute(ARequestFilter);
  Result := FLoginFuncionarioCommand.Parameters[2].Value.GetBoolean;
end;

function TSrvServerMetodosClient.LoginResponsavel(Login: string; Senha: string; const ARequestFilter: string): Boolean;
begin
  if FLoginResponsavelCommand = nil then
  begin
    FLoginResponsavelCommand := FConnection.CreateCommand;
    FLoginResponsavelCommand.RequestType := 'GET';
    FLoginResponsavelCommand.Text := 'TSrvServerMetodos.LoginResponsavel';
    FLoginResponsavelCommand.Prepare(TSrvServerMetodos_LoginResponsavel);
  end;
  FLoginResponsavelCommand.Parameters[0].Value.SetWideString(Login);
  FLoginResponsavelCommand.Parameters[1].Value.SetWideString(Senha);
  FLoginResponsavelCommand.Execute(ARequestFilter);
  Result := FLoginResponsavelCommand.Parameters[2].Value.GetBoolean;
end;

function TSrvServerMetodosClient.ValidarEmailExistenteResponsavel(Email: string; const ARequestFilter: string): Boolean;
begin
  if FValidarEmailExistenteResponsavelCommand = nil then
  begin
    FValidarEmailExistenteResponsavelCommand := FConnection.CreateCommand;
    FValidarEmailExistenteResponsavelCommand.RequestType := 'GET';
    FValidarEmailExistenteResponsavelCommand.Text := 'TSrvServerMetodos.ValidarEmailExistenteResponsavel';
    FValidarEmailExistenteResponsavelCommand.Prepare(TSrvServerMetodos_ValidarEmailExistenteResponsavel);
  end;
  FValidarEmailExistenteResponsavelCommand.Parameters[0].Value.SetWideString(Email);
  FValidarEmailExistenteResponsavelCommand.Execute(ARequestFilter);
  Result := FValidarEmailExistenteResponsavelCommand.Parameters[1].Value.GetBoolean;
end;

function TSrvServerMetodosClient.ValidarCPFExistenteResponsavel(CPF: string; const ARequestFilter: string): Boolean;
begin
  if FValidarCPFExistenteResponsavelCommand = nil then
  begin
    FValidarCPFExistenteResponsavelCommand := FConnection.CreateCommand;
    FValidarCPFExistenteResponsavelCommand.RequestType := 'GET';
    FValidarCPFExistenteResponsavelCommand.Text := 'TSrvServerMetodos.ValidarCPFExistenteResponsavel';
    FValidarCPFExistenteResponsavelCommand.Prepare(TSrvServerMetodos_ValidarCPFExistenteResponsavel);
  end;
  FValidarCPFExistenteResponsavelCommand.Parameters[0].Value.SetWideString(CPF);
  FValidarCPFExistenteResponsavelCommand.Execute(ARequestFilter);
  Result := FValidarCPFExistenteResponsavelCommand.Parameters[1].Value.GetBoolean;
end;

function TSrvServerMetodosClient.CriarUsuarioResponsavel(Nome: string; SobreNome: string; Email: string; Senha: string; Telefone: string; CPF: string; RG: string; Sexo: string; const ARequestFilter: string): string;
begin
  if FCriarUsuarioResponsavelCommand = nil then
  begin
    FCriarUsuarioResponsavelCommand := FConnection.CreateCommand;
    FCriarUsuarioResponsavelCommand.RequestType := 'GET';
    FCriarUsuarioResponsavelCommand.Text := 'TSrvServerMetodos.CriarUsuarioResponsavel';
    FCriarUsuarioResponsavelCommand.Prepare(TSrvServerMetodos_CriarUsuarioResponsavel);
  end;
  FCriarUsuarioResponsavelCommand.Parameters[0].Value.SetWideString(Nome);
  FCriarUsuarioResponsavelCommand.Parameters[1].Value.SetWideString(SobreNome);
  FCriarUsuarioResponsavelCommand.Parameters[2].Value.SetWideString(Email);
  FCriarUsuarioResponsavelCommand.Parameters[3].Value.SetWideString(Senha);
  FCriarUsuarioResponsavelCommand.Parameters[4].Value.SetWideString(Telefone);
  FCriarUsuarioResponsavelCommand.Parameters[5].Value.SetWideString(CPF);
  FCriarUsuarioResponsavelCommand.Parameters[6].Value.SetWideString(RG);
  FCriarUsuarioResponsavelCommand.Parameters[7].Value.SetWideString(Sexo);
  FCriarUsuarioResponsavelCommand.Execute(ARequestFilter);
  Result := FCriarUsuarioResponsavelCommand.Parameters[8].Value.GetWideString;
end;

function TSrvServerMetodosClient.GetAlunos(EscolaId: Integer; FuncionarioId: Integer; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetAlunosCommand = nil then
  begin
    FGetAlunosCommand := FConnection.CreateCommand;
    FGetAlunosCommand.RequestType := 'GET';
    FGetAlunosCommand.Text := 'TSrvServerMetodos.GetAlunos';
    FGetAlunosCommand.Prepare(TSrvServerMetodos_GetAlunos);
  end;
  FGetAlunosCommand.Parameters[0].Value.SetInt32(EscolaId);
  FGetAlunosCommand.Parameters[1].Value.SetInt32(FuncionarioId);
  FGetAlunosCommand.Execute(ARequestFilter);
  if not FGetAlunosCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetAlunosCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetAlunosCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetAlunosCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSrvServerMetodosClient.GetAlunos_Cache(EscolaId: Integer; FuncionarioId: Integer; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetAlunosCommand_Cache = nil then
  begin
    FGetAlunosCommand_Cache := FConnection.CreateCommand;
    FGetAlunosCommand_Cache.RequestType := 'GET';
    FGetAlunosCommand_Cache.Text := 'TSrvServerMetodos.GetAlunos';
    FGetAlunosCommand_Cache.Prepare(TSrvServerMetodos_GetAlunos_Cache);
  end;
  FGetAlunosCommand_Cache.Parameters[0].Value.SetInt32(EscolaId);
  FGetAlunosCommand_Cache.Parameters[1].Value.SetInt32(FuncionarioId);
  FGetAlunosCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetAlunosCommand_Cache.Parameters[2].Value.GetString);
end;

function TSrvServerMetodosClient.GetTurmas(EscolaId: Integer; FuncionarioId: Integer; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetTurmasCommand = nil then
  begin
    FGetTurmasCommand := FConnection.CreateCommand;
    FGetTurmasCommand.RequestType := 'GET';
    FGetTurmasCommand.Text := 'TSrvServerMetodos.GetTurmas';
    FGetTurmasCommand.Prepare(TSrvServerMetodos_GetTurmas);
  end;
  FGetTurmasCommand.Parameters[0].Value.SetInt32(EscolaId);
  FGetTurmasCommand.Parameters[1].Value.SetInt32(FuncionarioId);
  FGetTurmasCommand.Execute(ARequestFilter);
  if not FGetTurmasCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetTurmasCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetTurmasCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetTurmasCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSrvServerMetodosClient.GetTurmas_Cache(EscolaId: Integer; FuncionarioId: Integer; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetTurmasCommand_Cache = nil then
  begin
    FGetTurmasCommand_Cache := FConnection.CreateCommand;
    FGetTurmasCommand_Cache.RequestType := 'GET';
    FGetTurmasCommand_Cache.Text := 'TSrvServerMetodos.GetTurmas';
    FGetTurmasCommand_Cache.Prepare(TSrvServerMetodos_GetTurmas_Cache);
  end;
  FGetTurmasCommand_Cache.Parameters[0].Value.SetInt32(EscolaId);
  FGetTurmasCommand_Cache.Parameters[1].Value.SetInt32(FuncionarioId);
  FGetTurmasCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetTurmasCommand_Cache.Parameters[2].Value.GetString);
end;

constructor TSrvServerMetodosClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TSrvServerMetodosClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TSrvServerMetodosClient.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FGetAlunosTesteCommand.DisposeOf;
  FGetAlunosTesteCommand_Cache.DisposeOf;
  FLoginFuncionarioCommand.DisposeOf;
  FLoginResponsavelCommand.DisposeOf;
  FValidarEmailExistenteResponsavelCommand.DisposeOf;
  FValidarCPFExistenteResponsavelCommand.DisposeOf;
  FCriarUsuarioResponsavelCommand.DisposeOf;
  FGetAlunosCommand.DisposeOf;
  FGetAlunosCommand_Cache.DisposeOf;
  FGetTurmasCommand.DisposeOf;
  FGetTurmasCommand_Cache.DisposeOf;
  inherited;
end;

procedure TSmTesteClient.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TSmTeste."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TSmTeste_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

function TSmTesteClient.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TSmTeste.EchoString';
    FEchoStringCommand.Prepare(TSmTeste_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TSmTesteClient.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TSmTeste.ReverseString';
    FReverseStringCommand.Prepare(TSmTeste_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TSmTesteClient.GetAlunosTeste(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetAlunosTesteCommand = nil then
  begin
    FGetAlunosTesteCommand := FConnection.CreateCommand;
    FGetAlunosTesteCommand.RequestType := 'GET';
    FGetAlunosTesteCommand.Text := 'TSmTeste.GetAlunosTeste';
    FGetAlunosTesteCommand.Prepare(TSmTeste_GetAlunosTeste);
  end;
  FGetAlunosTesteCommand.Execute(ARequestFilter);
  if not FGetAlunosTesteCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetAlunosTesteCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetAlunosTesteCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetAlunosTesteCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmTesteClient.GetAlunosTeste_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetAlunosTesteCommand_Cache = nil then
  begin
    FGetAlunosTesteCommand_Cache := FConnection.CreateCommand;
    FGetAlunosTesteCommand_Cache.RequestType := 'GET';
    FGetAlunosTesteCommand_Cache.Text := 'TSmTeste.GetAlunosTeste';
    FGetAlunosTesteCommand_Cache.Prepare(TSmTeste_GetAlunosTeste_Cache);
  end;
  FGetAlunosTesteCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetAlunosTesteCommand_Cache.Parameters[0].Value.GetString);
end;

constructor TSmTesteClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TSmTesteClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TSmTesteClient.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FGetAlunosTesteCommand.DisposeOf;
  FGetAlunosTesteCommand_Cache.DisposeOf;
  inherited;
end;

procedure TSmEscolaClient.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TSmEscola."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TSmEscola_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

function TSmEscolaClient.LoginFuncionario(Login: string; Senha: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FLoginFuncionarioCommand = nil then
  begin
    FLoginFuncionarioCommand := FConnection.CreateCommand;
    FLoginFuncionarioCommand.RequestType := 'GET';
    FLoginFuncionarioCommand.Text := 'TSmEscola.LoginFuncionario';
    FLoginFuncionarioCommand.Prepare(TSmEscola_LoginFuncionario);
  end;
  FLoginFuncionarioCommand.Parameters[0].Value.SetWideString(Login);
  FLoginFuncionarioCommand.Parameters[1].Value.SetWideString(Senha);
  FLoginFuncionarioCommand.Execute(ARequestFilter);
  if not FLoginFuncionarioCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FLoginFuncionarioCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FLoginFuncionarioCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FLoginFuncionarioCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmEscolaClient.LoginFuncionario_Cache(Login: string; Senha: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FLoginFuncionarioCommand_Cache = nil then
  begin
    FLoginFuncionarioCommand_Cache := FConnection.CreateCommand;
    FLoginFuncionarioCommand_Cache.RequestType := 'GET';
    FLoginFuncionarioCommand_Cache.Text := 'TSmEscola.LoginFuncionario';
    FLoginFuncionarioCommand_Cache.Prepare(TSmEscola_LoginFuncionario_Cache);
  end;
  FLoginFuncionarioCommand_Cache.Parameters[0].Value.SetWideString(Login);
  FLoginFuncionarioCommand_Cache.Parameters[1].Value.SetWideString(Senha);
  FLoginFuncionarioCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FLoginFuncionarioCommand_Cache.Parameters[2].Value.GetString);
end;

constructor TSmEscolaClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TSmEscolaClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TSmEscolaClient.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FLoginFuncionarioCommand.DisposeOf;
  FLoginFuncionarioCommand_Cache.DisposeOf;
  inherited;
end;

procedure TSmResponsavelClient.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TSmResponsavel."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TSmResponsavel_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

function TSmResponsavelClient.LoginResponsavel(Login: string; Senha: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FLoginResponsavelCommand = nil then
  begin
    FLoginResponsavelCommand := FConnection.CreateCommand;
    FLoginResponsavelCommand.RequestType := 'GET';
    FLoginResponsavelCommand.Text := 'TSmResponsavel.LoginResponsavel';
    FLoginResponsavelCommand.Prepare(TSmResponsavel_LoginResponsavel);
  end;
  FLoginResponsavelCommand.Parameters[0].Value.SetWideString(Login);
  FLoginResponsavelCommand.Parameters[1].Value.SetWideString(Senha);
  FLoginResponsavelCommand.Execute(ARequestFilter);
  if not FLoginResponsavelCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FLoginResponsavelCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FLoginResponsavelCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FLoginResponsavelCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmResponsavelClient.LoginResponsavel_Cache(Login: string; Senha: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FLoginResponsavelCommand_Cache = nil then
  begin
    FLoginResponsavelCommand_Cache := FConnection.CreateCommand;
    FLoginResponsavelCommand_Cache.RequestType := 'GET';
    FLoginResponsavelCommand_Cache.Text := 'TSmResponsavel.LoginResponsavel';
    FLoginResponsavelCommand_Cache.Prepare(TSmResponsavel_LoginResponsavel_Cache);
  end;
  FLoginResponsavelCommand_Cache.Parameters[0].Value.SetWideString(Login);
  FLoginResponsavelCommand_Cache.Parameters[1].Value.SetWideString(Senha);
  FLoginResponsavelCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FLoginResponsavelCommand_Cache.Parameters[2].Value.GetString);
end;

function TSmResponsavelClient.ValidarEmailExistenteResponsavel(Email: string; const ARequestFilter: string): Boolean;
begin
  if FValidarEmailExistenteResponsavelCommand = nil then
  begin
    FValidarEmailExistenteResponsavelCommand := FConnection.CreateCommand;
    FValidarEmailExistenteResponsavelCommand.RequestType := 'GET';
    FValidarEmailExistenteResponsavelCommand.Text := 'TSmResponsavel.ValidarEmailExistenteResponsavel';
    FValidarEmailExistenteResponsavelCommand.Prepare(TSmResponsavel_ValidarEmailExistenteResponsavel);
  end;
  FValidarEmailExistenteResponsavelCommand.Parameters[0].Value.SetWideString(Email);
  FValidarEmailExistenteResponsavelCommand.Execute(ARequestFilter);
  Result := FValidarEmailExistenteResponsavelCommand.Parameters[1].Value.GetBoolean;
end;

function TSmResponsavelClient.ValidarCPFExistenteResponsavel(CPF: string; const ARequestFilter: string): Boolean;
begin
  if FValidarCPFExistenteResponsavelCommand = nil then
  begin
    FValidarCPFExistenteResponsavelCommand := FConnection.CreateCommand;
    FValidarCPFExistenteResponsavelCommand.RequestType := 'GET';
    FValidarCPFExistenteResponsavelCommand.Text := 'TSmResponsavel.ValidarCPFExistenteResponsavel';
    FValidarCPFExistenteResponsavelCommand.Prepare(TSmResponsavel_ValidarCPFExistenteResponsavel);
  end;
  FValidarCPFExistenteResponsavelCommand.Parameters[0].Value.SetWideString(CPF);
  FValidarCPFExistenteResponsavelCommand.Execute(ARequestFilter);
  Result := FValidarCPFExistenteResponsavelCommand.Parameters[1].Value.GetBoolean;
end;

function TSmResponsavelClient.CriarUsuarioResponsavel(Nome: string; SobreNome: string; Email: string; Senha: string; Telefone: string; CPF: string; RG: string; Sexo: string; const ARequestFilter: string): string;
begin
  if FCriarUsuarioResponsavelCommand = nil then
  begin
    FCriarUsuarioResponsavelCommand := FConnection.CreateCommand;
    FCriarUsuarioResponsavelCommand.RequestType := 'GET';
    FCriarUsuarioResponsavelCommand.Text := 'TSmResponsavel.CriarUsuarioResponsavel';
    FCriarUsuarioResponsavelCommand.Prepare(TSmResponsavel_CriarUsuarioResponsavel);
  end;
  FCriarUsuarioResponsavelCommand.Parameters[0].Value.SetWideString(Nome);
  FCriarUsuarioResponsavelCommand.Parameters[1].Value.SetWideString(SobreNome);
  FCriarUsuarioResponsavelCommand.Parameters[2].Value.SetWideString(Email);
  FCriarUsuarioResponsavelCommand.Parameters[3].Value.SetWideString(Senha);
  FCriarUsuarioResponsavelCommand.Parameters[4].Value.SetWideString(Telefone);
  FCriarUsuarioResponsavelCommand.Parameters[5].Value.SetWideString(CPF);
  FCriarUsuarioResponsavelCommand.Parameters[6].Value.SetWideString(RG);
  FCriarUsuarioResponsavelCommand.Parameters[7].Value.SetWideString(Sexo);
  FCriarUsuarioResponsavelCommand.Execute(ARequestFilter);
  Result := FCriarUsuarioResponsavelCommand.Parameters[8].Value.GetWideString;
end;

function TSmResponsavelClient.SalvarResponsavel(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string): string;
begin
  if FSalvarResponsavelCommand = nil then
  begin
    FSalvarResponsavelCommand := FConnection.CreateCommand;
    FSalvarResponsavelCommand.RequestType := 'POST';
    FSalvarResponsavelCommand.Text := 'TSmResponsavel."SalvarResponsavel"';
    FSalvarResponsavelCommand.Prepare(TSmResponsavel_SalvarResponsavel);
  end;
  FSalvarResponsavelCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FSalvarResponsavelCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  if not Assigned(LDataSetList) then
    FSalvarResponsavelCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSalvarResponsavelCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FSalvarResponsavelCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(LDataSetList), True);
      if FInstanceOwner then
        LDataSetList.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSalvarResponsavelCommand.Execute(ARequestFilter);
  Result := FSalvarResponsavelCommand.Parameters[3].Value.GetWideString;
end;

constructor TSmResponsavelClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TSmResponsavelClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TSmResponsavelClient.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FLoginResponsavelCommand.DisposeOf;
  FLoginResponsavelCommand_Cache.DisposeOf;
  FValidarEmailExistenteResponsavelCommand.DisposeOf;
  FValidarCPFExistenteResponsavelCommand.DisposeOf;
  FCriarUsuarioResponsavelCommand.DisposeOf;
  FSalvarResponsavelCommand.DisposeOf;
  inherited;
end;

procedure TSmMainClient.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TSmMain."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TSmMain_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

procedure TSmMainClient.fdqLogErrorBeforePost(DataSet: TDataSet);
begin
  if FfdqLogErrorBeforePostCommand = nil then
  begin
    FfdqLogErrorBeforePostCommand := FConnection.CreateCommand;
    FfdqLogErrorBeforePostCommand.RequestType := 'POST';
    FfdqLogErrorBeforePostCommand.Text := 'TSmMain."fdqLogErrorBeforePost"';
    FfdqLogErrorBeforePostCommand.Prepare(TSmMain_fdqLogErrorBeforePost);
  end;
  FfdqLogErrorBeforePostCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FfdqLogErrorBeforePostCommand.Execute;
end;

procedure TSmMainClient.ApplicationEventsException(Sender: TObject; E: Exception);
begin
  if FApplicationEventsExceptionCommand = nil then
  begin
    FApplicationEventsExceptionCommand := FConnection.CreateCommand;
    FApplicationEventsExceptionCommand.RequestType := 'POST';
    FApplicationEventsExceptionCommand.Text := 'TSmMain."ApplicationEventsException"';
    FApplicationEventsExceptionCommand.Prepare(TSmMain_ApplicationEventsException);
  end;
  if not Assigned(Sender) then
    FApplicationEventsExceptionCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FApplicationEventsExceptionCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FApplicationEventsExceptionCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(E) then
    FApplicationEventsExceptionCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FApplicationEventsExceptionCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FApplicationEventsExceptionCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(E), True);
      if FInstanceOwner then
        E.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FApplicationEventsExceptionCommand.Execute;
end;

procedure TSmMainClient.FDConnectionAfterConnect(Sender: TObject);
begin
  if FFDConnectionAfterConnectCommand = nil then
  begin
    FFDConnectionAfterConnectCommand := FConnection.CreateCommand;
    FFDConnectionAfterConnectCommand.RequestType := 'POST';
    FFDConnectionAfterConnectCommand.Text := 'TSmMain."FDConnectionAfterConnect"';
    FFDConnectionAfterConnectCommand.Prepare(TSmMain_FDConnectionAfterConnect);
  end;
  if not Assigned(Sender) then
    FFDConnectionAfterConnectCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FFDConnectionAfterConnectCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFDConnectionAfterConnectCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFDConnectionAfterConnectCommand.Execute;
end;

procedure TSmMainClient.fdqConfiguracoesBeforePost(DataSet: TDataSet);
begin
  if FfdqConfiguracoesBeforePostCommand = nil then
  begin
    FfdqConfiguracoesBeforePostCommand := FConnection.CreateCommand;
    FfdqConfiguracoesBeforePostCommand.RequestType := 'POST';
    FfdqConfiguracoesBeforePostCommand.Text := 'TSmMain."fdqConfiguracoesBeforePost"';
    FfdqConfiguracoesBeforePostCommand.Prepare(TSmMain_fdqConfiguracoesBeforePost);
  end;
  FfdqConfiguracoesBeforePostCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FfdqConfiguracoesBeforePostCommand.Execute;
end;

procedure TSmMainClient.SetLogErrorOld(MsgError: string; Aplicacao: string; UnitNome: string; Classe: string; Metodo: string; Data: TDateTime; pEscolaId: Integer);
begin
  if FSetLogErrorOldCommand = nil then
  begin
    FSetLogErrorOldCommand := FConnection.CreateCommand;
    FSetLogErrorOldCommand.RequestType := 'GET';
    FSetLogErrorOldCommand.Text := 'TSmMain.SetLogErrorOld';
    FSetLogErrorOldCommand.Prepare(TSmMain_SetLogErrorOld);
  end;
  FSetLogErrorOldCommand.Parameters[0].Value.SetWideString(MsgError);
  FSetLogErrorOldCommand.Parameters[1].Value.SetWideString(Aplicacao);
  FSetLogErrorOldCommand.Parameters[2].Value.SetWideString(UnitNome);
  FSetLogErrorOldCommand.Parameters[3].Value.SetWideString(Classe);
  FSetLogErrorOldCommand.Parameters[4].Value.SetWideString(Metodo);
  FSetLogErrorOldCommand.Parameters[5].Value.AsDateTime := Data;
  FSetLogErrorOldCommand.Parameters[6].Value.SetInt32(pEscolaId);
  FSetLogErrorOldCommand.Execute;
end;

procedure TSmMainClient.SaveLogError(LogServerRequest: TLogServerRequest);
begin
  if FSaveLogErrorCommand = nil then
  begin
    FSaveLogErrorCommand := FConnection.CreateCommand;
    FSaveLogErrorCommand.RequestType := 'POST';
    FSaveLogErrorCommand.Text := 'TSmMain."SaveLogError"';
    FSaveLogErrorCommand.Prepare(TSmMain_SaveLogError);
  end;
  if not Assigned(LogServerRequest) then
    FSaveLogErrorCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSaveLogErrorCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FSaveLogErrorCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(LogServerRequest), True);
      if FInstanceOwner then
        LogServerRequest.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSaveLogErrorCommand.Execute;
end;

procedure TSmMainClient.SaveLogServerRequest(LogServerRequest: TLogServerRequest);
begin
  if FSaveLogServerRequestCommand = nil then
  begin
    FSaveLogServerRequestCommand := FConnection.CreateCommand;
    FSaveLogServerRequestCommand.RequestType := 'POST';
    FSaveLogServerRequestCommand.Text := 'TSmMain."SaveLogServerRequest"';
    FSaveLogServerRequestCommand.Prepare(TSmMain_SaveLogServerRequest);
  end;
  if not Assigned(LogServerRequest) then
    FSaveLogServerRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSaveLogServerRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FSaveLogServerRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(LogServerRequest), True);
      if FInstanceOwner then
        LogServerRequest.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSaveLogServerRequestCommand.Execute;
end;

procedure TSmMainClient.SaveLogCloudMessaging(AData: string; Response: string; MsgError: string; LogServerRequest: TLogServerRequest);
begin
  if FSaveLogCloudMessagingCommand = nil then
  begin
    FSaveLogCloudMessagingCommand := FConnection.CreateCommand;
    FSaveLogCloudMessagingCommand.RequestType := 'POST';
    FSaveLogCloudMessagingCommand.Text := 'TSmMain."SaveLogCloudMessaging"';
    FSaveLogCloudMessagingCommand.Prepare(TSmMain_SaveLogCloudMessaging);
  end;
  FSaveLogCloudMessagingCommand.Parameters[0].Value.SetWideString(AData);
  FSaveLogCloudMessagingCommand.Parameters[1].Value.SetWideString(Response);
  FSaveLogCloudMessagingCommand.Parameters[2].Value.SetWideString(MsgError);
  if not Assigned(LogServerRequest) then
    FSaveLogCloudMessagingCommand.Parameters[3].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSaveLogCloudMessagingCommand.Parameters[3].ConnectionHandler).GetJSONMarshaler;
    try
      FSaveLogCloudMessagingCommand.Parameters[3].Value.SetJSONValue(FMarshal.Marshal(LogServerRequest), True);
      if FInstanceOwner then
        LogServerRequest.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSaveLogCloudMessagingCommand.Execute;
end;

function TSmMainClient.GetSQLEscolaId(FieldNameEscolaId: string; Condicao: string; const ARequestFilter: string): string;
begin
  if FGetSQLEscolaIdCommand = nil then
  begin
    FGetSQLEscolaIdCommand := FConnection.CreateCommand;
    FGetSQLEscolaIdCommand.RequestType := 'GET';
    FGetSQLEscolaIdCommand.Text := 'TSmMain.GetSQLEscolaId';
    FGetSQLEscolaIdCommand.Prepare(TSmMain_GetSQLEscolaId);
  end;
  FGetSQLEscolaIdCommand.Parameters[0].Value.SetWideString(FieldNameEscolaId);
  FGetSQLEscolaIdCommand.Parameters[1].Value.SetWideString(Condicao);
  FGetSQLEscolaIdCommand.Execute(ARequestFilter);
  Result := FGetSQLEscolaIdCommand.Parameters[2].Value.GetWideString;
end;

procedure TSmMainClient.StartRequest(pEscolaId: Integer; pUsuario: TJSONValue);
begin
  if FStartRequestCommand = nil then
  begin
    FStartRequestCommand := FConnection.CreateCommand;
    FStartRequestCommand.RequestType := 'POST';
    FStartRequestCommand.Text := 'TSmMain."StartRequest"';
    FStartRequestCommand.Prepare(TSmMain_StartRequest);
  end;
  FStartRequestCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FStartRequestCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FStartRequestCommand.Execute;
end;

procedure TSmMainClient.EndRequest;
begin
  if FEndRequestCommand = nil then
  begin
    FEndRequestCommand := FConnection.CreateCommand;
    FEndRequestCommand.RequestType := 'GET';
    FEndRequestCommand.Text := 'TSmMain.EndRequest';
  end;
  FEndRequestCommand.Execute;
end;

procedure TSmMainClient.SetParamsServer(pEscolaId: Integer; pUsuario: TJSONValue);
begin
  if FSetParamsServerCommand = nil then
  begin
    FSetParamsServerCommand := FConnection.CreateCommand;
    FSetParamsServerCommand.RequestType := 'POST';
    FSetParamsServerCommand.Text := 'TSmMain."SetParamsServer"';
    FSetParamsServerCommand.Prepare(TSmMain_SetParamsServer);
  end;
  FSetParamsServerCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FSetParamsServerCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FSetParamsServerCommand.Execute;
end;

procedure TSmMainClient.SendCloudMessaging(Mensagem: string);
begin
  if FSendCloudMessagingCommand = nil then
  begin
    FSendCloudMessagingCommand := FConnection.CreateCommand;
    FSendCloudMessagingCommand.RequestType := 'GET';
    FSendCloudMessagingCommand.Text := 'TSmMain.SendCloudMessaging';
    FSendCloudMessagingCommand.Prepare(TSmMain_SendCloudMessaging);
  end;
  FSendCloudMessagingCommand.Parameters[0].Value.SetWideString(Mensagem);
  FSendCloudMessagingCommand.Execute;
end;

function TSmMainClient.GetAlunos(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetAlunosCommand = nil then
  begin
    FGetAlunosCommand := FConnection.CreateCommand;
    FGetAlunosCommand.RequestType := 'POST';
    FGetAlunosCommand.Text := 'TSmMain."GetAlunos"';
    FGetAlunosCommand.Prepare(TSmMain_GetAlunos);
  end;
  FGetAlunosCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetAlunosCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetAlunosCommand.Execute(ARequestFilter);
  if not FGetAlunosCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetAlunosCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetAlunosCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetAlunosCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmMainClient.GetAlunos_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetAlunosCommand_Cache = nil then
  begin
    FGetAlunosCommand_Cache := FConnection.CreateCommand;
    FGetAlunosCommand_Cache.RequestType := 'POST';
    FGetAlunosCommand_Cache.Text := 'TSmMain."GetAlunos"';
    FGetAlunosCommand_Cache.Prepare(TSmMain_GetAlunos_Cache);
  end;
  FGetAlunosCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetAlunosCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetAlunosCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetAlunosCommand_Cache.Parameters[2].Value.GetString);
end;

function TSmMainClient.GetTurmas(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetTurmasCommand = nil then
  begin
    FGetTurmasCommand := FConnection.CreateCommand;
    FGetTurmasCommand.RequestType := 'POST';
    FGetTurmasCommand.Text := 'TSmMain."GetTurmas"';
    FGetTurmasCommand.Prepare(TSmMain_GetTurmas);
  end;
  FGetTurmasCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetTurmasCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetTurmasCommand.Execute(ARequestFilter);
  if not FGetTurmasCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetTurmasCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetTurmasCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetTurmasCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmMainClient.GetTurmas_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetTurmasCommand_Cache = nil then
  begin
    FGetTurmasCommand_Cache := FConnection.CreateCommand;
    FGetTurmasCommand_Cache.RequestType := 'POST';
    FGetTurmasCommand_Cache.Text := 'TSmMain."GetTurmas"';
    FGetTurmasCommand_Cache.Prepare(TSmMain_GetTurmas_Cache);
  end;
  FGetTurmasCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetTurmasCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetTurmasCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetTurmasCommand_Cache.Parameters[2].Value.GetString);
end;

function TSmMainClient.GetResponsaveis(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetResponsaveisCommand = nil then
  begin
    FGetResponsaveisCommand := FConnection.CreateCommand;
    FGetResponsaveisCommand.RequestType := 'POST';
    FGetResponsaveisCommand.Text := 'TSmMain."GetResponsaveis"';
    FGetResponsaveisCommand.Prepare(TSmMain_GetResponsaveis);
  end;
  FGetResponsaveisCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetResponsaveisCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetResponsaveisCommand.Execute(ARequestFilter);
  if not FGetResponsaveisCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetResponsaveisCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetResponsaveisCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetResponsaveisCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmMainClient.GetResponsaveis_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetResponsaveisCommand_Cache = nil then
  begin
    FGetResponsaveisCommand_Cache := FConnection.CreateCommand;
    FGetResponsaveisCommand_Cache.RequestType := 'POST';
    FGetResponsaveisCommand_Cache.Text := 'TSmMain."GetResponsaveis"';
    FGetResponsaveisCommand_Cache.Prepare(TSmMain_GetResponsaveis_Cache);
  end;
  FGetResponsaveisCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetResponsaveisCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetResponsaveisCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetResponsaveisCommand_Cache.Parameters[2].Value.GetString);
end;

function TSmMainClient.GetFuncionarios(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetFuncionariosCommand = nil then
  begin
    FGetFuncionariosCommand := FConnection.CreateCommand;
    FGetFuncionariosCommand.RequestType := 'POST';
    FGetFuncionariosCommand.Text := 'TSmMain."GetFuncionarios"';
    FGetFuncionariosCommand.Prepare(TSmMain_GetFuncionarios);
  end;
  FGetFuncionariosCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetFuncionariosCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetFuncionariosCommand.Execute(ARequestFilter);
  if not FGetFuncionariosCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetFuncionariosCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetFuncionariosCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetFuncionariosCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmMainClient.GetFuncionarios_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetFuncionariosCommand_Cache = nil then
  begin
    FGetFuncionariosCommand_Cache := FConnection.CreateCommand;
    FGetFuncionariosCommand_Cache.RequestType := 'POST';
    FGetFuncionariosCommand_Cache.Text := 'TSmMain."GetFuncionarios"';
    FGetFuncionariosCommand_Cache.Prepare(TSmMain_GetFuncionarios_Cache);
  end;
  FGetFuncionariosCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetFuncionariosCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetFuncionariosCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetFuncionariosCommand_Cache.Parameters[2].Value.GetString);
end;

function TSmMainClient.GetConfiguracoes(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetConfiguracoesCommand = nil then
  begin
    FGetConfiguracoesCommand := FConnection.CreateCommand;
    FGetConfiguracoesCommand.RequestType := 'POST';
    FGetConfiguracoesCommand.Text := 'TSmMain."GetConfiguracoes"';
    FGetConfiguracoesCommand.Prepare(TSmMain_GetConfiguracoes);
  end;
  FGetConfiguracoesCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetConfiguracoesCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetConfiguracoesCommand.Execute(ARequestFilter);
  if not FGetConfiguracoesCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetConfiguracoesCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetConfiguracoesCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetConfiguracoesCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmMainClient.GetConfiguracoes_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetConfiguracoesCommand_Cache = nil then
  begin
    FGetConfiguracoesCommand_Cache := FConnection.CreateCommand;
    FGetConfiguracoesCommand_Cache.RequestType := 'POST';
    FGetConfiguracoesCommand_Cache.Text := 'TSmMain."GetConfiguracoes"';
    FGetConfiguracoesCommand_Cache.Prepare(TSmMain_GetConfiguracoes_Cache);
  end;
  FGetConfiguracoesCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetConfiguracoesCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetConfiguracoesCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetConfiguracoesCommand_Cache.Parameters[2].Value.GetString);
end;

function TSmMainClient.GetDeviceUsuario(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetDeviceUsuarioCommand = nil then
  begin
    FGetDeviceUsuarioCommand := FConnection.CreateCommand;
    FGetDeviceUsuarioCommand.RequestType := 'POST';
    FGetDeviceUsuarioCommand.Text := 'TSmMain."GetDeviceUsuario"';
    FGetDeviceUsuarioCommand.Prepare(TSmMain_GetDeviceUsuario);
  end;
  FGetDeviceUsuarioCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetDeviceUsuarioCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetDeviceUsuarioCommand.Execute(ARequestFilter);
  if not FGetDeviceUsuarioCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetDeviceUsuarioCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetDeviceUsuarioCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetDeviceUsuarioCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmMainClient.GetDeviceUsuario_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetDeviceUsuarioCommand_Cache = nil then
  begin
    FGetDeviceUsuarioCommand_Cache := FConnection.CreateCommand;
    FGetDeviceUsuarioCommand_Cache.RequestType := 'POST';
    FGetDeviceUsuarioCommand_Cache.Text := 'TSmMain."GetDeviceUsuario"';
    FGetDeviceUsuarioCommand_Cache.Prepare(TSmMain_GetDeviceUsuario_Cache);
  end;
  FGetDeviceUsuarioCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetDeviceUsuarioCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetDeviceUsuarioCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetDeviceUsuarioCommand_Cache.Parameters[2].Value.GetString);
end;

function TSmMainClient.SalvarFuncionario(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string): string;
begin
  if FSalvarFuncionarioCommand = nil then
  begin
    FSalvarFuncionarioCommand := FConnection.CreateCommand;
    FSalvarFuncionarioCommand.RequestType := 'POST';
    FSalvarFuncionarioCommand.Text := 'TSmMain."SalvarFuncionario"';
    FSalvarFuncionarioCommand.Prepare(TSmMain_SalvarFuncionario);
  end;
  FSalvarFuncionarioCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FSalvarFuncionarioCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  if not Assigned(LDataSetList) then
    FSalvarFuncionarioCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSalvarFuncionarioCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FSalvarFuncionarioCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(LDataSetList), True);
      if FInstanceOwner then
        LDataSetList.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSalvarFuncionarioCommand.Execute(ARequestFilter);
  Result := FSalvarFuncionarioCommand.Parameters[3].Value.GetWideString;
end;

function TSmMainClient.SalvarLogError(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string): string;
begin
  if FSalvarLogErrorCommand = nil then
  begin
    FSalvarLogErrorCommand := FConnection.CreateCommand;
    FSalvarLogErrorCommand.RequestType := 'POST';
    FSalvarLogErrorCommand.Text := 'TSmMain."SalvarLogError"';
    FSalvarLogErrorCommand.Prepare(TSmMain_SalvarLogError);
  end;
  FSalvarLogErrorCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FSalvarLogErrorCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  if not Assigned(LDataSetList) then
    FSalvarLogErrorCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSalvarLogErrorCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FSalvarLogErrorCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(LDataSetList), True);
      if FInstanceOwner then
        LDataSetList.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSalvarLogErrorCommand.Execute(ARequestFilter);
  Result := FSalvarLogErrorCommand.Parameters[3].Value.GetWideString;
end;

function TSmMainClient.SalvarConfiguracoes(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string): string;
begin
  if FSalvarConfiguracoesCommand = nil then
  begin
    FSalvarConfiguracoesCommand := FConnection.CreateCommand;
    FSalvarConfiguracoesCommand.RequestType := 'POST';
    FSalvarConfiguracoesCommand.Text := 'TSmMain."SalvarConfiguracoes"';
    FSalvarConfiguracoesCommand.Prepare(TSmMain_SalvarConfiguracoes);
  end;
  FSalvarConfiguracoesCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FSalvarConfiguracoesCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  if not Assigned(LDataSetList) then
    FSalvarConfiguracoesCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSalvarConfiguracoesCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FSalvarConfiguracoesCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(LDataSetList), True);
      if FInstanceOwner then
        LDataSetList.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSalvarConfiguracoesCommand.Execute(ARequestFilter);
  Result := FSalvarConfiguracoesCommand.Parameters[3].Value.GetWideString;
end;

function TSmMainClient.SalvarDeviceUsuario(pEscolaId: Integer; pUsuario: TJSONValue; LDataSetList: TFDJSONDataSets; const ARequestFilter: string): string;
begin
  if FSalvarDeviceUsuarioCommand = nil then
  begin
    FSalvarDeviceUsuarioCommand := FConnection.CreateCommand;
    FSalvarDeviceUsuarioCommand.RequestType := 'POST';
    FSalvarDeviceUsuarioCommand.Text := 'TSmMain."SalvarDeviceUsuario"';
    FSalvarDeviceUsuarioCommand.Prepare(TSmMain_SalvarDeviceUsuario);
  end;
  FSalvarDeviceUsuarioCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FSalvarDeviceUsuarioCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  if not Assigned(LDataSetList) then
    FSalvarDeviceUsuarioCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSalvarDeviceUsuarioCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FSalvarDeviceUsuarioCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(LDataSetList), True);
      if FInstanceOwner then
        LDataSetList.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSalvarDeviceUsuarioCommand.Execute(ARequestFilter);
  Result := FSalvarDeviceUsuarioCommand.Parameters[3].Value.GetWideString;
end;

function TSmMainClient.GetProcessoAtualizacao(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetProcessoAtualizacaoCommand = nil then
  begin
    FGetProcessoAtualizacaoCommand := FConnection.CreateCommand;
    FGetProcessoAtualizacaoCommand.RequestType := 'POST';
    FGetProcessoAtualizacaoCommand.Text := 'TSmMain."GetProcessoAtualizacao"';
    FGetProcessoAtualizacaoCommand.Prepare(TSmMain_GetProcessoAtualizacao);
  end;
  FGetProcessoAtualizacaoCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetProcessoAtualizacaoCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetProcessoAtualizacaoCommand.Execute(ARequestFilter);
  if not FGetProcessoAtualizacaoCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetProcessoAtualizacaoCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetProcessoAtualizacaoCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetProcessoAtualizacaoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmMainClient.GetProcessoAtualizacao_Cache(pEscolaId: Integer; pUsuario: TJSONValue; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetProcessoAtualizacaoCommand_Cache = nil then
  begin
    FGetProcessoAtualizacaoCommand_Cache := FConnection.CreateCommand;
    FGetProcessoAtualizacaoCommand_Cache.RequestType := 'POST';
    FGetProcessoAtualizacaoCommand_Cache.Text := 'TSmMain."GetProcessoAtualizacao"';
    FGetProcessoAtualizacaoCommand_Cache.Prepare(TSmMain_GetProcessoAtualizacao_Cache);
  end;
  FGetProcessoAtualizacaoCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetProcessoAtualizacaoCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetProcessoAtualizacaoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetProcessoAtualizacaoCommand_Cache.Parameters[2].Value.GetString);
end;

function TSmMainClient.GetDataSet(pEscolaId: Integer; Nome: string; pUsuario: TJSONValue; UtilizaParamEscolaId: Boolean; Condicoes: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetDataSetCommand = nil then
  begin
    FGetDataSetCommand := FConnection.CreateCommand;
    FGetDataSetCommand.RequestType := 'POST';
    FGetDataSetCommand.Text := 'TSmMain."GetDataSet"';
    FGetDataSetCommand.Prepare(TSmMain_GetDataSet);
  end;
  FGetDataSetCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetDataSetCommand.Parameters[1].Value.SetWideString(Nome);
  FGetDataSetCommand.Parameters[2].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetDataSetCommand.Parameters[3].Value.SetBoolean(UtilizaParamEscolaId);
  FGetDataSetCommand.Parameters[4].Value.SetWideString(Condicoes);
  FGetDataSetCommand.Execute(ARequestFilter);
  if not FGetDataSetCommand.Parameters[5].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetDataSetCommand.Parameters[5].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetDataSetCommand.Parameters[5].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetDataSetCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmMainClient.GetDataSet_Cache(pEscolaId: Integer; Nome: string; pUsuario: TJSONValue; UtilizaParamEscolaId: Boolean; Condicoes: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetDataSetCommand_Cache = nil then
  begin
    FGetDataSetCommand_Cache := FConnection.CreateCommand;
    FGetDataSetCommand_Cache.RequestType := 'POST';
    FGetDataSetCommand_Cache.Text := 'TSmMain."GetDataSet"';
    FGetDataSetCommand_Cache.Prepare(TSmMain_GetDataSet_Cache);
  end;
  FGetDataSetCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetDataSetCommand_Cache.Parameters[1].Value.SetWideString(Nome);
  FGetDataSetCommand_Cache.Parameters[2].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetDataSetCommand_Cache.Parameters[3].Value.SetBoolean(UtilizaParamEscolaId);
  FGetDataSetCommand_Cache.Parameters[4].Value.SetWideString(Condicoes);
  FGetDataSetCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetDataSetCommand_Cache.Parameters[5].Value.GetString);
end;

constructor TSmMainClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TSmMainClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TSmMainClient.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FfdqLogErrorBeforePostCommand.DisposeOf;
  FApplicationEventsExceptionCommand.DisposeOf;
  FFDConnectionAfterConnectCommand.DisposeOf;
  FfdqConfiguracoesBeforePostCommand.DisposeOf;
  FSetLogErrorOldCommand.DisposeOf;
  FSaveLogErrorCommand.DisposeOf;
  FSaveLogServerRequestCommand.DisposeOf;
  FSaveLogCloudMessagingCommand.DisposeOf;
  FGetSQLEscolaIdCommand.DisposeOf;
  FStartRequestCommand.DisposeOf;
  FEndRequestCommand.DisposeOf;
  FSetParamsServerCommand.DisposeOf;
  FSendCloudMessagingCommand.DisposeOf;
  FGetAlunosCommand.DisposeOf;
  FGetAlunosCommand_Cache.DisposeOf;
  FGetTurmasCommand.DisposeOf;
  FGetTurmasCommand_Cache.DisposeOf;
  FGetResponsaveisCommand.DisposeOf;
  FGetResponsaveisCommand_Cache.DisposeOf;
  FGetFuncionariosCommand.DisposeOf;
  FGetFuncionariosCommand_Cache.DisposeOf;
  FGetConfiguracoesCommand.DisposeOf;
  FGetConfiguracoesCommand_Cache.DisposeOf;
  FGetDeviceUsuarioCommand.DisposeOf;
  FGetDeviceUsuarioCommand_Cache.DisposeOf;
  FSalvarFuncionarioCommand.DisposeOf;
  FSalvarLogErrorCommand.DisposeOf;
  FSalvarConfiguracoesCommand.DisposeOf;
  FSalvarDeviceUsuarioCommand.DisposeOf;
  FGetProcessoAtualizacaoCommand.DisposeOf;
  FGetProcessoAtualizacaoCommand_Cache.DisposeOf;
  FGetDataSetCommand.DisposeOf;
  FGetDataSetCommand_Cache.DisposeOf;
  inherited;
end;

procedure TSmAgendaClient.fdqAgendaBeforePost(DataSet: TDataSet);
begin
  if FfdqAgendaBeforePostCommand = nil then
  begin
    FfdqAgendaBeforePostCommand := FConnection.CreateCommand;
    FfdqAgendaBeforePostCommand.RequestType := 'POST';
    FfdqAgendaBeforePostCommand.Text := 'TSmAgenda."fdqAgendaBeforePost"';
    FfdqAgendaBeforePostCommand.Prepare(TSmAgenda_fdqAgendaBeforePost);
  end;
  FfdqAgendaBeforePostCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FfdqAgendaBeforePostCommand.Execute;
end;

procedure TSmAgendaClient.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TSmAgenda."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TSmAgenda_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

procedure TSmAgendaClient.fdqAgendaAfterPost(DataSet: TDataSet);
begin
  if FfdqAgendaAfterPostCommand = nil then
  begin
    FfdqAgendaAfterPostCommand := FConnection.CreateCommand;
    FfdqAgendaAfterPostCommand.RequestType := 'POST';
    FfdqAgendaAfterPostCommand.Text := 'TSmAgenda."fdqAgendaAfterPost"';
    FfdqAgendaAfterPostCommand.Prepare(TSmAgenda_fdqAgendaAfterPost);
  end;
  FfdqAgendaAfterPostCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FfdqAgendaAfterPostCommand.Execute;
end;

function TSmAgendaClient.GetAgenda(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; KeysInserts: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetAgendaCommand = nil then
  begin
    FGetAgendaCommand := FConnection.CreateCommand;
    FGetAgendaCommand.RequestType := 'POST';
    FGetAgendaCommand.Text := 'TSmAgenda."GetAgenda"';
    FGetAgendaCommand.Prepare(TSmAgenda_GetAgenda);
  end;
  FGetAgendaCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetAgendaCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetAgendaCommand.Parameters[2].Value.AsDateTime := DtIni;
  FGetAgendaCommand.Parameters[3].Value.AsDateTime := DtFim;
  FGetAgendaCommand.Parameters[4].Value.SetWideString(KeysInserts);
  FGetAgendaCommand.Execute(ARequestFilter);
  if not FGetAgendaCommand.Parameters[5].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetAgendaCommand.Parameters[5].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetAgendaCommand.Parameters[5].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetAgendaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmAgendaClient.GetAgenda_Cache(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; KeysInserts: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetAgendaCommand_Cache = nil then
  begin
    FGetAgendaCommand_Cache := FConnection.CreateCommand;
    FGetAgendaCommand_Cache.RequestType := 'POST';
    FGetAgendaCommand_Cache.Text := 'TSmAgenda."GetAgenda"';
    FGetAgendaCommand_Cache.Prepare(TSmAgenda_GetAgenda_Cache);
  end;
  FGetAgendaCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetAgendaCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetAgendaCommand_Cache.Parameters[2].Value.AsDateTime := DtIni;
  FGetAgendaCommand_Cache.Parameters[3].Value.AsDateTime := DtFim;
  FGetAgendaCommand_Cache.Parameters[4].Value.SetWideString(KeysInserts);
  FGetAgendaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetAgendaCommand_Cache.Parameters[5].Value.GetString);
end;

function TSmAgendaClient.GetAgendaTeste(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; KeysInserts: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetAgendaTesteCommand = nil then
  begin
    FGetAgendaTesteCommand := FConnection.CreateCommand;
    FGetAgendaTesteCommand.RequestType := 'POST';
    FGetAgendaTesteCommand.Text := 'TSmAgenda."GetAgendaTeste"';
    FGetAgendaTesteCommand.Prepare(TSmAgenda_GetAgendaTeste);
  end;
  FGetAgendaTesteCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FGetAgendaTesteCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetAgendaTesteCommand.Parameters[2].Value.AsDateTime := DtIni;
  FGetAgendaTesteCommand.Parameters[3].Value.AsDateTime := DtFim;
  FGetAgendaTesteCommand.Parameters[4].Value.SetWideString(KeysInserts);
  FGetAgendaTesteCommand.Execute(ARequestFilter);
  if not FGetAgendaTesteCommand.Parameters[5].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetAgendaTesteCommand.Parameters[5].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetAgendaTesteCommand.Parameters[5].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetAgendaTesteCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSmAgendaClient.GetAgendaTeste_Cache(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; KeysInserts: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetAgendaTesteCommand_Cache = nil then
  begin
    FGetAgendaTesteCommand_Cache := FConnection.CreateCommand;
    FGetAgendaTesteCommand_Cache.RequestType := 'POST';
    FGetAgendaTesteCommand_Cache.Text := 'TSmAgenda."GetAgendaTeste"';
    FGetAgendaTesteCommand_Cache.Prepare(TSmAgenda_GetAgendaTeste_Cache);
  end;
  FGetAgendaTesteCommand_Cache.Parameters[0].Value.SetInt32(pEscolaId);
  FGetAgendaTesteCommand_Cache.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FGetAgendaTesteCommand_Cache.Parameters[2].Value.AsDateTime := DtIni;
  FGetAgendaTesteCommand_Cache.Parameters[3].Value.AsDateTime := DtFim;
  FGetAgendaTesteCommand_Cache.Parameters[4].Value.SetWideString(KeysInserts);
  FGetAgendaTesteCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetAgendaTesteCommand_Cache.Parameters[5].Value.GetString);
end;

function TSmAgendaClient.SalvarAgenda(pEscolaId: Integer; pUsuario: TJSONValue; DtIni: TDateTime; DtFim: TDateTime; LDataSetList: TFDJSONDataSets; const ARequestFilter: string): string;
begin
  if FSalvarAgendaCommand = nil then
  begin
    FSalvarAgendaCommand := FConnection.CreateCommand;
    FSalvarAgendaCommand.RequestType := 'POST';
    FSalvarAgendaCommand.Text := 'TSmAgenda."SalvarAgenda"';
    FSalvarAgendaCommand.Prepare(TSmAgenda_SalvarAgenda);
  end;
  FSalvarAgendaCommand.Parameters[0].Value.SetInt32(pEscolaId);
  FSalvarAgendaCommand.Parameters[1].Value.SetJSONValue(pUsuario, FInstanceOwner);
  FSalvarAgendaCommand.Parameters[2].Value.AsDateTime := DtIni;
  FSalvarAgendaCommand.Parameters[3].Value.AsDateTime := DtFim;
  if not Assigned(LDataSetList) then
    FSalvarAgendaCommand.Parameters[4].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSalvarAgendaCommand.Parameters[4].ConnectionHandler).GetJSONMarshaler;
    try
      FSalvarAgendaCommand.Parameters[4].Value.SetJSONValue(FMarshal.Marshal(LDataSetList), True);
      if FInstanceOwner then
        LDataSetList.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSalvarAgendaCommand.Execute(ARequestFilter);
  Result := FSalvarAgendaCommand.Parameters[5].Value.GetWideString;
end;

constructor TSmAgendaClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TSmAgendaClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TSmAgendaClient.Destroy;
begin
  FfdqAgendaBeforePostCommand.DisposeOf;
  FDataModuleCreateCommand.DisposeOf;
  FfdqAgendaAfterPostCommand.DisposeOf;
  FGetAgendaCommand.DisposeOf;
  FGetAgendaCommand_Cache.DisposeOf;
  FGetAgendaTesteCommand.DisposeOf;
  FGetAgendaTesteCommand_Cache.DisposeOf;
  FSalvarAgendaCommand.DisposeOf;
  inherited;
end;

end.

