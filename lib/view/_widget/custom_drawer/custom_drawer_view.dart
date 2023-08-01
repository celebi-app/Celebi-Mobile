import 'package:celebi/view/_widget/custom_drawer/custom_drawer_item.dart';
import 'package:flutter/material.dart';

import '../../../core/base/base_view.dart';
import 'custom_drawer_view_model.dart';

class CustomDrawerView extends StatelessWidget {
  const CustomDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<CustomDrawerViewModel>(
      viewModel: CustomDrawerViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (context, viewModel) => Drawer(
        backgroundColor: const Color(0xFF01495F),
        child: Column(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              shrinkWrap: true,
              children: [
                ...viewModel.drawerItems.map((model) => CustomDrawerItem(
                      model: model,
                    )),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextButton(
                onPressed: () => viewModel.logout(),
                child: const Text(
                  "Çıkış yap",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
