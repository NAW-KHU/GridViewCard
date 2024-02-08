import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view_card/refactor/scripts/alert_dialog_box.dart';
import 'package:grid_view_card/refactor/scripts/friend_list.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FriendList(),
    );
  }
}
