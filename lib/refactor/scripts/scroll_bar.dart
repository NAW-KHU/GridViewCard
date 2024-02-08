// Scrollbar in ListView.builder
import 'package:flutter/material.dart';

class ScrollBar extends StatefulWidget {
  const ScrollBar({super.key});

  @override
  State<ScrollBar> createState() => _ScrollBarState();
}

class _ScrollBarState extends State<ScrollBar> {
  List items = List.generate(30, (index) => "Child item $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Scrollbar"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Scrollbar(
          thumbVisibility: true,
          thickness: 10,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Material(
                  child: ListTile(
                    title: Text(items[index]),
                    tileColor: Colors.yellow,
                  ),
                ),
              );
            },
            itemCount: items.length,
          ),
        ),
      ),
    );
  }
}
