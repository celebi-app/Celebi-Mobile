import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key, required this.pageName});
  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "$pageName boş.",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
