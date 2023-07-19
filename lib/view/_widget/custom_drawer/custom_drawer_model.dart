import 'package:flutter/material.dart';

class CustomDrawerModel {
  final IconData? icon;
  final String? title;
  void Function()? onTap;

  CustomDrawerModel({this.icon, this.title, this.onTap});
}
