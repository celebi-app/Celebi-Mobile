import 'dart:io';

import 'package:celebi/core/init/network/network_service.dart';
import 'package:dio/dio.dart';

import '../model/login_model.dart';
import '../model/login_response_model.dart';
import 'ILoginService.dart';

class LoginService extends ILoginService {
  LoginService(
    this._network,
  );

  final NetworkService _network;
  @override
  Future<LoginResponseModel?> fetchUserControl(LoginModel model) async {
    try {
      final response = await _network.dio.post<Map<String, dynamic>>(
        "/Authenticate",
        data: model.toJson(),
      );
      if (response.statusCode == HttpStatus.ok) {
        if (response.data == null) return Future.error(response);
        return LoginResponseModel.fromJson(response.data!);
      } else {
        final errorMessage = response.data as String;
        return Future.error(errorMessage);
      }
    } on DioError catch (exception) {
      print(exception.toString());
      return null;
    }
  }
}
