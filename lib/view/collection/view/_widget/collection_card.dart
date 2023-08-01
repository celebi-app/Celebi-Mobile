import 'package:celebi/product/extension/string_extension.dart';
import 'package:flutter/material.dart';

import '../../../../product/constants/collection_constants.dart';
import '../../model/collection_model.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({super.key, required this.model});
  final CollectionModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: const Color(0xFF011828),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _InfoItem(
              title: CollectionConstans.ODEME_TARIHI,
              description: model.odemeTarihi.formatToDDMMYYYY,
            ),
            _InfoItem(
              title: CollectionConstans.DONEM,
              description: model.donem ?? "",
            ),
            _InfoItem(
              title: CollectionConstans.TUR,
              description: model.tur ?? "",
            ),
            _InfoItem(
              title: CollectionConstans.BORC,
              description: model.borc == null ? "" : model.borc.toString(),
            ),
            _InfoItem(
              title: CollectionConstans.ODENENEN,
              description: model.odenen == null ? "" : model.odenen.toString(),
            ),
            _InfoItem(
              title: CollectionConstans.KALAN,
              description: model.kalan == null ? "" : model.kalan.toString(),
            ),
            _InfoItem(
              title: CollectionConstans.ACIKLAMA,
              description: model.aciklama ?? "",
              isLastItem: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.title,
    required this.description,
    this.isLastItem = false,
  });
  final String title;
  final String description;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(color: Colors.white)),
            Text(description, style: const TextStyle(color: Colors.white)),
          ],
        ),
        isLastItem ? const SizedBox.shrink() : const Divider(color: Colors.blueGrey),
      ],
    );
  }
}
