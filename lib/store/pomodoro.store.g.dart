// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$tempoTrabalhoAtom =
      Atom(name: '_PomodoroStore.workTime', context: context);

  @override
  int get workTime {
    _$tempoTrabalhoAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$tempoTrabalhoAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  late final _$tempoDescansoAtom =
      Atom(name: '_PomodoroStore.restTime', context: context);

  @override
  int get restTime {
    _$tempoDescansoAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$tempoDescansoAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void incTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incTimeWork');
    try {
      return super.incTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decTimeWork');
    try {
      return super.decTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incTimeRest');
    try {
      return super.incTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decTimeRest');
    try {
      return super.decTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workTime: ${workTime},
restTime: ${restTime}
    ''';
  }
}
