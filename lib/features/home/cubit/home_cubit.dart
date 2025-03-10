import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qraan/features/home/cubit/cubit_state.dart';

class HomeCubit extends Cubit<CubitState> {
  HomeCubit() : super(InitialState());
  changeState() {
    emit(UpdateState());
  }
}
