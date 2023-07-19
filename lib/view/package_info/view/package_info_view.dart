import 'package:celebi/product/constants/app_constants.dart';
import 'package:celebi/product/constants/package_info_constants.dart';
import 'package:celebi/view/package_info/model/package_info_model.dart';
import 'package:data_table_2/data_table_2.dart';
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
          builder: (context) {
            return !viewModel.isLoading
                ? DataTable2(
                    headingRowColor: MaterialStateProperty.all(Colors.purple.withOpacity(0.5)),
                    border: TableBorder.symmetric(
                      outside: const BorderSide(color: Colors.black, width: 2.0),
                      inside: const BorderSide(color: Colors.black, width: 0.5),
                    ),
                    minWidth: MediaQuery.sizeOf(context).width * 2,
                    columnSpacing: 12,
                    columns: _columnBuilder(viewModel.packageInfoModel),
                    rows: List<DataRow>.generate(
                      viewModel.infos.length,
                      (index) => DataRow(
                        color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                          return Theme.of(context).colorScheme.primary.withOpacity(index * 0.1);
                        }),
                        cells: [
                          DataCell(Text(viewModel.infos[index]?.paket.toString() ?? " - ")),
                          DataCell(Text(viewModel.infos[index]?.tutar.toString() ?? " - ")),
                          DataCell(Text(viewModel.infos[index]?.basTarih.toString() ?? " - ")),
                          DataCell(Text(viewModel.infos[index]?.bitTarih.toString() ?? " - ")),
                          DataCell(Text(viewModel.infos[index]?.izinBasTarih.toString() ?? " - ")),
                          DataCell(Text(viewModel.infos[index]?.izinBitTarih.toString() ?? " - ")),
                          DataCell(Text(viewModel.infos[index]?.createUserId.toString() ?? " - ")),
                        ],
                      ),
                    ),
                  )
                : const Center(child: CircularProgressIndicator.adaptive());
          },
        ),
      ),
    );
  }

  List<DataColumn> _columnBuilder(PackageInfoModel? model) {
    return [
      const DataColumn2(
        label: Text(PackageInfoConstants.PAKET),
        size: ColumnSize.S,
      ),
      const DataColumn2(
        label: Text(PackageInfoConstants.TUTAR),
        size: ColumnSize.S,
      ),
      const DataColumn2(
        label: Text(PackageInfoConstants.BASLANGIC_TARIHI),
        size: ColumnSize.L,
      ),
      const DataColumn2(
        label: Text(PackageInfoConstants.BITIS_TARIHI),
        size: ColumnSize.M,
      ),
      const DataColumn2(
        label: Text(PackageInfoConstants.IZIN_BAS_TARIHI),
        size: ColumnSize.L,
      ),
      const DataColumn2(
        label: Text(PackageInfoConstants.IZIN_BIT_TARIHI),
        size: ColumnSize.L,
      ),
      const DataColumn(
        label: Text(PackageInfoConstants.KULLANICI),
      ),
    ];
  }
}
