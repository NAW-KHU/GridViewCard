import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
//   Widget build(BuildContext context) {
//     // String src =
//     //     'https://cdn.pixabay.com/photo/2021/06/01/07/03/sparrow-6300790_960_720.jpg';
//     String title = 'Apples';
// //https://pixabay.com/users/schauhi-2509795/

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//       appBar: AppBar(
//         leading: const Icon(Icons.menu),
//         title: const Text('Cards List',
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//         )),
//         backgroundColor: Colors.blue[300],
//       ),
//       body: ListView(
//         children: <Widget>[
//           Card(
//             child: Column(
//               children: [
//                 // Image.network(src),
//                 Image.asset('assets/images/apples.jpeg'),
//                 Text(title,
//                 style: const TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                  ),),
//               ],
//             ),
//           ),
//         ],
//       )
//     ));
//   }

  List<String> src = [
    'assets/images/apples.jpeg',
    'assets/images/bananas.jpeg',
    'assets/images/cherries.jpeg',
    'assets/images/grapes.png',
    'assets/images/oranges.jpeg',
    'assets/images/peaches.jpeg',
    'assets/images/Plum.jpg',
    'assets/images/rasberries.jpeg',
    'assets/images/strawberries.jpeg',
  ];
  List<String> title = [
    "Apples",
    "Bananas",
    "Cherries",
    "Grapes",
    "Oranges",
    "Peaches",
    "Plum",
    "Rasberries",
    "Strawberries"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Text('Card List'),
        ),
        body: ListView.builder(
          itemCount: src.length,
          itemBuilder: (BuildContext context, int index)
          
          {
            return card(src[index], title[index], context);
          }),
      ),
    );
  }

  Widget card(String src, String title, BuildContext context) {
    return Card(
        color: Colors.yellow[50],
        elevation: 8.0,
        margin: const EdgeInsets.all(4.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              src,
              height: MediaQuery.of(context).size.width * (3 / 4),
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Text(
            title,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ])
       
        );
  }
}
