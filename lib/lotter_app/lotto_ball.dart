import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LottoBall extends StatelessWidget {
  const LottoBall({
    required this.path,
    super.key,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: SvgPicture.asset(
        path,
        colorFilter: ColorFilter.mode(
          Colors.white,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
