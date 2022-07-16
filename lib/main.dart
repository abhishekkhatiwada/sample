import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:loginsignup/startup%20screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.amber,
      home: HomeScreen(),
    );
  }
}
