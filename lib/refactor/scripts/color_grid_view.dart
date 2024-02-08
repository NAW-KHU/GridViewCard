import 'package:flutter/material.dart';

class ColorGridView extends StatelessWidget {
  const ColorGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: const <Widget>[
              Card(
                color: Colors.teal,
                child: Center(
                  child: Text(
                    'Teal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                  color: Colors.cyan,
                  child: Center(
                    child: Text(
                      'Cyan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Card(
                  color: Colors.yellowAccent,
                  child: Center(
                    child: Text(
                      'YellowAccent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Card(
                color: Colors.deepOrange,
                child: Center(
                  child: Text(
                    'DeepOrange',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Red',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                  color: Colors.yellow,
                  child: Center(
                    child: Text(
                      'Yellow',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Card(
                  color: Colors.purpleAccent,
                  child: Center(
                    child: Text(
                      'PurpleAccent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Card(
                color: Colors.indigo,
                child: Center(
                  child: Text(
                    'Indigo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Black',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Colors.pinkAccent,
                child: Center(
                  child: Text(
                    'PinkAccent',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
