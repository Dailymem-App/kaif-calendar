import 'package:calendar/comonent_settings/month_sheet_settings.dart';
import 'package:flutter/material.dart';

class MonthSheet extends StatelessWidget {
  const MonthSheet({
    Key? key,
    required this.settings,
  }) : super(key: key);

  final MonthSheetSettings settings;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < settings.rowsCount; i++)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int j = 1; j < MonthSheetSettings.daysInWeek + 1; j++)
                  _buildDayCell(i, j),
              ],
            )
        ],
      ),
    );
  }

  Widget _buildDayCell(int i, int j) {
    final value =
        i * MonthSheetSettings.daysInWeek + j - settings.start.weekday + 2;
    final displayValue = value < 1 || value > settings.end.day ? '-' : '$value';
    return Container(
      alignment: Alignment.center,
      height: 20,
      width: 20,
      child: Text(displayValue),
    );
  }
}
