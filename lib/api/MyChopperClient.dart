import 'package:chopper/chopper.dart';
import 'package:riverpod_boilerplate/api/services/youtube_services.dart';


class MyChopperClient {
  final converter = JsonSerializableConverter({
    Resource: Resource.fromJsonFactory,
  });

  final _chopper = ChopperClient(
    baseUrl: Uri.parse(''),
    converter: ,
    errorConverter: ,
    services: [
      YoutubeServices.create(),
    ],
    interceptors: [],
  );
}