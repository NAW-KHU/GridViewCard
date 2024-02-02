//Navigation.pop()

import 'package:flutter/material.dart';
import 'package:grid_view_card/firstScreen.dart';
import 'package:grid_view_card/secondScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/firstScreen', //root page
    routes: {
      '/firstScreen': (context) => const FirstScreen(),
      '/secondScreen': (context) => const SecondScreen(),
    },
  ));
}
