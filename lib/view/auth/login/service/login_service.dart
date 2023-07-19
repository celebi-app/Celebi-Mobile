import 'dart:io';

import 'package:celebi/core/init/network/network_service.dart';

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
      final response = await _network.dio.get(
        "http://10.0.2.2:5000/uyegiris?TC=${model.email}&Sifre=${model.password}",
        //"http://10.0.2.2:5000/uyegiris",

        data: model.toJson(),
      );
      // TODO HATA DURUMLARI YAKALANACAK.

      if (response.statusCode == HttpStatus.ok) {
        final token = response.data;
        return LoginResponseModel(token: token);
      } else {
        final errorMessage = response.data['error'] as String;
        return Future.error(errorMessage);
      }
    } catch (e) {
      return Future.error("Hata: $e");
    }
  }
}
