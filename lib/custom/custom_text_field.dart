import 'package:flutter/material.dart';

import '../static/static.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {super.key, required this.text, this.onSaved, this.suffixIcon});
  final String text;
  Widget? suffixIcon;
  void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'Field is requierd';
        }
        return null;
      },
      cursorColor: kPrimerycolor,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor:Colors.black.withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kPrimerycolor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
