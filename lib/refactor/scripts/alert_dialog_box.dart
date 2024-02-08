//OnPressed(), Navigator.pop()
import 'package:flutter/material.dart';

class AlertDialogBox extends StatelessWidget {
  // const MyApp({Key? key, required this.title}):super(key: key);
  const AlertDialogBox({Key? key}) : super(key: key);

  // final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("All About Flutter"),
      ),
      body: Center(
        child: GestureDetector(
            // child: ElevatedButton(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      //do not use const at AlertDialog()
                      title: const Text('Alert Dialog Tutorial'),
                      content: const Text('Welcome to AllAboutflutter.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pop(); //Invalid const will be prompt here
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  });
            },
            //  ButtonStyle(
            //       padding: MaterialStatePropertyAll(
            //         EdgeInsets.all(15.0),
            //       ),
            //       backgroundColor: MaterialStatePropertyAll(Colors.red)),

            child: const SizedBox(
                child: Card(
              color: Colors.red,
              child: Text(
                'Show Alert Dialog',
                style: TextStyle(color: Colors.black),
              ),
            ))),
      ),
    );
  }
}
