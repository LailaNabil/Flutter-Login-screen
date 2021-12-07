import 'package:flutter/material.dart';
import 'package:login_screen/widgets/background.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImageWithGradient(),
        ],
      ),
    );
  }
}
