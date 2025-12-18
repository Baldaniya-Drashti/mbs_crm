import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class DynamicTextField extends StatelessWidget {
  final FormFieldSchema field;
  // final String keyName;
  // final String label;
  // final bool required;
  // final bool readOnly;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const DynamicTextField({
    super.key,
    required this.field,
    // required this.keyName,
    // required this.label,
    this.validator,
    // this.required = false,
    this.keyboardType,
    // this.readOnly = false,
  });

  bool get _isDateField =>
      (field.key ?? "").toLowerCase().contains("date") ||
      (field.key ?? "").toLowerCase() == "date";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getSize(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseText(text: field.label ?? '', fontSize: 15),
          _isDateField
              ? FormBuilderDateTimePicker(
                  name: field.key ?? "",
                  inputType: InputType.date,
                  format: DateFormat('dd/MM/yyyy'),
                  // initialValue: initialValue,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                  ),
                  validator: (field.required)
                      ? FormBuilderValidators.required()
                      : null,
                  initialEntryMode: DatePickerEntryMode.calendarOnly,
                  transitionBuilder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: ColorScheme.light(
                          primary: AppColors.primary,
                          onPrimary: Colors.white,
                          surface: Colors.white,
                          onSurface: Colors.black,
                        ),
                      ),
                      child: child!,
                    );
                  },
                )
              : FormBuilderTextField(
                  name: field.key ?? "",
                  // initialValue: initialValue,
                  cursorColor: AppColors.primary,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                  ),
                  maxLines: field.maxLines,
                  readOnly: field.readOnly,
                  keyboardType: keyboardType,
                  validator: field.required
                      ? FormBuilderValidators.required()
                      : null,
                ),
        ],
      ),
    );
  }
}
