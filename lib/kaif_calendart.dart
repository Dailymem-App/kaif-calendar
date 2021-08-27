import 'package:calendar/kaif_calendar_settings.dart';
import 'package:calendar/comonent_settings/kaif_calendar_processed_settings.dart';
import 'package:calendar/month_sheet.dart';
import 'package:flutter/material.dart';

//This is a root class in 'kaif_calendar' package
class KaifCalendar extends StatefulWidget {
  const KaifCalendar({
    Key? key,
    this.settings = KaifCalendarSettings.empty,
  }) : super(key: key);

  /// This object stores all user settings for calendar
  /// It doesn't contain any logic or data transformation,
  /// [KaifCalendar] can access data from processed [KaifCalendarProcessedSettings]
  final KaifCalendarSettings settings;

  @override
  State<StatefulWidget> createState() => _KaifCalendarState();
}

class _KaifCalendarState extends State<KaifCalendar> {
  late final KaifCalendarProcessedSettings calendarProcessedSettings;

  @override
  void initState() {
    super.initState();
    calendarProcessedSettings =
        KaifCalendarProcessedSettings.fromUserSettings(widget.settings);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MonthSheet(
        settings: calendarProcessedSettings.monthSheetSettings,
      ),
    );
  }
}
