import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text(
            'Friend List',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          ),
          backgroundColor: Colors.green[500],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Expanded(
              Card(
                color: Colors.yellow[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: null,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/cherries.jpeg',
                        height: 90,
                        width: 90,
                        scale: 1.5,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      // width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    const Column(
                      // mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello!',
                          textAlign: TextAlign.left,
                          // maxLines: 2,
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          'I am Cherry, Wanna be your friend!',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            // ),
         ],
        ),
      ),
    );
  }
}
