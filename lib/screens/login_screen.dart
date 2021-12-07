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
                padding: const EdgeInsets.only(left: 30.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.language,
                    size: 30,
                  ),
                  label: Text(
                    'EN',
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
