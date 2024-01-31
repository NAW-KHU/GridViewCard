import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           leading: const Icon(Icons.menu),
//           title: const Text(
//             'Friend List',
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontFamily: 'Times New Roman',
//             ),
//           ),
//           backgroundColor: Colors.green[500],
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             // Expanded(
//             Card(
//               color: Colors.yellow[50],
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 textDirection: null,
//                 children: <Widget>[
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(100),
//                     child: Image.asset(
//                       'assets/images/cherries.jpeg',
//                       height: 90,
//                       width: 90,
//                       scale: 1.5,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Container(
//                     // width: 100,
//                     height: 100,
//                     decoration:
//                         BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
//                   ),
//                   const Column(
//                     // mainAxisSize: MainAxisSize.max,
//                     // mainAxisAlignment: MainAxisAlignment.start,
//                     textDirection: TextDirection.ltr,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Hello!',
//                         textAlign: TextAlign.left,
//                         // maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 15.0,
//                         ),
//                       ),
//                       Text(
//                         'I am Cherry, Wanna be your friend!',
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           fontSize: 15.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

List<String> image = [
  'assets/images/man1.jpeg',
  'assets/images/man2.jpeg',
  'assets/images/woman1.jpeg',
  'assets/images/man3.jpg',
  'assets/images/woman2.jpeg',
  'assets/images/woman3.png'
];

// List<String> greeting = ['Hello'];
List<String> name = ['Jimmy', 'Kelvin', 'Delia', 'Franklin', 'Rosy', 'Anna'];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.people),
            backgroundColor: Colors.green[500],
            title: const Text(
              "Friend List",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ),
          body: ListView.builder(
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return card(image[index], name[index], context);
              })),
    );
  }

  Widget card(String image, String name, BuildContext context) {
    return Card(
      color: Colors.yellow[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: null,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              height: 100,
              width: 100,
              scale: 1.5,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            // width: 100,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
          ),
          Column(
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Text(
                name,
                textAlign: TextAlign.left,
                // maxLines: 2,
                style: const TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const Text(
                'I am your friend',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


