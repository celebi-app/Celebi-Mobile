import 'package:celebi/product/constants/app_constants.dart';
import 'package:celebi/product/constants/user_info.constants.dart';
import 'package:celebi/view/_widget/info_card/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base/base_view.dart';
import '../../_widget/custom_drawer/custom_drawer_view.dart';
import '../view_model/user_view_model.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<UserViewModel>(
      viewModel: UserViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (context, viewModel) => Scaffold(
        backgroundColor: const Color(0xFF01495F),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppConstant.ANA_SAYFA),
          backgroundColor: const Color(0xFF01495F),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PopupMenuButton(
                offset: const Offset(0, 50),
                child: Observer(builder: (_) {
                  return CircleAvatar(
                    backgroundImage: NetworkImage(viewModel.userModel?.foto ?? AppConstant.DEFAULT_PROFILE_IMAGE),
                    backgroundColor: Colors.transparent,
                  );
                }),
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: const Text(AppConstant.CIKIS_YAP),
                      onTap: () => viewModel.logout(),
                    ),
                  ];
                },
              ),
            )
          ],
        ),
        drawer: const CustomDrawerView(),
        body: Observer(
          builder: (_) {
            return viewModel.isLoading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    children: [
                      InfoCard(title: UserInfoConstants.TC, description: viewModel.userModel?.tc ?? "-"),
                      InfoCard(title: UserInfoConstants.AD, description: viewModel.userModel?.ad ?? "-"),
                      InfoCard(title: UserInfoConstants.SOYAD, description: viewModel.userModel?.soyad ?? "-"),
                      InfoCard(title: UserInfoConstants.DOGUM_TARIHI, description: viewModel.userModel?.dogumTarihi ?? "-"),
                      InfoCard(title: UserInfoConstants.BABA_ADI, description: viewModel.userModel?.babaAd ?? "-"),
                      InfoCard(title: UserInfoConstants.ANNE_ADI, description: viewModel.userModel?.anneAd ?? "-"),
                      InfoCard(title: UserInfoConstants.BABA_TELEFONU, description: viewModel.userModel?.tel1 ?? "-"),
                      InfoCard(title: UserInfoConstants.ANNE_TELEFONU, description: viewModel.userModel?.tel2 ?? "-"),
                      InfoCard(title: UserInfoConstants.ADRES, description: viewModel.userModel?.adres ?? "-"),
                      // -------------------------------------------------------------
                      InfoCard(title: UserInfoConstants.BRANS_ID, description: viewModel.userModel?.bransId.toString() ?? "-"),
                      InfoCard(title: UserInfoConstants.ALT_BRANS_ID, description: viewModel.userModel?.altBransId.toString() ?? ""),
                      InfoCard(title: UserInfoConstants.KUSAK_ID, description: viewModel.userModel?.kusakId.toString() ?? "-"),
                      InfoCard(title: UserInfoConstants.ANTRENOR_ID, description: viewModel.userModel?.antrenorId.toString() ?? ""),
                      InfoCard(title: UserInfoConstants.KAYIT_TARIHI, description: viewModel.userModel?.kayitTarihi ?? "-"),
                      InfoCard(title: UserInfoConstants.DURUM, description: viewModel.userModel?.durum.toString() ?? "-"),
                      InfoCard(title: UserInfoConstants.LISANS_NO, description: viewModel.userModel?.lisansNo ?? "-"),
                      InfoCard(title: UserInfoConstants.LISANS_YILI, description: viewModel.userModel?.lisansYil.toString() ?? ""),
                      InfoCard(title: UserInfoConstants.AIDAT, description: viewModel.userModel?.aidat.toString() ?? "-"),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
