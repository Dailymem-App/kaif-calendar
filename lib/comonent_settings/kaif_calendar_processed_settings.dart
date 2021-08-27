import 'package:calendar/comonent_settings/month_sheet_settings.dart';
import 'package:calendar/kaif_calendar_settings.dart';

class KaifCalendarProcessedSettings {
  const KaifCalendarProcessedSettings({
    required this.initialDate,
    required this.endDate,
  });

  factory KaifCalendarProcessedSettings.fromUserSettings(
    KaifCalendarSettings userSettings,
  ) {
    final initialDate =
        userSettings.initialDate ?? DateTime.now().subtract(_year);
    final endDate = userSettings.endDate ?? DateTime.now().add(_year);

    return KaifCalendarProcessedSettings(
      initialDate: initialDate,
      endDate: endDate,
    );
  }

  final DateTime initialDate;
  final DateTime endDate;

  static get _year => Duration(days: 365);

  MonthSheetSettings get monthSheetSettings {
    return MonthSheetSettings(
      mounth: DateTime.now(),
    );
  }
}
