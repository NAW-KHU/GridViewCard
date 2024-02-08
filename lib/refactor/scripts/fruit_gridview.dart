import 'package:flutter/material.dart';

class FruitGridView extends StatelessWidget {
  const FruitGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
            child: GridView.builder(
                itemCount: images.length, //to fix RangeError(index)
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, //column counts
                  crossAxisSpacing: 10.0, //column spacing
                  mainAxisSpacing: 5.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(images[index]);
                })),
      ),
    );
  }
}
