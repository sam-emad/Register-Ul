import 'package:flutter/material.dart';
import '../custom/custom_get-started_page.dart';
import 'lets_sign_in.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 50),
      child: Column(
        children: [
          Image.asset('images/logo2.png', height: 250),
          const Spacer(flex: 9),
          const CustomText(text: 'Save Monay'),
          const CustomText(text: 'to save future'),
          const Spacer(flex: 1),
          const TitleText(
              text:
                  'today is the big day for me with value today is the big day for me with value '),
          const Spacer(flex: 2),
          CustomButton(
            text: 'Get Started',
            width: double.infinity,
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LetsSignin(),
                )),
          ),
          const Spacer(flex: 4),
        ],
      ),
    ));
  }
}
