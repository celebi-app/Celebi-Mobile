import 'package:celebi/product/constants/app_constants.dart';
import 'package:celebi/product/constants/user_info.constants.dart';
import 'package:celebi/product/extension/string_extension.dart';
import 'package:celebi/view/user/view/_widget/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base/base_view.dart';
import '../../_widget/custom_drawer/custom_drawer_view.dart';
import '../view_model/user_view_model.dart';

part '_widget/avatar_button.dart';

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
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppConstant.ANA_SAYFA),
          backgroundColor: const Color(0xFF01495F),
          actions: [_AvatarButton(viewModel)],
        ),
        drawer: const CustomDrawerView(),
        body: Observer(
          builder: (_) {
            return viewModel.isLoading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : _Body(viewModel: viewModel);
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.viewModel});
  final UserViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        InfoCard(title: UserInfoConstants.TC, description: viewModel.userModel?.tc ?? "-"),
        InfoCard(title: UserInfoConstants.AD, description: viewModel.userModel?.adSoyad ?? "-"),
        InfoCard(
            title: UserInfoConstants.DOGUM_TARIHI,
            description: viewModel.userModel?.dogumTarihi.formatToDDMMYYYY ?? "-"),
        InfoCard(title: UserInfoConstants.BABA_ADI, description: viewModel.userModel?.babaAdi ?? "-"),
        InfoCard(title: UserInfoConstants.ANNE_ADI, description: viewModel.userModel?.anneAdi ?? "-"),
        InfoCard(title: UserInfoConstants.BABA_TELEFONU, description: viewModel.userModel?.babaTelefon ?? "-"),
        InfoCard(title: UserInfoConstants.ANNE_TELEFONU, description: viewModel.userModel?.anneTelefon ?? "-"),
        InfoCard(title: UserInfoConstants.ADRES, description: viewModel.userModel?.adres ?? "-"),
        // -------------------------------------------------------------
        InfoCard(title: UserInfoConstants.BRANS, description: viewModel.userModel?.brans ?? "-"),
        InfoCard(title: UserInfoConstants.ALT_BRANS, description: viewModel.userModel?.altBrans ?? ""),
        InfoCard(title: UserInfoConstants.KUSAK, description: viewModel.userModel?.kusak ?? "-"),
        InfoCard(title: UserInfoConstants.ANTRENOR, description: viewModel.userModel?.antrenor ?? ""),
        InfoCard(
            title: UserInfoConstants.KAYIT_TARIHI,
            description: viewModel.userModel?.kayitTarihi.formatToDDMMYYYY ?? "-"),
        InfoCard(title: UserInfoConstants.DURUM, description: viewModel.userModel?.durum.toString() ?? "-"),
        InfoCard(title: UserInfoConstants.LISANS_NO, description: viewModel.userModel?.lisansNo ?? "-"),
        InfoCard(title: UserInfoConstants.LISANS_YILI, description: viewModel.userModel?.lisansYili.toString() ?? ""),
        InfoCard(title: UserInfoConstants.AIDAT, description: viewModel.userModel?.aidatTutari.toString() ?? "-"),
      ],
    );
  }
}
