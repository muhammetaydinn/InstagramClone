

import 'package:flutter/material.dart';

class FirstWidget extends StatefulWidget {
  const FirstWidget(PageStorageKey<String> keyFirst, {Key? key}) : super(key: key);

  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {

  double heightwidth = 70;
  double posth = 450;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              height: heightwidth,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  height: heightwidth,
                  width: heightwidth,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: const Color.fromARGB(255, 255, 196, 0)),
                    image: const DecorationImage(
                      image:  AssetImage(
                        'assets/ronaldo.jpg',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          SamplePost(heightwidth: heightwidth, posth: posth),
          SamplePost(heightwidth: heightwidth, posth: posth),
          SamplePost(heightwidth: heightwidth, posth: posth),
          SamplePost(heightwidth: heightwidth, posth: posth),
          SamplePost(heightwidth: heightwidth, posth: posth),
        ],
      ),
    );
  }
}

class SamplePost extends StatelessWidget {
  const SamplePost({
    Key? key,
    required this.heightwidth,
    required this.posth,
  }) : super(key: key);

  final double heightwidth;
  final double posth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, left: 15, top: 3, bottom: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: heightwidth / 8,
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  SizedBox(
                    width: heightwidth / 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/ronaldo.jpg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                      shape: BoxShape.circle,
                    )),
                  ),
                  const Expanded(
                      flex: 6,
                      child: ListTile(
                        title: Text(
                          'cr7',
                          textAlign: TextAlign.left,
                        ),
                        subtitle: Text('Cristiano Ronaldo'),
                      )),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      alignment: Alignment.topRight,
                    ),
                  ),
                  SizedBox(
                    width: heightwidth / 10,
                  ),
                ],
              )),
          Expanded(
            flex: 2,
            child: Container(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
                child: const Text(
                    "If an answer has already been provided,  it again. Doing so only . In the future, once you've gained a bit more reputation, you'll be able to upvote existing answers; that's the preferred way of validating  works.")),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 15),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image:  const DecorationImage(
                          image:  ExactAssetImage(
                            'assets/ronaldo.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                SizedBox(
                  width: heightwidth / 40,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                              margin: const EdgeInsets.only(right: 10, left: 5),
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image:  const DecorationImage(
                                  image:  ExactAssetImage(
                                    'assets/ronaldo.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ))),
                      SizedBox(
                        height: heightwidth / 40,
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                              margin: const EdgeInsets.only(
                                  right: 10, left: 5, top: 5),
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image:  const DecorationImage(
                                  image: ExactAssetImage(
                                    'assets/ronaldo.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ))),
                      SizedBox(
                        height: heightwidth / 5,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      height: posth,
    );
  }
}
