import 'package:flutter/material.dart';

Widget PreviousPageButton(
  PageController pageController,
  int index,
  Color buttonColor,
  Color textColor,
  String data,
) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
    onPressed: () {
      pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
    },
    child: Text(
      data,
      style: TextStyle(
        color: textColor,
      ),
    ),
  );
}

Widget NextPageButton(
  PageController pageController,
  int index,
  Color buttonColor,
  Color textColor,
  String data,
) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
    onPressed: () {
      pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
    },
    child: Text(
      data,
      style: TextStyle(
        color: textColor,
      ),
    ),
  );
}
