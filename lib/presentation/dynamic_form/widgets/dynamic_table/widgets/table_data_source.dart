import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class TableDataSource extends DataGridSource {
  final List<TableColumnSchema> columns;
  final int rowCount;
  final String tableLabel;
  final Map<String, String> cache;

  late List<DataGridRow> _rows;
  late final List<TableColumnSchema> flatColumns;

  TableDataSource({
    required this.columns,
    required this.rowCount,
    required this.tableLabel,
    required this.cache,
  }) {
    flatColumns = columns
        .expand((c) => c.children.isNotEmpty ? c.children : [c])
        .toList();

    _rows = List.generate(rowCount, (rowIndex) {
      return DataGridRow(
        cells: flatColumns.map((c) {
          final key = _fieldKey(rowIndex, c.key!);
          return DataGridCell(columnName: c.key!, value: cache[key] ?? '');
        }).toList(),
      );
    });
  }

  String _fieldKey(int row, String col) =>
      'table_${tableLabel}_row_${row}_$col';

  @override
  List<DataGridRow> get rows => _rows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final rowIndex = _rows.indexOf(row);
    final centerIndex = rowCount ~/ 2;

    return DataGridRowAdapter(
      cells: row.getCells().map((cell) {
        final column = flatColumns.firstWhere((e) => e.key == cell.columnName);

        // DISPLAY = "single" → show only at center row
        if (column.display == 'single' && rowIndex != centerIndex) {
          return const SizedBox.shrink();
        }

        final fieldKey = _fieldKey(rowIndex, cell.columnName);

        // return _buildTextField(column.label ?? '', rowIndex, tableLabel);
        return Padding(
          padding: EdgeInsets.all(getSize(4)),
          child: TextField(
            key: ValueKey(fieldKey),
            controller: TextEditingController(text: cache[fieldKey] ?? ''),
            onChanged: (value) {
              cache[fieldKey] = value;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
            ),
          ),
        );
      }).toList(),
    );
  }
}
