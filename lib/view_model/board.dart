import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xo/assets/theme.dart';

class BoardVM extends ChangeNotifier {
  //FIRST CLICK => X (0=>EVEN) // ODD => O
  int clickNumber = 0;
  List<String> btnsContent = ['', '', '', '', '', '', '', '', ''];
  bool endGame = false;
  void whichPlayerNow(int btnIndex, BuildContext context) {
    if (btnsContent[btnIndex] == '' && !endGame) {
      if (clickNumber % 2 == 0) {
        btnsContent[btnIndex] = "X";
      } else {
        btnsContent[btnIndex] = "O";
      }
      checkWinner(context);
      clickNumber++;
      notifyListeners();
    }
  }

//check if the row or col or diagonal have empty btn
  bool isNotEmpty(int btn1, int btn2, int btn3) {
    return (btnsContent[btn1] != '' ||
        btnsContent[btn2] != '' ||
        btnsContent[btn3] != '');
  }

  bool checkEquality(BuildContext context, int btn1, int btn2, int btn3) {
    if (isNotEmpty(btn1, btn2, btn3)) {
      //check 0,1
      if (btnsContent[btn1] == btnsContent[btn2] &&
          btnsContent[btn3] == btnsContent[btn1]) {
        resultDialog(context, "${btnsContent[btn1]} is winner");
        return true;
      }
    }
    return false;
  }

  resultDialog(BuildContext context, String message) {
    endGame = true;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          actions: <Widget>[
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                elevation: 15,
                splashColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.white,
                child: Text(
                  'New Game',
                  style: GoogleFonts.recursive(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                  ),
                ),
                onPressed: () {
                  resetGame();
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Colors.green,
          content: Text(
            message,
            textAlign: TextAlign.center,
            style: MyThemeData.whiteTs,
          )),
    );
  }

  checkWinner(BuildContext context) {
    if (checkEquality(context, 0, 1, 2)) {
    } else if (checkEquality(context, 3, 4, 5)) {
    } else if (checkEquality(context, 6, 7, 8)) {
    } else if (checkEquality(context, 0, 3, 6)) {
    } else if (checkEquality(context, 1, 4, 7)) {
    } else if (checkEquality(context, 2, 5, 8)) {
    } else if (checkEquality(context, 0, 4, 8)) {
    } else if (checkEquality(context, 2, 4, 6)) {
    } else if (!btnsContent.contains('')) {
      resultDialog(context, "Draw");
    }
  }

  void resetGame() {
    clickNumber = 0;
    btnsContent = ['', '', '', '', '', '', '', '', ''];
    endGame = false;
    notifyListeners();
  }
}