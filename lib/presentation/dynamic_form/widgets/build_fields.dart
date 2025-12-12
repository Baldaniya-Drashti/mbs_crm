import 'package:flutter/material.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_drop_down.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_radio.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_signature.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_table/dynamic_table.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_text_field.dart';

class BuildFields {
  static Widget buildField(FormFieldSchema field) {
    // Default Values (Requirement #3)

    switch (field.type) {
      case "number":
        return DynamicTextField(
          label: field.label ?? '',
          required: field.required,
          readOnly: field.readOnly,
          keyboardType: TextInputType.number,
          initialValue: field.initialValue,
        );

      case "dropdown":
        return DynamicDropdown(
          label: field.label ?? '',
          required: field.required,
          options: field.options ?? [],
          initialValue: field.initialValue,
        );

      case "radio":
        return DynamicRadio(
          label: field.label ?? '',
          required: field.required,
          options: field.options ?? [],
        );

      case "signature":
        return DynamicSignature(
          label: field.label ?? '',
          required: field.required,
        );

      case "table":
        return DynamicTable(
          label: field.label ?? '',
          // required: field.required,
          columns: field.tablecolumn ?? [],
          rows: field.rowCount ?? 1,
        );

      default:
        return DynamicTextField(
          label: field.label ?? '',
          required: field.required,
          readOnly: field.readOnly,
        );
    }
  }
}
