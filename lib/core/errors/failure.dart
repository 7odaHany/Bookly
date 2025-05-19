import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.data, e.response!.statusCode!);
      case DioExceptionType.cancel:
        return ServerFailure('Request Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error');
      default:
        return ServerFailure('Unknown Error: ${e.message}');
    }
  }

  factory ServerFailure.fromResponse(dynamic response, int statusCode) {
    if (statusCode == 404) {
      return ServerFailure('your request was not found , Please try again');
    } else if (statusCode == 500) {
      return ServerFailure('there was an error on the server');
    } else if (statusCode == 401 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message'] ?? 'Unauthorized');
    } else {
      return ServerFailure('there was an error , Please try again');
    }
  }
}
