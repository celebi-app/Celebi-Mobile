import 'package:celebi/view/auth/splash/view/splash_view.dart';
import 'package:celebi/view/collection/view/collection_view.dart';
import 'package:celebi/view/package_info/view/package_info_view.dart';
import 'package:flutter/material.dart';

import '../../../product/constants/navigation_constants.dart';
import '../../../view/auth/login/view/login_view.dart';
import '../../../view/user/view/user_view.dart';

class NavigationRoute {
  static final NavigationRoute _instace = NavigationRoute._init();
  static NavigationRoute get instance => _instace;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.SPLASH:
        return normalNavigate(const SplashView(), NavigationConstants.SPLASH);
      case NavigationConstants.USER:
        return normalNavigate(const UserView(), NavigationConstants.USER);
      case NavigationConstants.LOGIN:
        return normalNavigate(const LoginView(), NavigationConstants.LOGIN);
      case NavigationConstants.PACKAGE_INFO:
        return normalNavigate(const PackageInfoView(), NavigationConstants.PACKAGE_INFO);
      case NavigationConstants.COLLECTION:
        return normalNavigate(const CollectionView(), NavigationConstants.COLLECTION);
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(builder: (context) => widget, settings: RouteSettings(name: pageName));
  }
}
