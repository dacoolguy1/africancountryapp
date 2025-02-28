class AppException implements Exception {
  final String message;
  final String? prefix;

  AppException({required this.message, this.prefix});

  @override
  String toString() {
    return "$prefix$message";
  }
}

class NetworkException extends AppException {
  NetworkException({required String message})
      : super(message: message, prefix: "Network Error: ");
}

class BadRequestException extends AppException {
  BadRequestException({required String message})
      : super(message: message, prefix: "Bad Request: ");
}

class UnauthorizedException extends AppException {
  UnauthorizedException({required String message})
      : super(message: message, prefix: "Unauthorized: ");
}

class NotFoundException extends AppException {
  NotFoundException({required String message})
      : super(message: message, prefix: "Not Found: ");
}

class ServerException extends AppException {
  ServerException({required String message})
      : super(message: message, prefix: "Server Error: ");
}

class CacheException extends AppException {
  CacheException({required String message})
      : super(message: message, prefix: "Cache Error: ");
}
