import 'package:flutter_bloc/flutter_bloc.dart';

class RaundCubit extends Cubit<RaundCubitState> {
  RaundCubit() : super(RaundCubitState(san: 0));
  void koshot() {
    int newSan = state.san + 1;
    if (newSan > 5) {
      newSan = 0;
    }
    emit(RaundCubitState(san: newSan));
  }

  void nol() {
    emit(RaundCubitState(san: 0));
  }
}

class RaundCubitState {
  final int san;
  RaundCubitState({required this.san});
}
