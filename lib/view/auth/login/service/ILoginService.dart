// ignore_for_file: file_names

import '../model/login_model.dart';
import '../model/login_response_model.dart';

abstract class ILoginService {
  Future<LoginResponseModel?> fetchUserControl(LoginModel model);
}
