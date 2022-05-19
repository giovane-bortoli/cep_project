// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on _ControllerBase, Store {
  Computed<bool>? _$isFoundComputed;

  @override
  bool get isFound => (_$isFoundComputed ??=
          Computed<bool>(() => super.isFound, name: '_ControllerBase.isFound'))
      .value;

  late final _$searchTextAtom =
      Atom(name: '_ControllerBase.searchText', context: context);

  @override
  String get searchText {
    _$searchTextAtom.reportRead();
    return super.searchText;
  }

  @override
  set searchText(String value) {
    _$searchTextAtom.reportWrite(value, super.searchText, () {
      super.searchText = value;
    });
  }

  late final _$addressResultAtom =
      Atom(name: '_ControllerBase.addressResult', context: context);

  @override
  AddressModel? get addressResult {
    _$addressResultAtom.reportRead();
    return super.addressResult;
  }

  @override
  set addressResult(AddressModel? value) {
    _$addressResultAtom.reportWrite(value, super.addressResult, () {
      super.addressResult = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_ControllerBase.isLoading', context: context);

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

  late final _$searchCepControllerAsyncAction =
      AsyncAction('_ControllerBase.searchCepController', context: context);

  @override
  Future<AddressModel?> searchCepController(String cep) {
    return _$searchCepControllerAsyncAction
        .run(() => super.searchCepController(cep));
  }

  late final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase', context: context);

  @override
  void setSearchText(String value) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.setSearchText');
    try {
      return super.setSearchText(value);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchText: ${searchText},
addressResult: ${addressResult},
isLoading: ${isLoading},
isFound: ${isFound}
    ''';
  }
}
