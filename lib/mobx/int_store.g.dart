// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'int_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IntStore on _IntStore, Store {
  late final _$dateAtom = Atom(name: '_IntStore.date', context: context);

  @override
  int get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(int value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  late final _$_IntStoreActionController = ActionController(
    name: '_IntStore',
    context: context,
  );

  @override
  void setDate(int newDate) {
    final _$actionInfo = _$_IntStoreActionController.startAction(
      name: '_IntStore.setDate',
    );
    try {
      return super.setDate(newDate);
    } finally {
      _$_IntStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
date: ${date}
    ''';
  }
}
