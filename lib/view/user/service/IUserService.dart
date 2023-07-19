// ignore_for_file: file_names

import '../model/user_model.dart';

abstract class IUserService {
  Future<UserModel?> fetchUserProfile(String token);
}
