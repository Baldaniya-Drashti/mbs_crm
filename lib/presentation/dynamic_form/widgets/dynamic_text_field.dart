import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class DynamicTextField extends StatelessWidget {
  final String label;
  final bool required;
  final bool readOnly;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final dynamic initialValue;

  const DynamicTextField({
    super.key,
    required this.label,
    this.validator,
    this.required = false,
    this.keyboardType,
    this.readOnly = false,
    this.initialValue,
  });

  bool get _isDateField =>
      label.toLowerCase().contains("date") || label.toLowerCase() == "date";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getSize(10)),
      child: _isDateField
          ? FormBuilderDateTimePicker(
              name: label,
              inputType: InputType.date,
              initialValue: initialValue,
              decoration: InputDecoration(
                hintText: label,
                hintStyle: TextStyle(color: AppColors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                ),
              ),
              validator: required ? FormBuilderValidators.required() : null,
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
              name: label,
              initialValue: initialValue,
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(color: AppColors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                ),
              ),
              readOnly: readOnly,
              keyboardType: keyboardType,
              validator: required ? FormBuilderValidators.required() : null,
            ),
    );
  }
}
