import 'package:flutter_bloc/flutter_bloc.dart';

class Raund1Cubit extends Cubit<Raund1CubitState> {
  Raund1Cubit() : super(Raund1CubitState(san1: 0));
  void koshot1() {
    int newSan1 = state.san1 + 1;
    if (newSan1 > 5) {
      newSan1 = 0;
    }
    emit(Raund1CubitState(san1: newSan1));
  }

  void nol1() {
    emit(Raund1CubitState(san1: 0));
  }
}

class Raund1CubitState {
  final int san1;
  Raund1CubitState({required this.san1});
}
