import 'package:flutter/material.dart';
import 'package:login/lotter_app/lotto.dart';
import 'package:login/responsive/breakpoint.dart';
import 'package:login/responsive/responsive_center.dart';

class LayoutLotto extends StatelessWidget {
  const LayoutLotto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 83, 125, 188),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(
          255,
          208,
          150,
          3,
        ),
        title: Text(
          "로또 앱",
          style: TextStyle(
            fontFamily: "HiMelody",
            fontSize: 35,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: ResponsiveCenter(
        maxContentWidth: Breakpoint.deskTop,
        padding: EdgeInsets.all(16),
        child: Lotto(),
      ),
    );
  }
}
