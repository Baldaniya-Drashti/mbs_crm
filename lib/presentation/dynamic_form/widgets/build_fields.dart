import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/dynamic_form_bloc/dynamic_form_bloc.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_attachment_field.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_dropdown/dynamic_drop_down.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_radio.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_signature.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_table/dynamic_table.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_text_field.dart';

class BuildFields {
  static Widget buildField(
    BuildContext context,
    FormFieldSchema field,
    int index,
  ) {
    switch (field.type) {
      case "number":
        return DynamicTextField(
          field: field,
          keyboardType: TextInputType.number,
        );
      case "dropdown":
        return DynamicDropdown(index: index, field: field);
      case "radio":
        return DynamicRadio(
          keyName: field.key ?? '',
          label: field.label ?? '',
          required: field.required,
          options: field.options ?? [],
        );
      case "signature":
        return DynamicSignature(
          keyName: field.key ?? '',
          label: field.label ?? '',
          required: field.required,
        );
      case "table":
        return DynamicTable(
          keyName: field.key ?? '',
          label: field.label ?? '',
          columns: field.tablecolumn ?? [],
          rows: field.rowCount ?? 1,
          tableCache: context.read<DynamicFormBloc>().tableCache,
        );
      case "attachment":
        return DynamicAttachmentField(field: field);

      default:
        return DynamicTextField(field: field);
    }
  }
}
