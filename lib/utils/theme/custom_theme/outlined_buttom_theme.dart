import 'package:flutter/material.dart';

class TOutLinedButtomTheme {
  TOutLinedButtomTheme._();
  // customizable light theme
  static final lightOutLinedbuttomTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
  // customizable dark theme
  static final darkOutLinedbuttomTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.white,
      side: const BorderSide(color: Colors.blueAccent),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
