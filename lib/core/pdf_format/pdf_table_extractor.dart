import 'package:mbs_crm/core/pdf_format/pdf_table_model.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';

List<NormalizedTable> extractTablesFromJson({
  required DynamicFormDTO schema,
  required Map<String, dynamic> json,
}) {
  final tables = <NormalizedTable>[];

  for (FormSection section in schema.sections ?? []) {
    final sectionKey =
        section.key ?? (section.title ?? '').toLowerCase().replaceAll(' ', '_');

    final sectionData = json[sectionKey];
    if (sectionData is! Map<String, dynamic>) continue;

    for (FormFieldSchema field in section.fields ?? []) {
      if (field.type != 'table') continue;

      final tableKey = field.key!;
      final prefix = "table_${tableKey}_row_";

      final Map<String, dynamic> tableData = {};

      sectionData.forEach((key, value) {
        if (!key.startsWith(prefix)) return;

        final remaining = key.replaceFirst(prefix, '');
        final parts = remaining.split('_');

        if (parts.length < 2) return;

        final rowIndex = parts.first;
        final columnKey = parts.sublist(1).join('_');

        tableData.putIfAbsent('row_$rowIndex', () => {});
        tableData['row_$rowIndex'][columnKey] = value;
      });

      tables.add(
        NormalizedTable(
          tableKey: tableKey,
          columns: field.tablecolumn ?? [],
          rows: field.rowCount ?? 1,
          data: tableData,
        ),
      );
    }
  }

  return tables;
}

Map<int, Map<String, dynamic>> groupInstrumentRows(
  Map<String, dynamic> sectionData,
  String tableKey,
) {
  final prefix = "table_${tableKey}_row_";
  final Map<int, Map<String, dynamic>> grouped = {};

  sectionData.forEach((key, value) {
    if (!key.startsWith(prefix)) return;

    final remaining = key.replaceFirst(prefix, '');
    final parts = remaining.split('_');

    if (parts.length < 2) return;

    final rowIndex = int.tryParse(parts.first);
    if (rowIndex == null) return;

    final columnKey = parts.sublist(1).join('_');

    grouped.putIfAbsent(rowIndex, () => {});
    grouped[rowIndex]![columnKey] = value;
  });

  return grouped;
}

Map<String, String> buildInstrumentLabelMap(DynamicFormDTO schema) {
  final Map<String, String> labelMap = {};

  final section = schema.sections?.firstWhere(
    (s) => s.key == "instrument_details",
    orElse: () => FormSection(),
  );

  final tableField = section?.fields?.firstWhere(
    (f) => f.key == "instrument_table",
    orElse: () => FormFieldSchema(),
  );

  final columns = tableField?.tablecolumn ?? [];

  for (final col in columns) {
    if (col.children.isNotEmpty) {
      for (final child in col.children) {
        if (child.key != null && child.label != null) {
          labelMap[child.key!] = child.label!;
        }
      }
    } else {
      if (col.key != null && col.label != null) {
        labelMap[col.key!] = col.label!;
      }
    }
  }

  return labelMap;
}

Map<String, String> buildQuestionLabelMap(DynamicFormDTO schema) {
  final map = <String, String>{};

  for (FormSection section in schema.sections ?? []) {
    for (FormFieldSchema field in section.fields ?? []) {
      if (field.key != null && field.label != null) {
        map[field.key!] = field.label!;
      }
    }
  }

  return map;
}
