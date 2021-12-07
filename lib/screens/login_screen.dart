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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.language),
                  label: Text('EN'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
