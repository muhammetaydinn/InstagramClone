import 'package:flutter/material.dart';
import 'package:modasanirim/first_widget.dart';
import 'package:modasanirim/fourth_widget.dart';
import 'package:modasanirim/second_widget.dart';
import 'package:modasanirim/third_widget.dart';

void main(List<String> args) {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  late List<Widget> tumSayfalar;
  late FirstWidget firstWidget;
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
    firstWidget = FirstWidget(keyFirst);
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
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
