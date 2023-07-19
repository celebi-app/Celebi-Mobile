import 'package:dio/dio.dart';

class NetworkService {
  static final NetworkService _instace = NetworkService._init();
  static NetworkService get instance => _instace;
  NetworkService._init();

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "http://10.0.2.2:5000",
    ),
  );
}
