import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qraan/features/home/cubit/cubit_state.dart';
import 'package:qraan/features/home/cubit/home_cubit.dart';
import 'package:qraan/features/home/view/screen/ayat_screen.dart';
import 'package:qraan/features/home/view/widget/soura_list.dart';
import 'package:qraan/project%20data/data/sour.dart';

class SourScreen extends StatelessWidget {
  const SourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int myIndex = 0;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocConsumer<HomeCubit, CubitState>(
          listener: (context, state) {
            if (state is UpdateState) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AyatScreen(
                            soura: sour[myIndex],
                          )));
            }
          },
          builder: (context, state) {
            HomeCubit cubit = BlocProvider.of(context);
            return Scaffold(
                body: ListView.builder(
              itemCount: sour.length - 1,
              itemBuilder: (context, index) => SouraList(
                onPress: () {
                  myIndex = index;
                  cubit.changeState();
                },
                image: sour[index].souraType == 'mkaa'
                    ? 'images/kaaba.png'
                    : 'images/madena.jpg',
                souraName: sour[index].name,
                ayatNum: sour[index].ayat.toString(),
              ),
            ));
          },
        ),
      ),
    );
  }
}
