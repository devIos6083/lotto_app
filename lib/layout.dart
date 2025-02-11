import 'package:flutter/material.dart';
import 'package:login/screen/login.dart';
import 'package:login/responsive/breakpoint.dart';
import 'package:login/responsive/responsive_center.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveCenter(
        maxContentWidth: Breakpoint.tablet,
        padding: EdgeInsets.all(16),
        child: Login(),
      ),
    );
  }
}
