import 'package:chopper/chopper.dart';

part 'youtube_services.chopper.dart';

@ChopperApi(baseUrl: 'https://www.googleapis.com/youtube/v3')
abstract class YoutubeServices extends ChopperService {
  static YoutubeServices create([ChopperClient? client]) => _$YoutubeServices(client);

  @Get(path: '/videos')
  Future<Response> getPopularVideos(
    @Query() String part,
    @Query() String key,
    @Query() String chart,
    @Query() int videoCategoryId,
    @Query() String regionCode,
  );
}