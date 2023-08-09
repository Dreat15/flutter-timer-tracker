import 'package:intl/intl.dart';

class CurrentDateTime
{
  DateTime currentDate = DateTime.now();

  void changeMonth(int add)
  {
    currentDate = DateTime(currentDate.year, currentDate.month + add, currentDate.day);
  }

  String getCurrentMonth()
  {
    return DateFormat.yMMM().format(currentDate);
  }
}