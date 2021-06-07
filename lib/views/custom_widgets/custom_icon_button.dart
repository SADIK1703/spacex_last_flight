import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

IconButton buildIconButton(
  IconData iconButton, {
  required Callback onPressed,
  Color color = Colors.white,
}) {
  return IconButton(
    onPressed: onPressed,
    icon: Icon(iconButton),
    color: color,
  );
}
