import 'package:flutter/material.dart';
import 'file:///D:/Users/marce/AndroidStudioProjects/learning_english/lib/screens/AnimalsScreen.dart';
import 'package:learning_english/screens/NumbersScreen.dart';
import 'package:learning_english/screens/VocalsScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0
    );
  }

  List<Widget> _getScreenList() {
    List<Widget> screens = [
      AnimalsScreen(),
      NumbersScreen(),
      VocalsScreen()
    ];
    return screens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning English"),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 4,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          tabs: [
            Tab(
              text: "Animals",
            ),
            Tab(
              text: "Numbers",
            ),
            Tab(
              text: "Vocals",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _getScreenList(),
      ),
    );
  }
}
