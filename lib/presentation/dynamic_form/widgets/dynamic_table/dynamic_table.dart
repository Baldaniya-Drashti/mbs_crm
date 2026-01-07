import 'package:flutter/material.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_table/widgets/table_data_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DynamicTable extends StatefulWidget {
  final String keyName;
  final String label;
  final List<TableColumnSchema> columns;
  final int rows;
  final Map<String, String> tableCache;

  const DynamicTable({
    super.key,
    required this.keyName,
    required this.label,
    required this.columns,
    required this.rows,
    required this.tableCache,
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
      tableLabel: widget.keyName.replaceAll(" ", "_").toLowerCase(),
      cache: widget.tableCache,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      // shrinkWrapColumns: true,
      // shrinkWrapRows: true,
      columnWidthMode: ColumnWidthMode.none,
      showHorizontalScrollbar: false,
      source: _dataSource,
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
    return [
      StackedHeaderRow(
        cells: widget.columns.map((c) {
          return StackedHeaderCell(
            columnNames: c.children.map((e) => e.key!).toList(),
            child: Center(child: _header(c.label!)),
          );
        }).toList(),
      ),
    ];
  }

  // -------------------------------
  // Dynamic Column Builder
  // -------------------------------
  List<GridColumn> _buildGridColumns() {
    return widget.columns.expand((c) {
      if (c.children.isEmpty) {
        return [GridColumn(columnName: c.key!, label: _header(c.label!))];
      }
      return c.children.map(
        (child) =>
            GridColumn(columnName: child.key!, label: _header(child.label!)),
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
