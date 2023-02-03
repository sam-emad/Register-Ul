
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContinerItem extends StatelessWidget {
  ContinerItem({super.key, required this.text, required this.icon});
  String text;
  final dynamic icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Row(children: [
        IconButton(onPressed: null, icon: icon),
        Text(
          text,
          style: TextStyle(
            color: Colors.black26.withOpacity(0.4),
          ),
        ),
      ]),
    );
  }
}
