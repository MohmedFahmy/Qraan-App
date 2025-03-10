import 'package:flutter/material.dart';
import 'package:qraan/features/home/view/screen/sour_screen.dart';
import 'package:qraan/features/home/view/screen/tools_screen.dart';
import 'package:qraan/features/home/view/widget/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          endDrawer: MyDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.brown[200],
            title: Text('القرآن الكريم'),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              labelStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              indicatorColor: Colors.white, // Color of the indicator
              tabs: [
                Tab(
                  text: 'السور',
                ),
                Tab(
                  text: 'الادوات',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [SourScreen(), ToolsScreen()],
          ),
        ),
      ),
    );
  }
}
