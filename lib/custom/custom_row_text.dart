import 'package:flutter/material.dart';

import '../static/static.dart';

class CustomRowtext extends StatelessWidget {
  const CustomRowtext({super.key, required this.text});
  final String text;
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
        Text(
          text,
          style: const TextStyle(color: kPrimerycolor),
        ),
      ],
    );
  }
}
