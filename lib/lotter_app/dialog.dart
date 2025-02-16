import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PopupDialog extends StatelessWidget {
  const PopupDialog({
    required this.title2,
    required this.number2,
    super.key,
  });

  final String title2;
  final String number2;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$title2번째 추첨 번호",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                number2,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Lottie.asset("lottie/cat.json"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 50)),
                  child: Text("Close")),
            ],
          ),
        ),
      ),
    );
  }
}
