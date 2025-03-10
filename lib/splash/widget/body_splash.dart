import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:qraan/core/style/style.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://img.youm7.com/large/201806121027582758.jpg'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'مرحبا بكم في التطبيق القرآن الكريم',
            style: myStyle,
          ),
          SizedBox(
            height: 100,
          ),
          SpinKitFadingFour(
            color: Colors.brown,
            size: 100,
          )
        ],
      ),
    );
  }
}
