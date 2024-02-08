import 'package:flutter/material.dart';

class FruitCardList extends StatefulWidget {
  const FruitCardList({super.key});

  @override
  State<FruitCardList> createState() => _FruitCardListState();
}

class _FruitCardListState extends State<FruitCardList> {
  List<String> src = [
    'assets/images/apples.jpeg',
    'assets/images/bananas.jpeg',
    'assets/images/cherries.jpeg',
    'assets/images/grapes.png',
    'assets/images/oranges.jpeg',
    'assets/images/peaches.jpeg',
    'assets/images/Plum.jpg',
    'assets/images/rasberries.jpeg',
    'assets/images/strawberries.jpeg',
  ];
  List<String> title = [
    "Apples",
    "Bananas",
    "Cherries",
    "Grapes",
    "Oranges",
    "Peaches",
    "Plum",
    "Rasberries",
    "Strawberries"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Text('Card List'),
        ),
        body: ListView.builder(
            itemCount: src.length,
            itemBuilder: (BuildContext context, int index) {
              return card(src[index], title[index], context);
            }),
      ),
    );
  }

  Widget card(String src, String title, BuildContext context) {
    return Card(
        color: Colors.yellow[50],
        elevation: 8.0,
        margin: const EdgeInsets.all(4.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              src,
              height: MediaQuery.of(context).size.width * (3 / 4),
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Text(
            title,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ]));
  }
}
