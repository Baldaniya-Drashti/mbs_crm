import 'package:mbs_crm/core/pdf_format/pdf_table_model.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';

List<NormalizedTable> extractTablesFromJson({
  required DynamicFormDTO schema,
  required Map<String, dynamic> json,
}) {
  final tables = <NormalizedTable>[];

  for (FormSection section in schema.sections ?? []) {
    final sectionKey = (section.title ?? '').toLowerCase().replaceAll(' ', '_');

    final sectionData = json[sectionKey];
    if (sectionData is! Map) continue;

    final tablesJson = sectionData['tables'];
    if (tablesJson is! Map) continue;

    for (FormFieldSchema field in section.fields ?? []) {
      if (field.type != 'table') continue;

      final tableKey = field.key!;
      final tableData = tablesJson[tableKey] as Map<String, dynamic>? ?? {};

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
