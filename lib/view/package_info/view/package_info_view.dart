import 'package:celebi/product/constants/app_constants.dart';
import 'package:celebi/view/_widget/not_found/not_found.dart';
import 'package:celebi/view/package_info/view/_widget/package_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base/base_view.dart';
import '../../_widget/custom_drawer/custom_drawer_view.dart';
import '../view_model/package_info_view_model.dart';

class PackageInfoView extends StatelessWidget {
  const PackageInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<PackageInfoViewModel>(
      viewModel: PackageInfoViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (context, viewModel) => Scaffold(
        appBar: AppBar(
          title: const Text(AppConstant.PAKET_BILGILERI),
          centerTitle: true,
        ),
        drawer: const CustomDrawerView(),
        body: Observer(
          builder: (_) => viewModel.isLoading
              ? const Center(child: CircularProgressIndicator())
              : viewModel.packageInfoModels == null
                  ? const NotFound(pageName: AppConstant.PAKET_BILGILERI)
                  : ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: viewModel.packageInfoModels?.length ?? 0,
                      itemBuilder: (context, index) => (viewModel.packageInfoModels?.isEmpty ?? true)
                          ? const SizedBox.shrink()
                          : PackageInfoCard(model: viewModel.packageInfoModels![index]!),
                    ),
        ),
      ),
    );
  }
}
