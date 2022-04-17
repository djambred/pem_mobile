import 'package:flutter/material.dart';
import 'route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RoutePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

