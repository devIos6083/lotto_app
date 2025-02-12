import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';

class Lotto extends StatefulWidget {
  const Lotto({super.key});

  @override
  State<Lotto> createState() => _LottoState();
}

class _LottoState extends State<Lotto> {
  List<List<int>> listLottery = [];

  void _createNumber() {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lotto app',
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
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
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      path_1,
                      colorFilter: ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      path_2,
                      colorFilter: ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      path_3,
                      colorFilter: ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      path_4,
                      colorFilter: ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      path_5,
                      colorFilter: ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      path_6,
                      colorFilter: ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: listLottery.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createNumber,
        child: Icon(Icons.add),
      ),
    );
  }
}
