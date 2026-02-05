// ignore_for_file: avoid_print

class CustomDateTimeFormat {
  static dateTimeToUtcTimestamp(DateTime localDate) {
    final fixedUtcDate = DateTime.utc(
      localDate.year,
      localDate.month,
      localDate.day,
      localDate.hour,
      localDate.minute,
      localDate.second,
    );
    return (fixedUtcDate.millisecondsSinceEpoch ~/ 1000);
  }

  static DateTime timeStampToDateTime(int timeStamp) {
    return DateTime.fromMillisecondsSinceEpoch((timeStamp) * 1000, isUtc: true);
  }
}
