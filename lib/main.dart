import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import './screens/login_screen.dart';
import 'helper/customMaterialColor.dart';

void main() {
  runApp(
      MyApp()
      // EasyLocalization(
      // path: 'assets/locales',
      // supportedLocales: [Locale('en', 'UK'), Locale('es', 'SP')],
      // child: MyApp())
  );
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