import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qraan/features/tassbeh/cubit/tassbeh_state.dart';

class TassbehCubit extends Cubit<TassbehState> {
  static TassbehCubit get(context) => BlocProvider.of(context);
  TassbehCubit() : super(TassbehInitial());
  String tasbehString = 'سبحان اللة';
  int number = 0;
  updateTasbehString({required String newString}) {
    tasbehString = newString;
    resetTassbehCounter();
    emit(TassbehString());
  }

  updateTassbehCounter() {
    number = number + 1;
    emit(TassbehCount());
  }

  resetTassbehCounter() {
    number = 0;
    emit(TassbehCount());
  }
}
