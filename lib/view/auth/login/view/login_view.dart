import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/base/base_view.dart';
import '../view_model/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (context, viewModel) => Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF01495F),
              Color(0xFF011828),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                right: 32.0,
                left: 32.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _topImage(),
                  _formField(context, viewModel),
                  _flexibleBottomImage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _topImage() {
    return Flexible(
      child: Image.asset(
        "assets/images/celebi_sk.jpg",
      ),
    );
  }

  Column _formField(
    BuildContext context,
    LoginViewModel viewModel,
  ) {
    return Column(
      children: [
        Card(
          elevation: 8.0,
          color: const Color(0xFF8EC5FC),
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFF011828),
                  Color(0xFF01495F),
                ],
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            width: 300,
            child: Observer(builder: (_) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("GİRİŞ YAP", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)),
                  _textField(
                    controller: viewModel.emailController,
                    labelText: "Kullanıcı Adı",
                    isObscure: false,
                  ),
                  _textField(
                    controller: viewModel.passwordController,
                    labelText: "Şifre",
                    isObscure: viewModel.isObscure,
                    suffixIcon: _buildSuffixIcon(viewModel),
                  ),
                  const SizedBox(height: 10),
                  _rememberMeAndLogin(viewModel: viewModel),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }

  IconButton _buildSuffixIcon(LoginViewModel viewModel) {
    return IconButton(
      onPressed: () => viewModel.changeObscure(),
      icon: Icon(
        viewModel.isObscure ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
      ),
      color: Colors.white,
    );
  }

  TextField _textField({
    required TextEditingController controller,
    required String labelText,
    required bool isObscure,
    Widget? suffixIcon,
  }) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        suffixIcon: suffixIcon,
      ),
    );
  }

  Row _rememberMeAndLogin({required LoginViewModel viewModel}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: viewModel.changeRememberMe,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  viewModel.rememberMe ? Icons.check_box_outlined : Icons.check_box_outline_blank_sharp,
                  color: Colors.white,
                ),
                const SizedBox(width: 16),
                const Text(
                  "Beni Hatırla",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            gradient: const LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xFF011828),
                Color(0xFF01495F),
              ],
            ),
          ),
          child: ElevatedButton(
            onPressed: () => viewModel.fetchLoginService(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
            ),
            child: viewModel.isLoading
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : const Text(
                    "Giriş Yap",
                    style: TextStyle(color: Colors.white),
                  ),
          ),
        )
      ],
    );
  }

  Flexible _flexibleBottomImage() {
    return Flexible(
      child: SvgPicture.asset(
        "assets/svg/fitness_stats.svg",
      ),
    );
  }
}
