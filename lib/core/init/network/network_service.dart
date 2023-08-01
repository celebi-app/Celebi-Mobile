import 'dart:io';

import 'package:dio/dio.dart';

class NetworkService {
  static final NetworkService _instace = NetworkService._init();
  static NetworkService get instance => _instace;
  NetworkService._init();

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "http://10.0.2.2:5038/api",
      contentType: ContentType.json.value,
      headers: Map.fromEntries(
        [
          const MapEntry('Content-Type', 'application/json'),
          const MapEntry('Accept', '*'),
          const MapEntry('Connection', 'keep-alive'),
        ],
      ),
    ),
  );
}
