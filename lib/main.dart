import 'package:flutter/material.dart';

import './screens/login_screen.dart';
import 'models/customMaterialColor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomMaterialColor.generateCustomColor(35,21,84),
      ),
      home: LoginScreen(),
    );
  }
}