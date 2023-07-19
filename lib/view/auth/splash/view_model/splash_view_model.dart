import 'package:celebi/core/base/base_view_model.dart';
import 'package:celebi/core/init/cache/cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/constants/enums/preferences_keys.dart';
import '../../../../product/constants/navigation_constants.dart';

part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      deviceandCacheInit();
    });
    Future.delayed(const Duration(seconds: 1)).then((value) {
      if (cacheManager.getStringValue(PreferencesKeys.TOKEN) != null) {
        navigation.navigateToPage(path: NavigationConstants.USER);
      } else {
        navigation.navigateToPage(path: NavigationConstants.LOGIN);
      }
    });
  }

  Future<void> deviceandCacheInit() async {
    await Future.wait([
      CacheManager.prefrencesInit(),
    ]);
  }
}
