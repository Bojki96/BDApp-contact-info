import 'package:intl/intl.dart';

Future<void> sleep([Duration? duration]) {
  return Future.delayed(duration ?? const Duration(seconds: 3));
}

String formatDate(DateTime date, {String format = 'yMMMMd'}) {
  return DateFormat(format, 'hr_HR').format(date);
}

bool checkIfIsSameDay(DateTime? dateTimeOne, DateTime? dateTimeTwo) {
  return dateTimeOne?.day == dateTimeTwo?.day &&
      dateTimeOne?.year == dateTimeTwo?.year &&
      dateTimeOne?.month == dateTimeTwo?.month;
}

String formatTime(DateTime date, {String format = 'HH:mm'}) {
  return DateFormat(format).format(date);
}

String formatCurrency(
  double number, {
  String locale = 'hr_HR',
  String currencySymbol = '€',
  int decimalDigits = 2,
}) {
  return NumberFormat.currency(
    locale: locale,
    symbol: currencySymbol,
    decimalDigits: decimalDigits,
  ).format(number);
}

double mapRange(
  double initialValue,
  double limitValue,
  double initialValueToMapOn,
  double limitValueToMapOn,
  double changingValue,
) {
  return initialValue +
      (limitValue - initialValue) /
          (limitValueToMapOn - initialValueToMapOn) *
          (changingValue - initialValueToMapOn);
}
