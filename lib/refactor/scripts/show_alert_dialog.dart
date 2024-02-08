import 'package:flutter/material.dart';

// ignore: camel_case_types
class ShowAlertDialog extends StatefulWidget {
  const ShowAlertDialog({super.key});

  // const showAlertDialog(required BuildContext context, {super.key, required context});

  @override
  State<ShowAlertDialog> createState() => _ShowAlertDialogState();
}

// ignore: camel_case_types
class _ShowAlertDialogState extends State<ShowAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Flutter Dialog Box'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('My Page'),
                ),
                body: Center(
                  child: TextButton(
                    child: const Text('POP'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            }));
          },
          child: const Text('Go to Another page'),
        ),
      ),
    );
  }
}
