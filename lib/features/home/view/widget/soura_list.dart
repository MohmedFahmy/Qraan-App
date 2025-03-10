import 'package:flutter/material.dart';
import 'package:qraan/core/style/style.dart';

class SouraList extends StatelessWidget {
  const SouraList(
      {super.key,
      required this.image,
      required this.souraName,
      required this.ayatNum,required this.onPress});
  final String image;
  final String souraName;
  final String ayatNum;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPress,
        child: Card(
          color: Colors.brown[50],
          elevation: 6.0,
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      souraName,
                      style: myStyle,
                    ),
                    Spacer(),
                    Image.asset(
                      image,
                      width: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    Text(
                      'الايات',
                      style: mySecondStyle,
                    ),
                    Text(ayatNum),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
