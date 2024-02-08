//To launch URL in external browser
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Text App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Open URL in Browser"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 200,
          width: double.infinity,
          color: Colors.redAccent[50],
          child: Center(
            child: ElevatedButton.icon(
              icon:const Icon(Icons.link),
                label: const Text("Open FlutterCampus.com"),
                onPressed: () async {
                  String urlString =
                      "https://www.fluttercampus.com";
                  Uri url = Uri.parse(urlString);

                  if(await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch the url';
                  }
                }
            ),
          ),
        ),
      ),
    );
  }
}
