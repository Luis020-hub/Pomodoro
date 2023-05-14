// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'counter.store.g.dart';

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 20;

  @action
  void incrementar() {
    counter++;
  }
}
