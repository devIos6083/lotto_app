import 'package:flutter/material.dart';

class Lotto extends StatefulWidget {
  const Lotto({super.key});

  @override
  State<Lotto> createState() => _LottoState();
}

class _LottoState extends State<Lotto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lotto App'),
      ),
      body: Center(
        child: Text('This is a lotto page'),
      ),
    );
  }
}
