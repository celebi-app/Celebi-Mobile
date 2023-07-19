import 'package:celebi/core/base/base_view_model.dart';
import 'package:celebi/view/_widget/custom_drawer/custom_drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../product/constants/app_constants.dart';
import '../../../product/constants/navigation_constants.dart';
part 'custom_drawer_view_model.g.dart';

class CustomDrawerViewModel = _CustomDrawerViewModelBase with _$CustomDrawerViewModel;

abstract class _CustomDrawerViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() {
    initDrawerItems();
  }

  late List<CustomDrawerModel> drawerItems;

  void initDrawerItems() {
    drawerItems = [
      CustomDrawerModel(
        icon: Icons.home,
        title: AppConstant.ANA_SAYFA,
        onTap: () => navigation.replaceToPage(path: NavigationConstants.USER),
      ),
      CustomDrawerModel(
        icon: Icons.info_outline_rounded,
        title: AppConstant.PAKET_BILGILERI,
        onTap: () => navigation.replaceToPage(path: NavigationConstants.PACKAGE_INFO),
      ),
      CustomDrawerModel(
        icon: Icons.info_outline_rounded,
        title: AppConstant.PAKET_BILGILERI,
        onTap: () => navigation.replaceToPage(path: NavigationConstants.PACKAGE_INFO),
      ),
      CustomDrawerModel(
        icon: Icons.info_outline_rounded,
        title: AppConstant.PAKET_BILGILERI,
        onTap: () => navigation.replaceToPage(path: NavigationConstants.PACKAGE_INFO),
      ),
    ];
  }
}
