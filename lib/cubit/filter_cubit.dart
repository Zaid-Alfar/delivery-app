import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<Set<int>> {
  FilterCubit() : super({});

  void toggleIndex(int index) {
    final updateIndices = Set<int>.from(state);
    if (updateIndices.contains(index)) {
      updateIndices.remove(index);
    } else {
      updateIndices.add(index);
    }
    emit(updateIndices);
  }
}
