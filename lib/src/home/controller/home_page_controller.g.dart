// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomePageControllerBase, Store {
  late final _$counterAtom =
      Atom(name: '_HomePageControllerBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_HomePageControllerBaseActionController =
      ActionController(name: '_HomePageControllerBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_HomePageControllerBaseActionController.startAction(
        name: '_HomePageControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
