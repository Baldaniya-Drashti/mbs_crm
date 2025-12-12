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

  late List<DataGridRow> _rows;
  late final List<TableColumnSchema> flatColumns;

  TableDataSource({
    required this.columns,
    required this.rowCount,
    required this.tableLabel,
  }) {
    flatColumns = columns
        .expand((c) => c.children.isNotEmpty ? c.children : [c])
        .toList();

    _rows = List.generate(rowCount, (_) {
      return DataGridRow(
        cells: flatColumns
            .map((c) => DataGridCell(columnName: c.label!, value: ""))
            .toList(),
      );
    });
  }

  final Map<String, TextEditingController> _controllers = {};

  @override
  List<DataGridRow> get rows => _rows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final rowIndex = _rows.indexOf(row);
    final centerIndex = rowCount ~/ 2;

    return DataGridRowAdapter(
      cells: row.getCells().map((cell) {
        final column = flatColumns.firstWhere(
          (e) => e.label == cell.columnName,
        );

        // DISPLAY = "single" → show only at center row
        if (column.display == 'single') {
          if (rowIndex != centerIndex) return const SizedBox.shrink();
        }

        return _buildTextField(column.label ?? '', rowIndex, tableLabel);
      }).toList(),
    );
  }

  Widget _buildTextField(String columnKey, int rowIndex, String tableLabel) {
    final fieldName = "table_${tableLabel}_row_${rowIndex}_$columnKey";

    _controllers.putIfAbsent(fieldName, () => TextEditingController());

    return Padding(
      padding: EdgeInsets.all(getSize(4)),
      child: FormBuilderTextField(
        controller: _controllers[fieldName],
        key: ValueKey(fieldName),
        name: fieldName,
        onChanged: (value) {
          // optional (stays in sync)
          if (value != null) {
            _controllers[fieldName]?.text = value;
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary),
          ),
          isDense: true,
        ),
      ),
    );
  }
}
