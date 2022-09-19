import 'package:intl/intl.dart';

String getFormattedTime(String date) {
  final myDateTime = DateTime.parse(date);

  var formattedDate = DateFormat('hh a').format(myDateTime);

  return formattedDate;
}
