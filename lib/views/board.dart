import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:xo/assets/size_config.dart';
import 'package:xo/assets/theme.dart';
import 'package:xo/assets/widgets.dart';
import 'package:xo/view_model/board.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    BoardVM provider = Provider.of(context);
    SizeConf(context);
    return Scaffold(
        backgroundColor: Colors.black,

        //    const Color.fromARGB(255, 15, 102, 190),
        body: LayoutBuilder(builder: (p0, boxConstrains) {
          if (boxConstrains.maxWidth > 650) {
            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                bgCircles,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    board(provider),
                    SizedBox(
                      width: SizeConf.screenWidth * .05,
                    ),
                    newGameBtn(provider, context)
                  ],
                )
              ],
            );
          } else {
            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                bgCircles,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    board(provider),
                    const SizedBox(
                      height: 25,
                    ),
                    newGameBtn(provider, context)
                  ],
                )
              ],
            );
          }
        }));
  }

  boardBtn(
      String content, BoardVM provider, int btnIndex, BuildContext context) {
    SizeConf(context);
    return InkWell(
      onTap: () {
        provider.whichPlayerNow(btnIndex, context);
      },
      child: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(8, 255, 255, 255),
        child: Text(
          content,
          style: GoogleFonts.andika(
              fontSize: SizeConf.screenHeight * .04,
              shadows: [
                const BoxShadow(
                    offset: Offset(-3, 3), color: Color.fromARGB(129, 0, 0, 0))
              ],
              color: const Color.fromARGB(181, 255, 255, 255)),
        ),
      ),
    );
  }

  board(BoardVM provider) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: -10),
        child: Stack(
          children: [
            Container(
                color: const Color.fromARGB(50, 255, 255, 255),
                width: SizeConf.screenWidth * .9,
                child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 130,
                            mainAxisSpacing: 3,
                            crossAxisSpacing: 5,
                            crossAxisCount: 3),
                    itemCount: 9,
                    itemBuilder: (context, index) => boardBtn(
                        provider.btnsContent[index],
                        provider,
                        index,
                        context))),
            CustomPaint(painter: MyPainter(provider: provider)),
          ],
        ),
      ),
    );
  }

  newGameBtn(BoardVM provider, BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color.fromARGB(117, 255, 255, 255)),
            borderRadius: BorderRadius.circular(25)),
        color: const Color.fromARGB(150, 0, 0, 0),
        elevation: 15,
        splashColor: Colors.green,
        onPressed: () {
          provider.resetGame();
        },
        child: Text("Reset Game", style: MyThemeData.whiteTs(context)));
  }
}

class MyPainter extends CustomPainter {
  BoardVM provider;
  MyPainter({required this.provider});
  @override
  void paint(Canvas canvas, Size size) {
    //0 4 8 => 350 390 origin 0 0
    // 2 4 6 => 0 390 orgin 350 0
    //1 2 3 => 0 60 - 350 60
    //4 5 6 => 0 190 - 350 190
    //7 8 9 => 0 320 - 350 320
//0 3 6 => 60 0 - 60 500
//1 4 7  => 180 0 - 180 500
////2 5 8  => 300 0 - 300 500

    var paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5;
    canvas.drawLine(provider.p1, provider.p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
