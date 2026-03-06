import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/build_fields.dart';

class DynamicInstrumentRepeater extends StatelessWidget {
  final FormFieldSchema field;
  final Map<String, dynamic> json;

  const DynamicInstrumentRepeater({
    super.key,
    required this.field,
    required this.json,
  });

  @override
  Widget build(BuildContext context) {
    final rowCount = field.rowCount ?? 1;
    final columns = field.tablecolumn ?? [];

    /// Flatten table structure (including children)
    final List<FormFieldSchema> flattenedFields = [];

    for (final column in columns) {
      if (column.children.isEmpty) {
        flattenedFields.add(
          FormFieldSchema(
            key: column.key,
            label: column.label,
            type: column.type ?? "text",
          ),
        );
      } else {
        for (final child in column.children) {
          flattenedFields.add(
            FormFieldSchema(
              key: child.key,
              label: child.label,
              type: child.type ?? "text",
            ),
          );
        }
      }
    }

    return Column(
      children: List.generate(rowCount, (index) {
        return Card(
          margin: EdgeInsets.only(bottom: getSize(12)),
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.all(getSize(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BaseText(
                  text: "${field.label ?? "Instrument Details"} ${index + 1}",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                Gap(getSize(10)),

                /// Build all fields for this row
                for (final f in flattenedFields)
                  BuildFields.buildField(
                    context: context,
                    field: f.copyWith(key: "${field.key}_${index}_${f.key}"),
                    index: index,
                    json: json,
                  ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
