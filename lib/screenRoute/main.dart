//Navigation.pop()
import 'package:flutter/material.dart';
import '../screenRoute/firstScreen.dart';
import '../screenRoute/secondSceen.dart';

void main() {
  runApp(MaterialApp(
  initialRoute: '/firstScreen', //root page
    routes: {
      '/firstScreen': (context) => const firstScreen(),
      '/secondScreen': (context) => const secondScreen(),
    },

  ));
}