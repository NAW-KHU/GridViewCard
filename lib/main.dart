import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key, required this.title}):super(key: key);
  const MyApp({Key? key}) : super(key: key);

  // final String title;
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                DefaultMaterialLocalizations.delegate,
                DefaultWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [Locale('en', 'US')],
              home: Scaffold(
                backgroundColor: Colors.amber[50],
                appBar: AppBar(
                  backgroundColor: Colors.red,
                  title: const Text("All About Flutter"),
                ),
                body: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              //do not use const at AlertDialog()
                              title: const Text('Alert Dialog Tutorial'),
                              content:
                                  const Text('Welcome to AllAboutflutter.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context); //Invalid const will be prompt here
                                    // child: const Text('Close'),
                                    
                                  },
                                  child: const Text('Close'),
                                ),
                              ],
                            );
                          }
                          );
                    },
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(15.0),
                        ),
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    child: const Text(
                      'Show Alert Dialog',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ));
        });
  }
  // return MaterialApp(
  //   debugShowCheckedModeBanner: false,
}
