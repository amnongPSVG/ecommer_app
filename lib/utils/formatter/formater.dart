import 'package:intl/intl.dart';

class TFormatter {
  static String formatter(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy')
        .format(date); // customiz the date that you need
  }

  static String formateCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatePhoneNumber(String phoneNumber) {
    // assuming a 10-digital US phone number format:(123) 456-7890
    if (phoneNumber.length == 10) {
      return ('${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}');
    }
    if (phoneNumber.length == 11) {
      return ('${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}');
    }
    return phoneNumber;
  }

  // not fully test
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // remove any non -digital charater from the phone number
    var digitalOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // extract the country code digital with the proper fomatting
    String countryCode = '+${digitalOnly.substring(0, 2)}';
    digitalOnly = digitalOnly.substring(2);

    // add the remaining digital with proper formatting
    final formatedNumber = StringBuffer();
    formatedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitalOnly.length) {
      int groupLenght = 2;
      if (i == 0 && countryCode == '+1') {
        groupLenght == 3;
      }
      int end = i + groupLenght;
      formatedNumber.write(digitalOnly.substring(i, end));

      if (end < digitalOnly.length) {
        formatedNumber.write(' ');
      }
      i = end;
    }
    return phoneNumber;
  }
}
