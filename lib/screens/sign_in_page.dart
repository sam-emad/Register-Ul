import 'package:flutter/material.dart';
import '../custom/custom_app_bar_icon.dart';
import '../custom/custom_divider.dart';
import '../custom/custom_get-started_page.dart';
import '../custom/custom_icon.dart';
import '../custom/custom_list_view.dart';
import '../custom/custom_row_text.dart';
import '../custom/custom_text_field.dart';
import 'lets_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? email, passwerd;

  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding:
              const EdgeInsets.only(top: 1, left: 20, right: 20, bottom: 30),
          child: Form(
            autovalidateMode: autovalidateMode,
            key: formkey,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(onTap: () {
                      Navigator.pop(context, LetsSignin());
                    }),
                  ],
                ),
                const SizedBox(height: 20),
                CustomListView(),
                const SizedBox(height: 40),
                const CustomText(
                  text: 'Welcome Back',
                ),
                const SizedBox(height: 20),
                CustomTextFiled(
                  suffixIcon: const  Icon(FontAwesomeIcons.envelope),
                    text: 'Enter Email', onSaved: (data) => email = data!),
                const SizedBox(height: 10),
                CustomTextFiled(
                  suffixIcon:const Icon(FontAwesomeIcons.anchorLock , ),
                    text: 'Enter Passwerd',
                    onSaved: (data) => passwerd = data!),
                const SizedBox(height: 35),
                CustomButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: 'Sing in',
                  width: double.infinity,
                ),
                const SizedBox(height: 20),
                const CustomDivider(text: "OR"),
                const SizedBox(height: 25),
                Row(
               
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIcon(
                        icon: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    )),
                    const SizedBox(width: 16),
                    CustomIcon(
                        icon: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blueAccent,
                    )),
                    const SizedBox(width: 16),
                    CustomIcon(
                        icon: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.redAccent,
                    )),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomRowtext(text: ' Register'),
              ],
            ),
          )),
    );
  }
}
