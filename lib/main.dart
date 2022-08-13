import 'package:cat_task/self_table_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [0.0, 1.0],
              colors: [
                Color(0xFFFFFFFF),
                Color(0xFFFBE9E7),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            )),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: const Color(0xFFFF6F43),
            unselectedItemColor: const Color(0xDE000000),
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(SelfTableIcons.menu), label: 'Cats'),
              BottomNavigationBarItem(
                  icon: Icon(SelfTableIcons.face), label: 'Me'),
            ],
          ),
        ),
      ),
    );
  }
}
