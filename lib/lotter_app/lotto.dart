import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/lotter_app/lotto_ball.dart';
import 'package:lottie/lottie.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Lotto extends StatefulWidget {
  const Lotto({super.key});

  @override
  State<Lotto> createState() => _LottoState();
}

class _LottoState extends State<Lotto> {
  List<List<int>> listLottery = [];

  void _createNumber() {
    if (listLottery.length < 15) {
      setState(() {
        List<int> lottery = [];
        while (true) {
          int rnd = Random().nextInt(45) + 1;
          if (!lottery.contains(rnd)) {
            lottery.add(rnd);
          }
          if (lottery.length == 6) {
            break;
          }
        }
        lottery.sort();
        listLottery.add(lottery);
      });
    } else {
      Fluttertoast.showToast(
        msg: "15번까지만 생성가능합니다",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 83, 125, 198),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            style: TextStyle(
              fontFamily: 'HiMelody',
              fontSize: 35,
            ),
            'Lotto app',
          ),
          backgroundColor: Color.fromARGB(255, 208, 150, 3)),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: RawScrollbar(
                thickness: 15,
                thumbColor: Color.fromARGB(255, 127, 157, 218),
                thumbVisibility: true,
                trackVisibility: true,
                radius: Radius.circular(10),
                interactive: true,
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemBuilder: (BuildContext context, int index) {
                    var path_1 = 'svg/${listLottery[index][0]}.svg';
                    var path_2 = 'svg/${listLottery[index][1]}.svg';
                    var path_3 = 'svg/${listLottery[index][2]}.svg';
                    var path_4 = 'svg/${listLottery[index][3]}.svg';
                    var path_5 = 'svg/${listLottery[index][4]}.svg';
                    var path_6 = 'svg/${listLottery[index][5]}.svg';

                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LottoBall(path: path_1),
                          SizedBox(
                            width: 2,
                          ),
                          LottoBall(path: path_2),
                          SizedBox(
                            width: 2,
                          ),
                          LottoBall(path: path_3),
                          SizedBox(
                            width: 2,
                          ),
                          LottoBall(path: path_4),
                          SizedBox(
                            width: 2,
                          ),
                          LottoBall(path: path_5),
                          SizedBox(
                            width: 2,
                          ),
                          LottoBall(path: path_6),
                        ],
                      ),
                    );
                  },
                  itemCount: listLottery.length,
                ),
              ),
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Lottie.asset('lottie/cat.json'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: _createNumber,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
