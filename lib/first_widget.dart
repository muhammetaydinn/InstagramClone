import 'package:flutter/material.dart';

class FirstWidget extends StatefulWidget {
  FirstWidget(PageStorageKey<String> keyFirst, {Key? key}) : super(key: key);

  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemExtent: 300,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(10),
              color: index % 2 == 0
                  ? Colors.orangeAccent.shade200
                  : Colors.indigo.shade200,
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          );
        });
  }
}
