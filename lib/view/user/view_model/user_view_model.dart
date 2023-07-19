import 'package:celebi/product/constants/navigation_constants.dart';
import 'package:celebi/view/user/service/user_service.dart';
import 'package:flutter/material.dart';
import '../../../core/base/base_view_model.dart';

import 'package:mobx/mobx.dart';

import '../../../core/constants/enums/preferences_keys.dart';
import '../model/user_model.dart';
import '../service/IUserService.dart';
part 'user_view_model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase extends BaseViewModel with Store {
  late final IUserService userService;

  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() {
    print("init from userviewmodel;");
    userService = UserService(network);
    print("init from userviewmodel after userServis init");

    fetchUser();
  }

  @observable
  UserModel? userModel = UserModel();

  @observable
  bool isLoading = false;

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchUser() async {
    String? token = cacheManager.getStringValue(
      PreferencesKeys.TOKEN,
    );
    token ??= cacheManager.getStringValue(PreferencesKeys.CACHETOKEN);
    userModel = await userService.fetchUserProfile(token ?? "");
  }

  void logout() async {
    await cacheManager.clearAll();
    navigation.navigateToPageClear(path: NavigationConstants.SPLASH);
  }

  void goPackageInfo() {
    navigation.navigateToPage(path: NavigationConstants.PACKAGE_INFO);
  }
}
