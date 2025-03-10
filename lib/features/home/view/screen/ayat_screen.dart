import 'package:flutter/material.dart';
import 'package:qraan/core/style/style.dart';
import 'package:qraan/project%20data/model/ayat_sour.dart';

class AyatScreen extends StatelessWidget {
  const AyatScreen({super.key, required this.soura});
  final AyatSour soura;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown[200],
            title: Text(soura.name),
          ),
          body: Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.brown[50],
            ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    soura.displayqoran,
                    style: myStyle,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
