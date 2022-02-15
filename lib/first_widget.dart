import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:modasanirim/detail.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa(PageStorageKey<String> keyAna, {Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          //profil listesi ut kısım
          Container(
            color: Colors.transparent,
            height: 110,
            width: double.infinity,
            child: ListView(
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemani("assets/b.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/gf.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/j.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/ronaldo.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/s.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/b.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/gf.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/j.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/ronaldo.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/s.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/t.jpg", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  listeElemani("assets/4.png", "assets/2.png"),
                  const SizedBox(
                    width: 10,
                  )
                ]),
          ),
          //card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(16),
                height: 515,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/b.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.of(context).size.width - 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Cristiano Ronaldo",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "cr7",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 22,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: "assets/s.jpg")));
                          },
                          child: Hero(
                            tag: "assets/s.jpg",
                            child: Container(
                              height: 260,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                      image: const AssetImage("assets/s.jpg"),
                                      fit: BoxFit.cover,
                                      scale: 0.2)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        Detay(imgPath: "assets/t.jpg")));
                              },
                              child: Hero(
                                tag: "assets/t.jpg",
                                child: Container(
                                  height: 127.5,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image:
                                              const AssetImage("assets/t.jpg"),
                                          fit: BoxFit.cover,
                                          scale: 0.2)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        Detay(imgPath: "assets/j.jpg")));
                              },
                              child: Hero(
                                tag: "assets/j.jpg",
                                child: Container(
                                  height: 127.5,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: AssetImage("assets/j.jpg"),
                                          fit: BoxFit.cover,
                                          scale: 0.2)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          child: const Center(
                            child: Text(
                              "#firstapp",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.5)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          child: const Center(
                            child: Text(
                              "#tag",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.5)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 1.5,
                      height: 5,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.reply,
                                color: Colors.brown.withOpacity(0.4),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "3.7k",
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 16),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.chat,
                                color: Colors.brown.withOpacity(0.4),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "421",
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "15.3k",
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.fill)),
            ),
            Positioned(
              top: 35,
              left: 35,
              child: Container(
                alignment: Alignment.bottomRight,
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.fill)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.brown),
          child: const Text(
            "Folow",
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
