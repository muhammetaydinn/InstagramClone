import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:modasanirim/detail.dart';
import 'package:modasanirim/first_widget.dart';
import 'package:modasanirim/fourth_widget.dart';
import 'package:modasanirim/second_widget.dart';
import 'package:modasanirim/third_widget.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BarGonder(),
    );
  }
}

class BarGonder extends StatefulWidget {
  const BarGonder({Key? key}) : super(key: key);

  @override
  State<BarGonder> createState() => _BarGonderState();
}

class _BarGonderState extends State<BarGonder> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  late List<Widget> tumSayfalar;
  late AnaSayfa firstWidget;
  late SecondWidget secondWidget;
  late ThirdWidget thirdWidget;
  late FourthWidget fourthWidget;

  var keyFirst = const PageStorageKey("key_first");
  var keySecond = const PageStorageKey("key_second");
  var keyThird = const PageStorageKey("key_third");
  var keyFourth = const PageStorageKey("key_fourth");

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    firstWidget = AnaSayfa(keyFirst);
    secondWidget = SecondWidget(keySecond);
    thirdWidget = ThirdWidget(keyThird);
    fourthWidget = FourthWidget(keyFourth);
    tumSayfalar = [firstWidget, secondWidget, thirdWidget, fourthWidget];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.photo_camera,
              ),
              color: Colors.black,
              onPressed: () {}),
        ],
        title: Text(
          "App",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: tumSayfalar[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.search),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.add_box_outlined),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.favorite_border),
            backgroundColor: Colors.grey,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 30),
        onTap: _onItemTapped,
      ),
    );
  }
}
