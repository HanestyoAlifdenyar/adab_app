import 'package:adab_app/screens/parent_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Altitude App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        canvasColor: Colors.green.shade100,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ParentScreen(),
    );
  }
}
