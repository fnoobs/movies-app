import 'package:flutter/material.dart';
import 'package:movies_app/theme/contants.theme.dart';
import 'package:movies_app/theme/light/appBar.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    appBarTheme: appBarTheme(context),
    iconTheme: IconThemeData(color: kTextColor),
  );
}
