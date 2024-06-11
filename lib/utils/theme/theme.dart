import 'package:ecommer_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommer_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommer_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommer_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommer_app/utils/theme/custom_theme/elevated_buttom_theme.dart';
import 'package:ecommer_app/utils/theme/custom_theme/outlined_buttom_theme.dart';
import 'package:ecommer_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommer_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtomTheme.lightElevatebButtomTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    chipTheme: TChipTheme.lightChipTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutLinedButtomTheme.lightOutLinedbuttomTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInPutDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtomTheme.darkElevatebButtomTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    chipTheme: TChipTheme.lightChipTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutLinedButtomTheme.darkOutLinedbuttomTheme,
    inputDecorationTheme: TTextFormFieldTheme.dartInPutDecorationTheme,
  );
}
