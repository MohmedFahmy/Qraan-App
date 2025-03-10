import 'package:flutter/material.dart';
import 'package:qraan/core/style/style.dart';
import 'package:qraan/project%20data/data/sour.dart';

import '../../../tassbeh/view/screen/tassbeh_screen.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ToolTile(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return FractionallySizedBox(
                    heightFactor:
                        2.0, // Adjust this value to control the height
                    child: Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.brown[50],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Expanded(
                        child: ListView(children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Image.asset(
                              'images/pngegg.png',
                            ),
                          ),
                          // CircleAvatar(
                          //   radius: 150,
                          //   backgroundImage: AssetImage('images/pngegg.png'),
                          // ),
                          Text(
                            sour[114].displayqoran,
                            style: myStyle.copyWith(
                                fontSize: 20, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ),
                    ),
                  );
                },
              );
            },
            imagePath: 'images/prayer.png',
            title: 'دعاء خاتم القرآن',
          ),
          SizedBox(height: 20),
          ToolTile(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return FractionallySizedBox(
                    heightFactor:
                        1.8, // Adjust this value to control the height
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'This is a widget shown in half of the screen',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            imagePath: 'images/tarqim.png',
            title: 'ادوات الترقيم',
          ),
          SizedBox(height: 20),
          ToolTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TassbehScreen()));
            },
            imagePath: 'images/tasbeh.png',
            title: 'تطبيق التسبيح',
          ),
        ],
      ),
    );
  }
}

class ToolTile extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String title;

  const ToolTile({
    required this.onTap,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(imagePath),
      title: Text(
        title,
        style: mySecondStyle,
      ),
    );
  }
}
