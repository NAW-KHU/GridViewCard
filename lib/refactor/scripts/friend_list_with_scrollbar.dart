import 'package:flutter/material.dart';

class FriendListWithScrollBar extends StatefulWidget {
  const FriendListWithScrollBar({super.key});
  @override
  State<FriendListWithScrollBar> createState() =>
      _FriendListWithScrollBarState();
}

List<String> image = [
  'assets/images/man1.jpeg',
  'assets/images/man2.jpeg',
  'assets/images/woman1.jpeg',
  'assets/images/man3.jpg',
  'assets/images/woman2.jpeg',
  'assets/images/woman3.png',
  'assets/images/woman3.png',
  'assets/images/woman3.png',
];
final ScrollController _scrollController = ScrollController();

// List<String> greeting = ['Hello'];
List<String> name = [
  'Jimmy',
  'Kelvin',
  'Delia',
  'Franklin',
  'Rosy',
  'Anna',
  'Debora',
  'Clara'
];

class _FriendListWithScrollBarState extends State<FriendListWithScrollBar> {
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
        body: Scrollbar(
          //Assign the scrollController to the controller property
          controller: _scrollController,
          // specify scrollbar properties such as thickness
          // Ensure the scrollbar is always visible
          thickness: 8.0, // Set the thickness of the scrollbar
          radius: const Radius.circular(20),
          scrollbarOrientation: ScrollbarOrientation.left,
          interactive: true,
          thumbVisibility: true,
          //Wrap the ListView.builder with a NotificationListener to handle scroll events
          child: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification notification) {
              if (notification is ScrollUpdateNotification) {
                _scrollController.jumpTo(notification.metrics.pixels);
              }
              return false;
            },
            child: ListView.builder(
                controller: _scrollController,
                itemCount: image.length,
                itemBuilder: (BuildContext context, int index) {
                  return card(image[index], name[index], context);
                }),
          ),
        ),
      ),
    );
  }

  Widget card(String image, String name, BuildContext context) {
    return Card(
      color: Colors.yellow[50],
      child: Expanded(
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
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
            ),
            Column(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
      ),
    );
  }
}
