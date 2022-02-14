import 'package:flutter/material.dart';

class SecondWidget extends StatefulWidget {
  const SecondWidget(PageStorageKey<String> keySecond, { Key? key }) : super(key: key);

  @override
  _SecondWidgetState createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemExtent: 300,itemBuilder: (context, index){

       return Container(
         padding: const EdgeInsets.all(10),
         child: Material(
           elevation: 4,
           borderRadius: BorderRadius.circular(10),
           color: index % 2 == 0 ? Colors.purple.shade200 : Colors.green.shade200,
           child: Center(child: Text(index.toString()),),
         ),
       );

     });
  }
}