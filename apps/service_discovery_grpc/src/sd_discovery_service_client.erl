%%%-------------------------------------------------------------------
%% @doc Client module for grpc service sd.DiscoveryService.
%% @end
%%%-------------------------------------------------------------------

%% this module was generated on 2019-06-23T19:55:29+00:00 and should not be modified manually

-module(sd_discovery_service_client).

-compile(export_all).
-compile(nowarn_export_all).

-include_lib("grpcbox/include/grpcbox.hrl").

-define(is_ctx(Ctx), is_tuple(Ctx) andalso element(1, Ctx) =:= ctx).

-define(SERVICE, 'sd.DiscoveryService').
-define(PROTO_MODULE, 'sdg_discovery_pb').
-define(MARSHAL_FUN(T), fun(I) -> ?PROTO_MODULE:encode_msg(I, T) end).
-define(UNMARSHAL_FUN(T), fun(I) -> ?PROTO_MODULE:decode_msg(I, T) end).
-define(DEF(Input, Output, MessageType), #grpcbox_def{service=?SERVICE,
                                                      message_type=MessageType,
                                                      marshal_fun=?MARSHAL_FUN(Input),
                                                      unmarshal_fun=?UNMARSHAL_FUN(Output)}).

%% @doc Unary RPC
-spec get_service(sdg_discovery_pb:get_service_request()) ->
    {ok, sdg_discovery_pb:get_service_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
get_service(Input) ->
    get_service(ctx:new(), Input, #{}).

-spec get_service(ctx:t() | sdg_discovery_pb:get_service_request(), sdg_discovery_pb:get_service_request() | grpcbox_client:options()) ->
    {ok, sdg_discovery_pb:get_service_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
get_service(Ctx, Input) when ?is_ctx(Ctx) ->
    get_service(Ctx, Input, #{});
get_service(Input, Options) ->
    get_service(ctx:new(), Input, Options).

-spec get_service(ctx:t(), sdg_discovery_pb:get_service_request(), grpcbox_client:options()) ->
    {ok, sdg_discovery_pb:get_service_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
get_service(Ctx, Input, Options) ->
    grpcbox_client:unary(Ctx, <<"/sd.DiscoveryService/GetService">>, Input, ?DEF(get_service_request, get_service_response, <<"sd.GetServiceRequest">>), Options).

%% @doc Unary RPC
-spec list_services(sdg_discovery_pb:list_services_request()) ->
    {ok, sdg_discovery_pb:list_services_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
list_services(Input) ->
    list_services(ctx:new(), Input, #{}).

-spec list_services(ctx:t() | sdg_discovery_pb:list_services_request(), sdg_discovery_pb:list_services_request() | grpcbox_client:options()) ->
    {ok, sdg_discovery_pb:list_services_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
list_services(Ctx, Input) when ?is_ctx(Ctx) ->
    list_services(Ctx, Input, #{});
list_services(Input, Options) ->
    list_services(ctx:new(), Input, Options).

-spec list_services(ctx:t(), sdg_discovery_pb:list_services_request(), grpcbox_client:options()) ->
    {ok, sdg_discovery_pb:list_services_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
list_services(Ctx, Input, Options) ->
    grpcbox_client:unary(Ctx, <<"/sd.DiscoveryService/ListServices">>, Input, ?DEF(list_services_request, list_services_response, <<"sd.ListServicesRequest">>), Options).

%% @doc Unary RPC
-spec register_service(sdg_discovery_pb:register_service_request()) ->
    {ok, sdg_discovery_pb:register_service_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
register_service(Input) ->
    register_service(ctx:new(), Input, #{}).

-spec register_service(ctx:t() | sdg_discovery_pb:register_service_request(), sdg_discovery_pb:register_service_request() | grpcbox_client:options()) ->
    {ok, sdg_discovery_pb:register_service_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
register_service(Ctx, Input) when ?is_ctx(Ctx) ->
    register_service(Ctx, Input, #{});
register_service(Input, Options) ->
    register_service(ctx:new(), Input, Options).

-spec register_service(ctx:t(), sdg_discovery_pb:register_service_request(), grpcbox_client:options()) ->
    {ok, sdg_discovery_pb:register_service_response(), grpcbox:metadata()} | grpcbox_stream:grpc_error_response().
register_service(Ctx, Input, Options) ->
    grpcbox_client:unary(Ctx, <<"/sd.DiscoveryService/RegisterService">>, Input, ?DEF(register_service_request, register_service_response, <<"sd.RegisterServiceRequest">>), Options).

