import 'package:celebi/product/constants/navigation_constants.dart';
import 'package:flutter/material.dart';
import '../../../core/base/base_view_model.dart';

import 'package:mobx/mobx.dart';

import '../../../core/constants/enums/preferences_keys.dart';
import '../model/user_model.dart';
import '../service/IUserService.dart';
import '../service/user_service.dart';
part 'user_view_model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase extends BaseViewModel with Store {
  late final IUserService userService;

  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() async {
    userService = UserService(network);
    await fetchUser();
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
    _changeLoading();
    String? token = cacheManager.getStringValue(
      PreferencesKeys.TOKEN,
    );
    token ??= cacheManager.getStringValue(PreferencesKeys.CACHETOKEN);
    userModel = await userService.fetchUserProfile(token ?? "");
    _changeLoading();
  }

  void logout() async {
    await cacheManager.clearAll();
    navigation.navigateToPageClear(path: NavigationConstants.SPLASH);
  }
}
