
import 'package:flutter/material.dart';

BoxDecoration customTopToBottomBoxDecoration({
    required Color startColor,
    required Color endColor,
    Alignment beginAlignment = Alignment.topCenter,
    Alignment endAlignment = Alignment.bottomCenter,
  }) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [startColor, endColor],
        stops: [0.0, 0.3],
        begin: beginAlignment,
        end: endAlignment,
      ),
    );
  }