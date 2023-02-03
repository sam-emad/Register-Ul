import 'package:flutter/cupertino.dart';


class CustomListView extends StatelessWidget {
  CustomListView({super.key});
  final List images = [
    'logo4.png',
    'logo5.png',
    'logo6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      
      child: PageView.builder(
        itemCount: images.length,
        itemBuilder: (_, index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                // ignore: prefer_interpolation_to_compose_strings
                "images/" + images[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
