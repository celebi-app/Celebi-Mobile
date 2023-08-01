import 'package:celebi/core/base/base_view_model.dart';
import 'package:celebi/view/collection/model/collection_model.dart';
import 'package:celebi/view/collection/service/ICollectionService.dart';
import 'package:celebi/view/collection/service/collection_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/constants/enums/preferences_keys.dart';
part 'collection_view_model.g.dart';

class CollectionViewModel = _CollectionViewModelBase with _$CollectionViewModel;

abstract class _CollectionViewModelBase extends BaseViewModel with Store {
  late final ICollectionService service;

  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() {
    service = CollectionService(network);
    fetchCollections();
  }

  @observable
  bool isLoading = false;

  @observable
  List<CollectionModel?>? collections;

  Future<void> fetchCollections() async {
    _changeLoading();
    String? token = cacheManager.getStringValue(PreferencesKeys.TOKEN);
    token ??= cacheManager.getStringValue(PreferencesKeys.CACHETOKEN);

    final response = await service.fetchCollections(token ?? "");
    if (response != null) {
      collections = response.reversed.toList();
    }
    _changeLoading();
  }

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }
}
