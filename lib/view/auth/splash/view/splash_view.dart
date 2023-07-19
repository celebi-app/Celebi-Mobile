import 'package:flutter/material.dart';

import '../../../../core/base/base_view.dart';
import '../view_model/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      viewModel: SplashViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (context, viewModel) => Scaffold(
        body: Center(
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}


















// import 'package:celebi/core/constants/enums/preferences_keys.dart';
// import 'package:celebi/core/init/cache/cache_manager.dart';
// import 'package:flutter/material.dart';

// class SplashView extends StatefulWidget {
//   const SplashView({super.key});

//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView> {
//   @override
//   void initState() {
//     super.initState();
//     _init();
//   }

//   Future<void> _init() async {
//     await Future.delayed(const Duration(seconds: 2), () {
//       print("*****");
//       print(CacheManager.instance.getStringValue(PreferencesKeys.TOKEN));
//       print("*****");
//     });
//     _goPage();
//   }

//   Future<void> _goPage() async {
//     print("------------------------------------------");
//     print(CacheManager.instance.getStringValue(PreferencesKeys.TOKEN));

//     if (CacheManager.instance.getStringValue(PreferencesKeys.TOKEN) != "") {
//       Future.delayed(const Duration(seconds: 2), () {
//         Navigator.pushReplacementNamed(context, '/user');
//       });
//     } else {
//       Future.delayed(const Duration(seconds: 2), () {
//         Navigator.pushReplacementNamed(context, '/login');
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build");
//     print(CacheManager.instance.getStringValue(PreferencesKeys.TOKEN));

    // return const Scaffold(
    //   body: Center(
    //     child: FlutterLogo(size: 150),
    //   ),
    // );
//   }
// }
