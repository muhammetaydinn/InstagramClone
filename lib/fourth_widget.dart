import 'package:flutter/material.dart';

class FourthWidget extends StatefulWidget {
  const FourthWidget(PageStorageKey<String> keyFourth, { Key? key }) : super(key: key);

  @override
  _FourthWidgetState createState() => _FourthWidgetState();
}

class _FourthWidgetState extends State<FourthWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemExtent: 300,itemBuilder: (context, index){

       return Container(
         padding: const EdgeInsets.all(10),
         child: Material(
           elevation: 4,
           borderRadius: BorderRadius.circular(10),
           color: index % 2 == 0 ? Colors.orangeAccent.shade200 : Colors.red.shade500,
           child: Center(child: Text(index.toString()),),
         ),
       );

     }
     );
  }
}