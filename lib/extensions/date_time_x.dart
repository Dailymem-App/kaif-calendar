extension DateTimeX on DateTime {
  DateTime get startOfMonth => DateTime(this.year, this.month);
  DateTime get endOfMonth =>
      DateTime(this.year, this.month + 1).subtract(Duration(days: 1));
}
