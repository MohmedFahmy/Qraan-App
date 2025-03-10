import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qraan/core/style/style.dart';
import 'package:qraan/features/tassbeh/cubit/tassbeh_cubit.dart';

import '../../cubit/tassbeh_state.dart';

class TassbehScreen extends StatelessWidget {
  const TassbehScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TassbehCubit(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown[200],
            title: Text(
              'التسبيح',
              style: myStyle.copyWith(color: Colors.black),
            ),
          ),
          body: BlocBuilder<TassbehCubit, TassbehState>(
            builder: (context, state) {
              return Center(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          TassbehCubit.get(context).tasbehString,
                          style: myStyle,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.brown[50],
                      child: Text(
                        TassbehCubit.get(context).number.toString(),
                        style: myStyle,
                      ),
                    ),
                    SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.brown[200],
                            minimumSize: Size(50, 50),
                          ),
                          onPressed: () {
                            context.read<TassbehCubit>().updateTassbehCounter();
                          },
                          icon: Icon(Icons.add),
                        ),
                        IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.brown[200],
                            minimumSize: Size(50, 50),
                          ),
                          onPressed: () {
                            TassbehCubit.get(context).resetTassbehCounter();
                          },
                          icon: Icon(Icons.restore),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TassbehButton(
                          text: 'سبحان الله',
                          onPress: () {
                            context
                                .read<TassbehCubit>()
                                .updateTasbehString(newString: 'سبحان الله');
                          },
                        ),
                        TassbehButton(
                          text: "استغفر الله",
                          onPress: () {
                            context
                                .read<TassbehCubit>()
                                .updateTasbehString(newString: 'استغفر الله');
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TassbehButton(
                          text: 'الله أكبر',
                          onPress: () {
                            context
                                .read<TassbehCubit>()
                                .updateTasbehString(newString: 'الله أكبر');
                          },
                        ),
                        TassbehButton(
                          text: "الحمد لله",
                          onPress: () {
                            context
                                .read<TassbehCubit>()
                                .updateTasbehString(newString: 'الحمد لله');
                          },
                        ),
                        TassbehButton(
                          text: "لا إله إلا الله",
                          onPress: () {
                            context.read<TassbehCubit>().updateTasbehString(
                                newString: 'لا إله إلا الله');
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class TassbehButton extends StatelessWidget {
  const TassbehButton({
    super.key,
    required this.text,
    required this.onPress,
  });
  final String text;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: myStyle,
          ),
        ),
      ),
    );
  }
}
