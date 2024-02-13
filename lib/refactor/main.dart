import 'package:flutter/material.dart';
// import 'package:grid_view_card/refactor/scripts/alert_dialog_box.dart';
import 'package:grid_view_card/refactor/scripts/simple_login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {'/': (context)=> const Login()},
  ));
}

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home:Login(),
//     );
//   }
// }
