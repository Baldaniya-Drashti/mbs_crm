class DynamicFormHelper {
  static int? mapAnswer(dynamic value) {
    if (value == null) return null;

    switch (value.toString()) {
      case 'Yes':
        return 1;
      case 'No':
        return 2;
      case 'N/A':
        return 0;
      default:
        return null;
    }
  }

  static String? answerToValue(dynamic answer) {
    if (answer == null) return null;

    switch (answer) {
      case 1:
        return 'Yes';
      case 2:
        return 'No';
      case 0:
        return 'N/A';
      default:
        return null;
    }
  }

  DateTime? tryParseDate(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is String) {
      try {
        return DateTime.parse(value);
      } catch (_) {
        return null;
      }
    }
    return null;
  }
}
