// ignore_for_file: constant_identifier_names, library_private_types_in_public_api

import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum BreakType { WORK, REST }

abstract class _PomodoroStore with Store {
  @observable
  bool started = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @observable
  BreakType breakType = BreakType.REST;

  Timer? counter;

  @action
  void start() {
    started = true;
    counter = Timer.periodic(Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _swapeBreakTime();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    started = false;
    counter?.cancel();
  }

  @action
  void restart() {
    stop();
  }

  @action
  void incTimeWork() {
    workTime++;
  }

  @action
  void decTimeWork() {
    workTime--;
  }

  @action
  void incTimeRest() {
    restTime++;
  }

  @action
  void decTimeRest() {
    restTime--;
  }

  bool working() {
    return breakType == BreakType.WORK;
  }

  bool resting() {
    return breakType == BreakType.REST;
  }

  void _swapeBreakTime() {
    if (working()) {
      breakType = BreakType.REST;
      minutes = restTime;
    } else {
      breakType = BreakType.WORK;
      minutes = workTime;
    }
    seconds = 0;
  }
}
