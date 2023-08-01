import 'package:celebi/core/init/cache/cache_manager.dart';
import 'package:celebi/core/init/navigation/navigation_service.dart';
import 'package:celebi/core/init/network/network_service.dart';
import 'package:flutter/material.dart';

import '../init/notifier/scaffold_messenger_key.dart';

abstract class BaseViewModel {
  late BuildContext viewModelContext;

  void setContext(BuildContext context);
  void init();

  NavigationService navigation = NavigationService.instance;
  NetworkService network = NetworkService.instance;
  CacheManager cacheManager = CacheManager.instance;
  ScaffoldMessengerKey scaffoldState = ScaffoldMessengerKey.instance;
}
