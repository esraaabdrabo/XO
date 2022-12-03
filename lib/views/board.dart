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
                    const SizedBox(
                      width: 25,
                    ),
                    newGameBtn(provider)
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
                    newGameBtn(provider)
                  ],
                )
              ],
            );
          }
        }));
  }

  boardBtn(
      String content, BoardVM provider, int btnIndex, BuildContext context) {
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
              fontSize: 50,
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
        child: Container(
            color: const Color.fromARGB(50, 255, 255, 255),
            width: SizeConf.screenWidth * .9,
            child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 130,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 5,
                    crossAxisCount: 3),
                itemCount: 9,
                itemBuilder: (context, index) => boardBtn(
                    provider.btnsContent[index], provider, index, context))),
      ),
    );
  }

  newGameBtn(BoardVM provider) {
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
        child: Text("Reset Game", style: MyThemeData.whiteTs));
  }
}
