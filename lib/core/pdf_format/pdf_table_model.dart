import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';

class NormalizedTable {
  final String tableKey;
  final List<TableColumnSchema> columns;
  final int rows;
  final Map<String, dynamic> data;

  NormalizedTable({
    required this.tableKey,
    required this.columns,
    required this.rows,
    required this.data,
  });

  /// flatten columns same as UI
  List<TableColumnSchema> get flatColumns =>
      columns.expand((c) => c.children.isNotEmpty ? c.children : [c]).toList();

  String cellValue(int row, String colKey) {
    return data['row_$row']?[colKey]?.toString() ?? '';
  }
}
