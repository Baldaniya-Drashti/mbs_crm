import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';

dynamic normalizeFromJson(dynamic value, FormFieldSchema? field) {
  if (field?.type == 'date' && value is String) {
    return DateTime.tryParse(value);
  }

  if (value is List) {
    return value.map((e) => normalizeFromJson(e, field)).toList();
  }

  if (value is Map<String, dynamic>) {
    return value.map((k, v) => MapEntry(k, normalizeFromJson(v, field)));
  }

  return value;
}

dynamic removeNulls(dynamic value) {
  if (value is Map) {
    final result = <String, dynamic>{};

    value.forEach((key, val) {
      final cleaned = removeNulls(val);
      if (cleaned != null && cleaned != "" && cleaned != [] && cleaned != {}) {
        result[key] = cleaned;
      }
    });

    return result;
  }

  if (value is List) {
    final list = value
        .map(removeNulls)
        .where((item) => item != null && item != "" && item != [] && item != {})
        .toList();
    return list;
  }
  return value;
}
