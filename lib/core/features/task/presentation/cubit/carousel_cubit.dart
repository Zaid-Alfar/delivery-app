

import 'package:flutter_bloc/flutter_bloc.dart';


part 'carousel_state.dart';

class CarouselCubit extends Cubit<int> {
  CarouselCubit() : super(0);

  void updateIndex(int index) => emit(index);
}
