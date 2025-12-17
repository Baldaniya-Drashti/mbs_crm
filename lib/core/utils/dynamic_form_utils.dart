/* class DynamicFormUtils {
  static const tablePrefix = 'table_';

  static bool isTableField(String key) => key.startsWith(tablePrefix);

  static Map<String, dynamic> extractTableFields(Map<String, dynamic> data) =>
      Map.fromEntries(data.entries.where((e) => isTableField(e.key)));

  static Map<String, dynamic> removeTableFields(Map<String, dynamic> data) {
    final result = Map<String, dynamic>.from(data);
    result.removeWhere((k, _) => isTableField(k));
    return result;
  }

  static Map<String, dynamic> buildTables(Map<String, dynamic> data) {
    final tables = <String, Map<String, Map<String, dynamic>>>{};

    for (final entry in data.entries.where((e) => isTableField(e.key))) {
      final parts = entry.key.split('_');

      final tableName = '${parts[1]}_${parts[2]}';
      final rowIndex = parts[4];
      final columnKey = parts.sublist(5).join('_');

      tables
              .putIfAbsent(tableName, () => {})
              .putIfAbsent(rowIndex, () => {})[columnKey] =
          entry.value;
    }

    return tables;
  }
}
 */
