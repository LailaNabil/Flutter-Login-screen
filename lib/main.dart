import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import './screens/login_screen.dart';
import 'helper/customMaterialColor.dart';

void main() async{
  return runApp(
      EasyLocalization(
          path: 'assets/locales',
          supportedLocales: [Locale('en', 'UK'), Locale('ar', 'EG')],
          child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localization Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: CustomMaterialColor.generateCustomColor(35,21,84),
      ),
      home: LoginScreen(),
    );
  }
}

class DummyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        // Text('Hiii'),
        Column(
          children: [
            Text('Title'),
            Text('title'.tr().toString())
          ],
        ),
      ),
    );
  }
}
