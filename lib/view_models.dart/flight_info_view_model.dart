import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/globals.dart';
import '../views/main_page_view/buttons.dart';
import '../views/main_page_view/main_info.dart';
import '../views/main_page_view/web_page.dart';
import '../views/main_page_view/youtube_player.dart';

class MainPageViewModels {
  MainPageViewModels({
    required this.globalValues,
  });
  final GlobalValues globalValues;

  var buttonText = <String>[
    'Youtube',
    'Reddit',
    'Wikipedia',
    'Info',
  ];

  var buttonColor = <Color>[
    Colors.red,
    Colors.orange,
    Colors.blue[900]!,
    Colors.orange
  ];
  
  var textColor = <Color>[
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];

  Widget buildPage(
      {required context,
      required int pageIndex,
      required PageController pageController}) {
    switch (pageIndex) {
      case 0:
        return mainInfoPage(
          context,
          globalValues,
          buildPreviousPageButton(pageController, pageIndex),
          buildNextPageButton(pageController, pageIndex),
        );
      case 1:
        return youtubePlayer(
          context,
          buildPreviousPageButton(pageController, pageIndex),
          buildNextPageButton(pageController, pageIndex),
          globalValues.lastFlight.links!.webcast!.split('/').last,
          globalValues.lastFlight.name ?? '',
        );
      case 2:
        return webPage(
          buildPreviousPageButton(pageController, pageIndex),
          buildNextPageButton(pageController, pageIndex),
          globalValues.lastFlight.links!.reddit!.campaign,
        );
      case 3:
        return webPage(
          buildPreviousPageButton(pageController, pageIndex),
          buildNextPageButton(pageController, pageIndex),
          globalValues.lastFlight.links!.wikipedia,
        );
      default:
        return mainInfoPage(
          context,
          globalValues,
          buildPreviousPageButton(pageController, 0),
          buildNextPageButton(pageController, 0),
        );
    }
  }

  Widget buildPreviousPageButton(PageController pageController, int index) {
    return index > 0
        ? PreviousPageButton(
            pageController,
            (index - 1) % 4,
            buttonColor[(index - 2) % buttonColor.length],
            textColor[index % textColor.length],
            buttonText[(index - 2) % buttonText.length],
          )
        : Container();
  }

  Widget buildNextPageButton(PageController pageController, int index) {
    return NextPageButton(
      pageController,
      (index + 1) % 4,
      buttonColor[(index) % buttonColor.length],
      textColor[index % textColor.length],
      buttonText[(index) % buttonText.length],
    );
  }
}
