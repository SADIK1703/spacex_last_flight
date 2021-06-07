import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/globals.dart';

Widget mainInfoPage(
  BuildContext context,
  GlobalValues globalValues,
  Widget previousPageButton,
  Widget nextPageButton,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      previousPageButton,
      buildFlightName(
        globalValues.lastFlight.name,
        Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      Center(
        child: buildFlightImage(
          globalValues.lastFlight.links!.patch!.large,
          Size(
            MediaQuery.of(context).size.width * 0.8,
            MediaQuery.of(context).size.height * 0.4,
          ),
          Theme.of(context).textTheme.bodyText1!,
        ),
      ),
      buildFlightDetails(
        globalValues.lastFlight.details,
        Theme.of(context).textTheme.bodyText1!,
      ),
      nextPageButton,
    ],
  );
}

Widget buildFlightImage(String? url, Size size, TextStyle textStyle) {
  return url != null
      ? Container(
          width: size.width,
          height: size.height,
          child: CachedNetworkImage(
            imageUrl: url,
            errorWidget: (context, url, error) => Icon(Icons.error),
            placeholder: (context, url) => CircularProgressIndicator(),
          ),
        )
      : Container(
          width: size.width,
          height: size.height,
          color: Colors.grey,
          child: Text('Veri yüklenmedi'),
        );
}

Widget buildFlightName(String? data, TextStyle textStyle) {
  return Text(
    data ?? 'veri bulunamadı',
    style: textStyle,
  );
}

Widget buildFlightDetails(String? details, TextStyle textStyle) {
  return Expanded(
    child: AutoSizeText.rich(
      TextSpan(
        text: details ?? 'Bu uçuş için detay bulunamadı',
      ),
      style: textStyle,
      minFontSize: 5,
      textAlign: TextAlign.center,
    ),
  );
}
