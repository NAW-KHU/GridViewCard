import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Hello to First Screen",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context,'/secondScreen');
            },
            child:const Text(
              "First Screen",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}