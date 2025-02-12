import 'package:flutter/material.dart';
import 'package:login/screen/login.dart';
import 'package:login/lotter_app/lotto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: Lotto(),
    );
  }
}
