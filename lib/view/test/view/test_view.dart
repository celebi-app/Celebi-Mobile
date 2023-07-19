import 'package:celebi/product/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../../../core/base/base_view.dart';
import '../viewmodel/test_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (context, viewModel) => Scaffold(
        appBar: AppBar(title: const Text("Test")),
        body: Observer(
          builder: (_) {
            return viewModel.isLoading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : ListView(
                    children: [
                      _cardBuilder(title: AppConstant.id, description: viewModel.fake.id.toString()),
                      _cardBuilder(title: AppConstant.name, description: viewModel.fake.name.toString()),
                      _cardBuilder(title: AppConstant.username, description: viewModel.fake.username.toString()),
                      _cardBuilder(title: AppConstant.email, description: viewModel.fake.email.toString()),
                      _cardBuilder(title: AppConstant.phone, description: viewModel.fake.phone.toString()),
                      _cardBuilder(title: AppConstant.website, description: viewModel.fake.website.toString()),
                      _cardBuilder(title: AppConstant.company, description: viewModel.fake.company.toString()),
                      _cardBuilder(title: AppConstant.address, description: viewModel.fake.address.toString()),
                    ],
                  );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: viewModel.isLoading ? () {} : () => viewModel.request(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Card _cardBuilder({required String title, required String description}) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}
