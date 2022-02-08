import 'package:flutter/material.dart';

class ThirdWidget extends StatefulWidget {
  const ThirdWidget(PageStorageKey<String> keyThird, {Key? key}) : super(key: key);

  @override
  State<ThirdWidget> createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemExtent: 300,itemBuilder: (context, index){

       return Container(
         padding: const EdgeInsets.all(10),
         child: Material(
           elevation: 4,
           borderRadius: BorderRadius.circular(10),
           color: index % 2 == 0 ? Colors.pink.shade200 : Colors.black,
           child: Center(child: Text(index.toString()),),
         ),
       );

     });
  }
}
