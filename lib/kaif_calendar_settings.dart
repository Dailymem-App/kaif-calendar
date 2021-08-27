class KaifCalendarSettings {
  const KaifCalendarSettings({
    required this.initialDate,
    required this.endDate,
  });

  static const empty = KaifCalendarSettings(
    initialDate: null,
    endDate: null,
  );

  final DateTime? initialDate;
  final DateTime? endDate;
}
