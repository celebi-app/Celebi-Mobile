import 'package:celebi/core/base/base_view_model.dart';
import 'package:celebi/product/constants/navigation_constants.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/constants/enums/preferences_keys.dart';
import '../model/login_model.dart';
import '../service/login_service.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase extends BaseViewModel with Store {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  late LoginService loginService;
  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() {
    print("init from viewmodel");
    loginService = LoginService(network);
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  @action
  Future<void> fetchLoginService() async {
    isLoadingChange();
    final response = await loginService.fetchUserControl(
      LoginModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    if (response != null) {
      if (response.token?.isEmpty ?? true) return;
      if (rememberMe) {
        await cacheManager.setStringValue(
          PreferencesKeys.TOKEN,
          response.token!,
        );
      } else {
        await cacheManager.setStringValue(PreferencesKeys.CACHETOKEN, response.token!);
      }
    }
    isLoadingChange();
    navigation.navigateToPageClear(path: NavigationConstants.USER);
  }

  @observable
  bool isLoading = false;

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }

  @observable
  bool isObscure = true;

  @action
  void changeObscure() {
    isObscure = !isObscure;
  }

  @observable
  bool rememberMe = false;

  @action
  void changeRememberMe() {
    rememberMe = !rememberMe;
  }
}
