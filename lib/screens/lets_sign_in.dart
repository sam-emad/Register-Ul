import 'package:flutter/material.dart';
import '../custom/custom_divider.dart';
import '../custom/custom_row_text.dart';
import '../custom/custom_get-started_page.dart';
import '../custom/custom_app_bar_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../custom/custom_container_ltem.dart';

class LetsSignin extends StatelessWidget {
  String id = 'LetsSignin';
  String id2 = 'SignInPage';
  String id3 = 'RegisterPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 1, left: 20, right: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(onTap: () {
                  Navigator.pop(context, 'LetsSignin');
                }),
              ],
            ),
            const SizedBox(height: 15),
            Center(
              child: Image.asset('images/logo3.png', height: 240, width: 240),
            ),
            const CustomText(text: 'Lits Sign in'),
            const SizedBox(height: 20),
            ContinerItem(
                icon: const Icon(FontAwesomeIcons.facebook,
                    color: Colors.blue, size: 32),
                text: 'Continue With facebook'),
            const SizedBox(height: 11),
            ContinerItem(
                icon: const Icon(FontAwesomeIcons.twitter,
                    color: Colors.blueAccent, size: 32),
                text: 'Continue With Twitter'),
            const SizedBox(height: 11),
            ContinerItem(
                icon: const Icon(FontAwesomeIcons.instagram,
                    color: Colors.redAccent, size: 32),
                text: 'Continue With Instagram'),
            const SizedBox(height: 20),
            const CustomDivider(text: "OR"),
            const SizedBox(height: 30),
            CustomButton(
                onPressed: () => Navigator.pushNamed(context, 'SignInPage'),
                text: 'Sign in with passwerd',
                width: MediaQuery.of(context).size.width),
            const SizedBox(height: 15),
            CustomRowtext(
              text: ' Register',
              onTap: () {
                Navigator.pushNamed(context, id3 = 'RegisterPage');
              },
            )
          ],
        ),
      ),
    );
  }
}
