import 'package:flutter/material.dart';

import '../../utils/constants.dart';

AppBar CustomAppBar() {
  return AppBar(
    leading: CircleAvatar(
      minRadius: 16,
      child: Image.asset(Sources.SPACEX_ICON_PATH),
    ),
    title: Text(
      AppInfo.APP_NAME,
      style: TextStyle(color: Colors.white),
    ),
  );
}
