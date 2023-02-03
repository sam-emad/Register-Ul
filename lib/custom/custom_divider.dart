import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(
        child: Divider(thickness: 1, endIndent: 10.0),
      ),
      Text(text),
      const Expanded(
        child: Divider(thickness: 1, indent: 10.0),
      ),
    ]);
  }
}
