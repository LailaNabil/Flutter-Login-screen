import 'package:flutter/material.dart';
import 'package:login_screen/widgets/background.dart';
import 'package:login_screen/widgets/customElevatedButton.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImageWithGradient(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                // child: CustomElevatedButton(
                //   onPressed: (){},
                //   label: 'EN',
                //   icon: Icons.language,
                //   iconExists: true,
                // ),
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
              ),
              Center(
                  child: Image.asset(
                'assets/images/logo_en.png',
                width: screenSize.width * 0.9,
              )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: 'Enter Phone Number',
                          labelStyle:
                              TextStyle(color: Colors.white70, fontSize: 28)),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Enter Password',
                          labelStyle:
                              TextStyle(color: Colors.white70, fontSize: 28)),
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                onPressed: () {},
                label: 'Login',
                extraHorizontalPadding: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
