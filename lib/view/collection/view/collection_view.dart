import 'package:celebi/view/_widget/custom_drawer/custom_drawer_view.dart';
import 'package:celebi/view/collection/view/_widget/collection_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base/base_view.dart';
import '../../../product/constants/app_constants.dart';
import '../../_widget/not_found/not_found.dart';
import '../view_model/collection_view_model.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<CollectionViewModel>(
      viewModel: CollectionViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (context, viewModel) => Scaffold(
        appBar: AppBar(
          title: const Text(AppConstant.TAHSILAT_BILGILERI),
          centerTitle: true,
        ),
        drawer: const CustomDrawerView(),
        body: Observer(
          builder: (context) => viewModel.isLoading
              ? const Center(child: CircularProgressIndicator.adaptive())
              : viewModel.collections == null
                  ? const NotFound(pageName: AppConstant.TAHSILAT_BILGILERI)
                  : ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: viewModel.collections?.length ?? 0,
                      itemBuilder: (context, index) => (viewModel.collections?.isEmpty ?? true)
                          ? const SizedBox.shrink()
                          : CollectionCard(model: viewModel.collections![index]!),
                    ),
        ),
      ),
    );
  }
}
