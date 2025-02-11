import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color? backgroundColor;
  final String? imagePath;
  final double radius;
  final Icon? icon;

  const MyContainer({
    required this.width,
    required this.height,
    this.backgroundColor,
    this.imagePath,
    required this.radius,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(radius),
        color: Colors.grey[200],
        image: imagePath != null
            ? DecorationImage(
                image: AssetImage(
                  'img/codingchef3.png',
                ),
                fit: BoxFit.fill,
              )
            : null,
      ),
      child: icon,
    );
  }
}
