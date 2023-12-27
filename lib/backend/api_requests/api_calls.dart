import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UserTokenCall {
  static Future<ApiCallResponse> call({
    dynamic? tokenJson,
  }) async {
    final token = _serializeJson(tokenJson, true);
    final ffApiRequestBody = '''
${token}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Token',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/gettoken',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic atmIDDip(dynamic response) => getJsonField(
        response,
        r'''$..atmId''',
      );
  static dynamic gradeDip(dynamic response) => getJsonField(
        response,
        r'''$..grade''',
      );
}

class UserTokenMainCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    int? sessionId,
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userName}",
  "password": "${userName}",
  "sessionID": "000",
  "requestTimestamp": "2023-05-25 17:24:44",
  "requestType": "GetToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Token Main',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/gettoken',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic atmIDDip(dynamic response) => getJsonField(
        response,
        r'''$..atmId''',
      );
  static dynamic gradeDip(dynamic response) => getJsonField(
        response,
        r'''$..grade''',
      );
}

class ProfileCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "sessionID": "4456",
  "requestTimestamp": "2023-05-25 17:24:44",
  "requestType": "getUserProfileDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Profile',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/profile/profiledetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DashboardCopyCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "sessionID": "4456",
  "requestTimestamp": "2023-05-25 17:24:44",
  "requestType": "GetDashbordData"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Copy',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/getdashborddata',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FilterCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "sessionID": "4456",
  "requestTimestamp": "2023-05-25 17:24:44",
  "requestType": "GetFilterData"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Filter',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/masterfilterdata',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransectionDipCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "dipCount": 1,
  "requestType": "GetTransactionDipAtmData",
  "requestTimeStamp": "2023-05-25 10:56:35",
  "sessionId": "3567"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TransectionDip',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/atm/transaction/dip',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dipData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? dipATMID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].atmId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dipGrade(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? dipBank(dynamic response) => getJsonField(
        response,
        r'''$.data[:].bank''',
        true,
      ) as List?;
  static List<String>? dipLocation(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? dipTransaction(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].transactionTrend''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? dipUptime(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].uptimeTrend''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? dipDowntime(dynamic response) => getJsonField(
        response,
        r'''$.data[:].downtime''',
        true,
      ) as List?;
  static List<String>? dipReason(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class MachineDownCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "dipCount": 1,
  "requestType": "GetTransactionDownAtmData",
  "requestTimeStamp": "2023-05-25 10:56:35",
  "sessionId": "3567"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Machine Down',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/atm/down',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List? atmID(dynamic response) => getJsonField(
        response,
        r'''$.data[:].atmId''',
        true,
      ) as List?;
  static List? grade(dynamic response) => getJsonField(
        response,
        r'''$.data[:].grade''',
        true,
      ) as List?;
  static List? bank(dynamic response) => getJsonField(
        response,
        r'''$.data[:].bank''',
        true,
      ) as List?;
  static List? location(dynamic response) => getJsonField(
        response,
        r'''$.data[:].location''',
        true,
      ) as List?;
  static List? transactionTrend(dynamic response) => getJsonField(
        response,
        r'''$.data[:].transactionTrend''',
        true,
      ) as List?;
  static List? uptimeTrend(dynamic response) => getJsonField(
        response,
        r'''$.data[:].uptimeTrend''',
        true,
      ) as List?;
  static List? downTime(dynamic response) => getJsonField(
        response,
        r'''$.data[:].downtime''',
        true,
      ) as List?;
  static List? reason(dynamic response) => getJsonField(
        response,
        r'''$.data[:].reason''',
        true,
      ) as List?;
}

class MachineDownUATCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "dipCount": 1,
  "requestType": "GetTransactionDownAtmData",
  "requestTimeStamp": "2023-05-25 10:56:35",
  "sessionId": "3567"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Machine Down UAT',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/atm/down',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? atmID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].atmId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? grade(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? bank(dynamic response) => getJsonField(
        response,
        r'''$.data[:].bank''',
        true,
      ) as List?;
  static List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? transactionTrend(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].transactionTrend''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? uptimeTrend(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].uptimeTrend''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? downTime(dynamic response) => getJsonField(
        response,
        r'''$.data[:].downtime''',
        true,
      ) as List?;
  static List<String>? reason(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AllAtmCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "requestType": "GetAllAssignedATMDetails",
  "requestTimeStamp": "2023-05-25 10:56:35",
  "sessionId": "3567"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ALL ATM',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/all/atmdetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LatestBankDataCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "requestType": "GetLastUpdatedBankData",
  "requestTimeStamp": "2023-05-25 10:56:35",
  "sessionId": "3567"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Latest Bank Data',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/lastupdatedbankdata',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ATMDetailsCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
    String? atmId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "token": "${token}",
  "atmId": "${atmId}",
  "requestType": "GetAtmDetails",
  "requestTimeStamp": "2023-05-25 10:56:35",
  "sessionId": "3567"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ATM Details',
      apiUrl: 'https://ftweb.hitachi-payments.com:8443/getatmdetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FieldTrakLoginCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_name": "${userName}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Field Trak Login',
      apiUrl:
          'https://fieldtrak.hitachi-payments.com/FieldTrak2/API/v2/ValidateLogin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ChampLoginCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userName": "${userName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Champ Login ',
      apiUrl:
          'https://atmchamp.hitachi-payments.com/ATMChamp_api/Champ/User/ftlogin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
