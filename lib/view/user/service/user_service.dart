import 'package:celebi/core/init/network/network_service.dart';
import 'package:celebi/view/user/model/user_model.dart';
import 'package:dio/dio.dart';

import 'IUserService.dart';

class UserService extends IUserService {
  UserService(this._network);

  final NetworkService _network;

  @override
  Future<UserModel?> fetchUserProfile(String token) async {
    try {
      final response = await _network.dio.get("http://10.0.2.2:5000/user_info", options: Options(headers: {"Authorization": "Bearer $token"}), data: token);
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        final errorMessage = response.data['error'] as String;
        return Future.error(errorMessage);
      }
    } catch (e) {
      return Future.error("Hata: $e");
    }
  }
}
