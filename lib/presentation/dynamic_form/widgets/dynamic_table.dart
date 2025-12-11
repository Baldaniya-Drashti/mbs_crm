import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mbs_crm/application/dynamic_form_bloc/dynamic_form_bloc.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class DynamicTable extends StatelessWidget {
  final String label;
  final bool required;
  final List<TableColumnSchema> columns;
  int rows;

  DynamicTable({
    super.key,
    required this.label,
    required this.columns,
    required this.rows,
    this.required = false,
  });

  @override
  Widget build(BuildContext context) {
    final tableData = List.generate(rows, (_) => <String, dynamic>{});
    return SizedBox(
      height: getSize(300),
      child: ScrollbarTheme(
        data: ScrollbarThemeData(
          thickness: WidgetStateProperty.all(getSize(2)),
        ),
        child: DataTable2(
          columnSpacing: getSize(10),
          horizontalMargin: getSize(12),
          minWidth: getSize(550),
          showBottomBorder: false,
          dividerThickness: 0,
          border: TableBorder.all(style: BorderStyle.none),
          headingRowColor: WidgetStateColor.resolveWith(
            (states) => AppColors.primary.withValues(alpha: 0.2),
          ),
          dataRowHeight: getSize(50),
          columns: columns
              .map(
                (c) => DataColumn(
                  label: BaseText(
                    text: c.label ?? "",
                    maxLines: 5,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
              .toList(),
          rows: List.generate(rows, (rIndex) {
            return DataRow(
              cells: columns.map((col) {
                return DataCell(
                  FormBuilderTextField(
                    name: "${label}_${rIndex}_${col.label}",
                    onChanged: (v) {
                      tableData[rIndex][col.label ?? ""] = v;
                      // bloc.add(DynamicFormEvent.updateValue(label, tableData));
                    },
                    cursorColor: AppColors.primary,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: getSize(10),
                        horizontal: getSize(10),
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          }),
        ),
      ),
    );
  }
}
