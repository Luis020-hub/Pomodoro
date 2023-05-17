import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { work, rest }

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
  IntervalType intervalType = IntervalType.work;

  Timer? counter;

  @action
  void start() {
    started = true;
    counter = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (minutes == 0 && seconds == 0) {
        _swapIntervalTime();
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
  void incWorkTime() {
    workTime++;
  }

  @action
  void decWorkTime() {
    workTime--;
  }

  @action
  void incRestTime() {
    restTime++;
  }

  @action
  void decRestTime() {
    restTime--;
  }

  bool working() {
    return intervalType == IntervalType.work;
  }

  bool estaDescansando() {
    return intervalType == IntervalType.rest;
  }

  void _swapIntervalTime() {
    if (working()) {
      intervalType = IntervalType.rest;
      minutes = restTime;
    } else {
      intervalType = IntervalType.work;
      minutes = workTime;
    }
    seconds = 0;
  }
}
