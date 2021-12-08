import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

import 'package:login_screen/widgets/background.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {
  bool isEn ;

  // @override
  // void initState() {
  //   context.locale = Locale('en', 'UK');
  //   isEn = true;
  //   super.initState();
  // }
  //

  void _toggleLanguage(){
    print('toggle');
    print(context.locale);
    setState(() {
      context.locale = context.locale == Locale('en', 'UK') ? Locale('ar', 'EG'):  Locale('en', 'UK');
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    print('height ${screenSize.height}');
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImageWithGradient(),
          SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: (screenSize.height / 13.0).ceilToDouble(),
                      left: 30.0),
                  child: LanguageButton(_toggleLanguage),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Image.asset(
                        'logo'.tr().toString(),
                    width: screenSize.width * 0.8,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15),
                  child: LoginForm(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, left: 30.0, right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SignupButton(),
                      ForgotPasswordButton(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool passwordObscure;

  @override
  void initState() {
    passwordObscure = true;
    super.initState();
  }

  void _togglePasswordObscure(){
    setState(() {
      passwordObscure = !passwordObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: TextStyle(color: Colors.white, fontSize: 25),
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              labelText: 'Enter Phone Number',
              labelStyle: TextStyle(color: Colors.white70, fontSize: 25)),
        ),
        Row(
          // alignment: Alignment.centerRight,
          children: [
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 25),
                obscureText: passwordObscure,
                decoration: InputDecoration(
                    labelText: 'Enter Password',
                    labelStyle: TextStyle(color: Colors.white70, fontSize: 25)),
              ),
            ),
            IconButton(
              onPressed: _togglePasswordObscure,
              icon: Icon(
                  passwordObscure ? Icons.visibility : Icons.visibility_off),
              color: Colors.white,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: LoginButton(),
          ),
        ),
      ],
    );
  }
}

class LanguageButton extends StatelessWidget {
  final Function toggleLanguage;

  LanguageButton(this.toggleLanguage);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: toggleLanguage,
      icon: Icon(
        Icons.language,
        size: 30,
      ),
      label: Text(
        'EN',
        style: TextStyle(fontSize: 22),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 10, vertical: 12)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Login',
        style: TextStyle(fontSize: 20),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 30, vertical: 12)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Forgot password',
        style: TextStyle(fontSize: 18, color: Colors.white70),
      ),
    );
  }
}

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Sign up',
        style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 30, vertical: 12)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          backgroundColor: MaterialStateProperty.all(Colors.white)),
    );
  }
}
