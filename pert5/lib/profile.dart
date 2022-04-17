import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => ProfilePage(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(color: Colors.grey.shade200),
            child: Text(
                'Jefry is a career expert with a solid background education for Information Technology. Reliable and goal oriented with experience for system design topology architecture and providing comprehensive support for it.',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.orange)),
          )
      ),
    );
  }
}