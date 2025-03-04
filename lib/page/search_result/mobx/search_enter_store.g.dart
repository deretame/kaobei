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

  late final _$searchTypeAtom = Atom(
    name: '_SearchEnterStore.searchType',
    context: context,
  );

  @override
  SearchType get searchType {
    _$searchTypeAtom.reportRead();
    return super.searchType;
  }

  @override
  set searchType(SearchType value) {
    _$searchTypeAtom.reportWrite(value, super.searchType, () {
      super.searchType = value;
    });
  }

  late final _$qTypeAtom = Atom(
    name: '_SearchEnterStore.qType',
    context: context,
  );

  @override
  QType get qType {
    _$qTypeAtom.reportRead();
    return super.qType;
  }

  @override
  set qType(QType value) {
    _$qTypeAtom.reportWrite(value, super.qType, () {
      super.qType = value;
    });
  }

  late final _$extendAtom = Atom(
    name: '_SearchEnterStore.extend',
    context: context,
  );

  @override
  String get extend {
    _$extendAtom.reportRead();
    return super.extend;
  }

  @override
  set extend(String value) {
    _$extendAtom.reportWrite(value, super.extend, () {
      super.extend = value;
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
  void setSearchType(SearchType value) {
    final _$actionInfo = _$_SearchEnterStoreActionController.startAction(
      name: '_SearchEnterStore.setSearchType',
    );
    try {
      return super.setSearchType(value);
    } finally {
      _$_SearchEnterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setQType(QType value) {
    final _$actionInfo = _$_SearchEnterStoreActionController.startAction(
      name: '_SearchEnterStore.setQType',
    );
    try {
      return super.setQType(value);
    } finally {
      _$_SearchEnterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setExtend(String value) {
    final _$actionInfo = _$_SearchEnterStoreActionController.startAction(
      name: '_SearchEnterStore.setExtend',
    );
    try {
      return super.setExtend(value);
    } finally {
      _$_SearchEnterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
keyword: ${keyword},
searchType: ${searchType},
qType: ${qType},
extend: ${extend}
    ''';
  }
}
