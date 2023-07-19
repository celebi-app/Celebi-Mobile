// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TestViewModel on TestViewModelBase, Store {
  late final _$fakeAtom =
      Atom(name: 'TestViewModelBase.fake', context: context);

  @override
  PholderModel get fake {
    _$fakeAtom.reportRead();
    return super.fake;
  }

  @override
  set fake(PholderModel value) {
    _$fakeAtom.reportWrite(value, super.fake, () {
      super.fake = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'TestViewModelBase.isLoading', context: context);

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

  late final _$requestAsyncAction =
      AsyncAction('TestViewModelBase.request', context: context);

  @override
  Future<void> request() {
    return _$requestAsyncAction.run(() => super.request());
  }

  late final _$TestViewModelBaseActionController =
      ActionController(name: 'TestViewModelBase', context: context);

  @override
  void _changeLoading() {
    final _$actionInfo = _$TestViewModelBaseActionController.startAction(
        name: 'TestViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$TestViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fake: ${fake},
isLoading: ${isLoading}
    ''';
  }
}
