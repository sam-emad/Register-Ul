import 'package:flutter/material.dart';

import '../static/static.dart';

class CustomRowtext extends StatelessWidget {
  CustomRowtext({super.key, required this.text, this.onTap});
  final String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'dont have an acount ?',
          style: TextStyle(
            color: Colors.black.withOpacity(0.4),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: const TextStyle(color: kPrimerycolor),
          ),
        ),
      ],
    );
  }
}
