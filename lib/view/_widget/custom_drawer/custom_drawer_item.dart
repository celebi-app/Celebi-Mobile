import 'package:celebi/view/_widget/custom_drawer/custom_drawer_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, this.model});

  final CustomDrawerModel? model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(model?.icon ?? Icons.home, color: Colors.white),
      title: Text(
        model?.title ?? "-",
        style: const TextStyle(color: Colors.white),
      ),
      onTap: model?.onTap,
    );
  }
}
