// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @action
  void incrementarTempoTrabalho() {
    workTime++;
  }

  @action
  void decrementarTempoTrabalho() {
    workTime--;
  }

  @action
  void incrementarTempoDescanso() {
    restTime++;
  }

  @action
  void decrementarTempoDescanso() {
    restTime--;
  }
}