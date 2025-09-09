import 'package:dio/dio.dart';
import 'package:osu_companion/api/service/api_client.dart';
import 'package:osu_companion/constants/api_constants.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

abstract class AppDependencies {
  static List<SingleChildWidget> providers() {
    const timeout = Duration(seconds: 5);

    final dio = Dio();
    dio.options
      ..baseUrl = ApiConstants.baseUrl
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;

    final apiClient = ApiClient(dio);
    return [
      Provider<ApiClient>(create: (_) => apiClient),
    ];
  }
}
