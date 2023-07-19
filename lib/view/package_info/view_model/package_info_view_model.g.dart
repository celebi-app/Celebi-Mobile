// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_info_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PackageInfoViewModel on _PackageInfoViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_PackageInfoViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$infosAtom =
      Atom(name: '_PackageInfoViewModelBase.infos', context: context);

  @override
  List<PackageInfoModel?> get infos {
    _$infosAtom.reportRead();
    return super.infos;
  }

  @override
  set infos(List<PackageInfoModel?> value) {
    _$infosAtom.reportWrite(value, super.infos, () {
      super.infos = value;
    });
  }

  late final _$packageInfoModelAtom = Atom(
      name: '_PackageInfoViewModelBase.packageInfoModel', context: context);

  @override
  PackageInfoModel? get packageInfoModel {
    _$packageInfoModelAtom.reportRead();
    return super.packageInfoModel;
  }

  @override
  set packageInfoModel(PackageInfoModel? value) {
    _$packageInfoModelAtom.reportWrite(value, super.packageInfoModel, () {
      super.packageInfoModel = value;
    });
  }

  late final _$fetchPackageInfoAsyncAction = AsyncAction(
      '_PackageInfoViewModelBase.fetchPackageInfo',
      context: context);

  @override
  Future<void> fetchPackageInfo() {
    return _$fetchPackageInfoAsyncAction.run(() => super.fetchPackageInfo());
  }

  late final _$_PackageInfoViewModelBaseActionController =
      ActionController(name: '_PackageInfoViewModelBase', context: context);

  @override
  void _changeLoading() {
    final _$actionInfo = _$_PackageInfoViewModelBaseActionController
        .startAction(name: '_PackageInfoViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_PackageInfoViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
infos: ${infos},
packageInfoModel: ${packageInfoModel}
    ''';
  }
}
