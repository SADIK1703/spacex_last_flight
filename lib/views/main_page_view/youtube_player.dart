import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

Widget youtubePlayer(
  BuildContext context,
  Widget previousPageButton,
  Widget nextPageButton,
  String url,
  String title,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        previousPageButton,
        Expanded(
          child: buildPlayer(
            url,
            16/9,
          ),
        ),
        buildVideoTitle(
          title,
          Theme.of(context).textTheme.headline6!,
        ),
        nextPageButton,
      ],
    ),
  );
}

AutoSizeText buildVideoTitle(String data, TextStyle textStyle) {
  return AutoSizeText(
    data,
    maxLines: 1,
    style: textStyle,
  );
}

YoutubePlayerIFrame buildPlayer(String url, double aspectRatio) {
  return YoutubePlayerIFrame(
    controller: YoutubePlayerController(
      initialVideoId: url,
    ),
    aspectRatio: aspectRatio,
  );
}
