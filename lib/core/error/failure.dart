import 'package:dio/dio.dart';
abstract class Faliure {
  final String message;
  Faliure(this.message);
}
class ServerFaliure extends Faliure {
  ServerFaliure(super.message);
  factory ServerFaliure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection time out with api server');
      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send time out with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure('Recived time out with api server');
      case DioExceptionType.badCertificate:
        return ServerFaliure('badCertificate with api server');
      case DioExceptionType.cancel:
        return ServerFaliure('Request to api server was canceld');
      case DioExceptionType.connectionError:
        return ServerFaliure('No Internet connection');
      case DioExceptionType.unknown:
        return ServerFaliure('Opps there was an error, please try again later');
      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponse(
            e.response!.statusCode, e.response!.data);
    }
  }
  factory ServerFaliure.fromResponse(int? statusCode, dynamic response) {
    // we need to look at the api we are working with and get the errors e.g 404 error etx ...
    if (statusCode == 404) {
      return ServerFaliure(
          'Your request was not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFaliure(
        'There is a problem with the server, please try again later',
      );
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure(
        response['error']['message'],
      );
    } else {
      return ServerFaliure('There was an error, please try again');
    }
  }
}
