import 'dart:math';

import 'package:celebi/product/models/pholder_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/base_view_model.dart';
part 'test_view_model.g.dart';

class TestViewModel = TestViewModelBase with _$TestViewModel;

abstract class TestViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}

  @observable
  PholderModel fake = PholderModel();

  @observable
  bool isLoading = false;

  @action
  Future<void> request() async {
    _changeLoading();
    int r = Random().nextInt(9) + 1;
    String url = "https://jsonplaceholder.typicode.com/users/$r";
    Response response;
    response = await network.dio.get(url);
    fake = PholderModel.fromJson(response.data);
    _changeLoading();
  }

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }
}
