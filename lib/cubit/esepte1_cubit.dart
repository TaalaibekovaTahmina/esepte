import 'package:flutter_bloc/flutter_bloc.dart';

class Esepte1Cubit extends Cubit<Esepte1CubitState> {
  Esepte1Cubit() : super(Esepte1CubitState(count1: 0));

  void increment1Counter() {
    int newCount1 = state.count1 + 1;
    if (newCount1 > 33) {
      newCount1 = 0;
    }
    emit(Esepte1CubitState(count1: newCount1));
  }

  void decrementCounter1() {
    if (state.count1 > 0) {
      emit(Esepte1CubitState(count1: state.count1 - 1));
    }
  }

  void reset1Count() {
    emit(Esepte1CubitState(count1: 0));
  }
}

class Esepte1CubitState {
  final int count1;
  Esepte1CubitState({required this.count1});
}
