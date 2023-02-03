
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({super.key, required this.icon});

  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: sort_child_properties_last
      child: icon,
      height: 60,
      width: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 50,
          color: Colors.grey.withOpacity(.3),
          spreadRadius: 20,
        )
      ], borderRadius: BorderRadius.circular(15), color: Colors.white),
    );
  }
}
