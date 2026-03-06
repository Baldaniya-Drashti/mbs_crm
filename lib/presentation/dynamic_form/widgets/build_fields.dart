import 'package:flutter/material.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_attachment_field.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_dropdown/dynamic_drop_down.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_instrument_repeater/dynamic_instrument_repeater.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_radio.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_signature.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_text_field.dart';

class BuildFields {
  static Widget buildField({
    required BuildContext context,
    required FormFieldSchema field,
    required int index,
    required Map<String, dynamic> json,
  }) {
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
        /* return DynamicTable(
          keyName: field.key ?? '',
          label: field.label ?? '',
          columns: field.tablecolumn ?? [],
          rows: field.rowCount ?? 1,
          tableCache: context.read<DynamicFormBloc>().tableCache,
        ); */
        return DynamicInstrumentRepeater(field: field, json: json);
      case "attachment":
        return DynamicAttachmentField(
          field: field,
          json: json,
          isOnlyImages: false,
        );

      default:
        return DynamicTextField(field: field);
    }
  }
}
