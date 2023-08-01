import 'package:celebi/core/base/base_view_model.dart';
import 'package:celebi/view/package_info/service/IPackageInfoService.dart';
import 'package:celebi/view/package_info/service/package_info_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/constants/enums/preferences_keys.dart';
import '../model/package_info_model.dart';
part 'package_info_view_model.g.dart';

class PackageInfoViewModel = _PackageInfoViewModelBase with _$PackageInfoViewModel;

abstract class _PackageInfoViewModelBase extends BaseViewModel with Store {
  late final IPackageInfoService service;

  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() {
    service = PackageInfoService(network);
    fetchPackageInfo();
  }

  @observable
  bool isLoading = false;

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @observable
  List<PackageInfoModel?>? packageInfoModels;

  @action
  Future<void> fetchPackageInfo() async {
    _changeLoading();
    String? token = cacheManager.getStringValue(PreferencesKeys.TOKEN);
    token ??= cacheManager.getStringValue(PreferencesKeys.CACHETOKEN);

    final response = await service.fetchPackageInformation(token ?? "");
    if (response != null) {
      packageInfoModels = response.reversed.toList();
    }
    _changeLoading();
  }
}
