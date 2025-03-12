// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_enter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchEnterStore on _SearchEnterStore, Store {
  late final _$keywordAtom = Atom(
    name: '_SearchEnterStore.keyword',
    context: context,
  );

  @override
  String get keyword {
    _$keywordAtom.reportRead();
    return super.keyword;
  }

  @override
  set keyword(String value) {
    _$keywordAtom.reportWrite(value, super.keyword, () {
      super.keyword = value;
    });
  }

  late final _$sortTypeAtom = Atom(
    name: '_SearchEnterStore.sortType',
    context: context,
  );

  @override
  int get sortType {
    _$sortTypeAtom.reportRead();
    return super.sortType;
  }

  @override
  set sortType(int value) {
    _$sortTypeAtom.reportWrite(value, super.sortType, () {
      super.sortType = value;
    });
  }

  late final _$_SearchEnterStoreActionController = ActionController(
    name: '_SearchEnterStore',
    context: context,
  );

  @override
  void setKeyword(String value) {
    final _$actionInfo = _$_SearchEnterStoreActionController.startAction(
      name: '_SearchEnterStore.setKeyword',
    );
    try {
      return super.setKeyword(value);
    } finally {
      _$_SearchEnterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSortType(int value) {
    final _$actionInfo = _$_SearchEnterStoreActionController.startAction(
      name: '_SearchEnterStore.setSortType',
    );
    try {
      return super.setSortType(value);
    } finally {
      _$_SearchEnterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
keyword: ${keyword},
sortType: ${sortType}
    ''';
  }
}
