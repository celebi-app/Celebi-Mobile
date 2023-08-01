import 'package:celebi/product/constants/package_info_constants.dart';
import 'package:celebi/product/extension/string_extension.dart';
import 'package:celebi/view/package_info/model/package_info_model.dart';
import 'package:flutter/material.dart';

class PackageInfoCard extends StatelessWidget {
  const PackageInfoCard({super.key, required this.model});
  final PackageInfoModel model;
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
              title: PackageInfoConstants.PAKET_BILGISI,
              description: model.paket ?? "",
            ),
            _InfoItem(
              title: PackageInfoConstants.TUTAR,
              description: model.tutar == null ? "" : model.tutar.toString(),
            ),
            _InfoItem(
              title: PackageInfoConstants.BASLANGIC_TARIHI,
              description: model.baslangicTarihi.formatToDDMMYYYY,
            ),
            _InfoItem(
              title: PackageInfoConstants.BITIS_TARIHI,
              description: model.bitisTarihi.formatToDDMMYYYY,
            ),
            _InfoItem(
              title: PackageInfoConstants.IZIN_BAS_TARIHI,
              description: model.izinBaslangicTarihi.formatToDDMMYYYY,
            ),
            _InfoItem(
              title: PackageInfoConstants.IZIN_BIT_TARIHI,
              description: model.izinBitisTarihi.formatToDDMMYYYY,
            ),
            _InfoItem(
              title: PackageInfoConstants.KULLANICI,
              description: model.olusturanKullanici ?? "",
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
