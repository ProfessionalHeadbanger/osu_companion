import 'package:osu_companion/core/domain/entities/failure/failure.dart';

/// Базовый класс для ошибок сети.
abstract class NetworkFailure extends Failure {
  const NetworkFailure({super.message, super.parentException, super.stackTrace});
}

final class BadRequestFailure extends NetworkFailure {
  const BadRequestFailure({super.message, super.parentException, super.stackTrace});
}

final class InternalServerFailure extends NetworkFailure {
  const InternalServerFailure() : super(message: 'Internal server error');
}

final class NoNetworkFailure extends NetworkFailure {
  const NoNetworkFailure() : super(message: 'No network connection');
}

final class ServerNotRespondingFailure extends NetworkFailure {
  const ServerNotRespondingFailure() : super(message: 'Server not responding');
}

final class TimeoutException extends NetworkFailure {
  const TimeoutException() : super(message: 'Timeout');
}

final class TooManyRequestsFailure extends NetworkFailure {
  const TooManyRequestsFailure({super.message, super.parentException, super.stackTrace});
}

final class UnauthorizedFailure extends NetworkFailure {
  const UnauthorizedFailure() : super(message: 'Unauthorized');
}

final class UnknownNetworkFailure extends NetworkFailure {
  const UnknownNetworkFailure(Exception exception) : super(parentException: exception);
}
