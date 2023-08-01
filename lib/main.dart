import 'package:flutter/material.dart';

import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/scaffold_messenger_key.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: ScaffoldMessengerKey.instance.scaffoldState,
      title: 'Celebi',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF01495F),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF01495F),
        ),
        useMaterial3: true,
      ),
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
    );
  }
}
