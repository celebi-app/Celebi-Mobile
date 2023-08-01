// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CollectionViewModel on _CollectionViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CollectionViewModelBase.isLoading', context: context);

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

  late final _$collectionsAtom =
      Atom(name: '_CollectionViewModelBase.collections', context: context);

  @override
  List<CollectionModel?>? get collections {
    _$collectionsAtom.reportRead();
    return super.collections;
  }

  @override
  set collections(List<CollectionModel?>? value) {
    _$collectionsAtom.reportWrite(value, super.collections, () {
      super.collections = value;
    });
  }

  late final _$_CollectionViewModelBaseActionController =
      ActionController(name: '_CollectionViewModelBase', context: context);

  @override
  void _changeLoading() {
    final _$actionInfo = _$_CollectionViewModelBaseActionController.startAction(
        name: '_CollectionViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_CollectionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
collections: ${collections}
    ''';
  }
}
