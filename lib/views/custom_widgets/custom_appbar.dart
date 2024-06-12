import 'package:flutter/material.dart';
import 'package:spacex_last_flight/utils/globals.dart';

import '../../utils/constants.dart';

AppBar CustomAppBar({required GlobalValues globalValues}) {
  return AppBar(
    leading: CircleAvatar(
      minRadius: 16,
      child: Image.asset(Sources.SPACEX_ICON_PATH),
    ),
    title: Text(
      AppInfo.APP_NAME + ' - ' + (globalValues.lastFlight.name ?? ''),
      style: TextStyle(color: Colors.white),
    ),
  );
}
