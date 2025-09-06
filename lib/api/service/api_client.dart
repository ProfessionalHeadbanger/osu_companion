import 'package:dio/dio.dart';
import 'package:osu_companion/api/dto/beatmap/beatmap_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/beatmaps/{beatmap}')
  Future<List<BeatmapDto>> getBeatmaps(@Path('beatmap') int beatmap);
}
