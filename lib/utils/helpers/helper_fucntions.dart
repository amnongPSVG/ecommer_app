import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';

class THelperFunctions {
  static Color? getColor(String value) {
    // define your product specific color here and it will match the attribut colors and show specific color
    if (value == 'Green') {
      return Colors.green;
    }
    if (value == 'Red') {
      return Colors.red;
    }
    if (value == 'Blue') {
      return Colors.blue;
    }
    if (value == 'Pink') {
      return Colors.pink;
    }
    if (value == 'Grey') {
      return Colors.grey;
    }
    if (value == 'Purple') {
      return Colors.purple;
    }
    if (value == 'Black') {
      return Colors.black;
    }
    if (value == 'White') {
      return Colors.white;
    }
    if (value == 'Yellow') {
      return Colors.yellow;
    }
    if (value == 'Brown') {
      return Colors.brown;
    }
    if (value == 'Teal') {
      return Colors.teal;
    }
    if (value == 'Indigo') {
      return Colors.indigo;
    }
    return null;
  }

// show Snack Bar
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

// show Alert
  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              )
            ],
          );
        });
  }

// Navigate To Screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  // Truncate Text
  static String truncateText(String text, int maxLenght) {
    if (text.length <= maxLenght) {
      return text;
    } else {
      return '${text.substring(0, maxLenght)}...';
    }
  }

  // Is dark mode
  static bool isDarkMode(BuildContext contxt) {
    return Theme.of(Get.context!).brightness == Brightness.dark;
  }

  // screen size
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // screen height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // screen width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  // get formate date
  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  // Remove Deplicates
  static List<T> removeDeplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  //  Wrap Widgets
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowsize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowsize) {
      final rowChildren = widgets.sublist(
          i, i + rowsize > widgets.length ? widgets.length : i + rowsize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}
