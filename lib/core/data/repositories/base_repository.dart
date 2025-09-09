import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:osu_companion/api/dto/error_response/error_response_dto.dart';
import 'package:osu_companion/core/domain/entities/failure/failure.dart';
import 'package:osu_companion/core/domain/entities/failure/network_failure.dart';
import 'package:osu_companion/core/domain/entities/result/result.dart';

typedef RequestOperation<T> = Future<Result<T, Failure>>;
typedef RequestOperationCallback<T> = RequestOperation<T> Function();

/// Базовый класс для всех репозиториев в приложении.
abstract base class BaseRepository {
  final Logger logger;

  const BaseRepository(this.logger);

  /// Обёртка для стандартной обработки ошибок обращения к API.
  @protected
  RequestOperation<T> makeApiCall<T>(AsyncValueGetter<T> call) async {
    final Result<T, Failure> failureResult;

    try {
      final data = await call();

      return Result.ok(data);
    } on DioException catch (e, s) {
      failureResult = Result.failed(unwrapDioException(e, trace: s), s);
    } on Failure catch (e, s) {
      return Result.failed(e, s);
    } on Object catch (e, s) {
      failureResult = Result.failed(UnknownFailure(message: e.toString(), stackTrace: s), s);
    }

    if (failureResult case ResultFailed(:final error, :final stackTrace)) {
      _debugPrint(error, stackTrace);
    }

    return failureResult;
  }

  /// Маппинг ошибки API.
  @protected
  NetworkFailure unwrapDioException(DioException exception, {required StackTrace trace}) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerNotRespondingFailure();
      case DioExceptionType.sendTimeout ||
          DioExceptionType.receiveTimeout ||
          DioExceptionType.cancel ||
          DioExceptionType.connectionTimeout ||
          DioExceptionType.connectionError:
        return const NoNetworkFailure();
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;

        ErrorResponseDto? errorResponse;
        if (exception.response?.data case final Map<String, dynamic> data) {
          try {
            errorResponse = ErrorResponseDto.fromJson(data);
          } on Object catch (e, s) {
            _debugPrint(e, s);
          }
        }

        if (statusCode == 400) {
          return BadRequestFailure(message: errorResponse?.detail);
        }
        if (statusCode == 429) {
          try {
            return TooManyRequestsFailure(message: errorResponse?.detail);
          } on Object catch (e, s) {
            _debugPrint(e, s);
          }
        }
        if (statusCode == 401) {
          return const UnauthorizedFailure();
        }
        if (statusCode == 500) {
          return const InternalServerFailure();
        }
        if (statusCode == 404) {
          return BadRequestFailure(message: errorResponse?.detail);
        }

      default:
        return UnknownNetworkFailure(exception);
    }

    return UnknownNetworkFailure(exception);
  }

  void _debugPrint(Object exception, [StackTrace? stackTrace]) {
    logger.e(exception, stackTrace: stackTrace);
  }
}
