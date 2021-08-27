import 'package:calendar/extensions/date_time_x.dart';

class MonthSheetSettings {
  const MonthSheetSettings({
    required this.mounth,
  });

  final DateTime mounth;

  static get daysInWeek => 7;

  DateTime get start => mounth.startOfMonth;

  DateTime get end => mounth.endOfMonth;

  int get rowsCount {
    final roundedDays =
        (start.weekday - 1) + end.day + (daysInWeek - end.weekday);

    return roundedDays ~/ daysInWeek;
  }
}
