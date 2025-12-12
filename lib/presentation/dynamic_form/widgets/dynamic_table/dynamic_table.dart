import 'package:flutter/material.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_table/widgets/table_data_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DynamicTable extends StatefulWidget {
  final String label;
  final List<TableColumnSchema> columns;
  final int rows;

  const DynamicTable({
    super.key,
    required this.label,
    required this.columns,
    required this.rows,
  });

  @override
  State<DynamicTable> createState() => _DynamicTableState();
}

class _DynamicTableState extends State<DynamicTable> {
  late TableDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    _dataSource = TableDataSource(
      columns: widget.columns,
      rowCount: widget.rows,
      tableLabel: widget.label.replaceAll(" ", "_").toLowerCase(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      source: _dataSource,
      // shrinkWrapRows: true,
      verticalScrollPhysics: const NeverScrollableScrollPhysics(),
      horizontalScrollPhysics: const BouncingScrollPhysics(),
      gridLinesVisibility: GridLinesVisibility.vertical,
      headerGridLinesVisibility: GridLinesVisibility.both,
      stackedHeaderRows: _buildStackedHeaders(),
      columns: _buildGridColumns(),
    );
  }

  // -------------------------------
  // Dynamic Header Builder
  // -------------------------------

  List<StackedHeaderRow> _buildStackedHeaders() {
    final cells = widget.columns.map((c) {
      final List<String> columnNames = c.children.isNotEmpty
          ? c.children.map((e) => e.label!).toList()
          : [];

      return StackedHeaderCell(
        columnNames: columnNames,
        child: Center(child: _header(c.label!)),
      );
    }).toList();

    return [StackedHeaderRow(cells: cells)];
  }

  // -------------------------------
  // Dynamic Column Builder
  // -------------------------------
  List<GridColumn> _buildGridColumns() {
    return widget.columns.expand((c) {
      if (c.children.isEmpty) {
        return [GridColumn(columnName: c.label!, label: _header(c.label!))];
      }
      return c.children.map(
        (child) =>
            GridColumn(columnName: child.label!, label: _header(child.label!)),
      );
    }).toList();
  }

  Widget _header(String text) => Center(
    child: BaseText(
      text: text,
      textAlign: TextAlign.center,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  );
}
