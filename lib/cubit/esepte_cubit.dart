import 'package:flutter_bloc/flutter_bloc.dart';

class EsepteCubit extends Cubit<EsepteCubitState> {
  EsepteCubit() : super(EsepteCubitState(count: 0));

  void incrementCounter() {
    int newCount = state.count + 1;
    if (newCount > 33) {
      newCount = 0;
    }
    emit(EsepteCubitState(count: newCount));
  }

  void decrementCounter() {
    if (state.count > 0) {
      emit(EsepteCubitState(count: state.count - 1));
    }
  }

  void resetCount() {
    emit(EsepteCubitState(count: 0));
  }
}

class EsepteCubitState {
  final int count;
  EsepteCubitState({required this.count});
}
