import 'package:flutter/material.dart';
import 'package:login_app/screens/get_started_page.dart';
import 'package:login_app/screens/lets_sign_in.dart';
import 'package:login_app/screens/sign_in_page.dart';
import 'package:login_app/screens/sign_with_passwerd.dart';

void main() {
  runApp(const LoginMobile());
}

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'GetStarted': (context) => const GetStarted(),
        'LetsSignin': (context) => LetsSignin(),
        'SignInPage': (context) => const SignInPage(),
        'RegisterPage': (context) => const RegisterPage(),
      },
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const GetStarted(),
    );
  }
}
