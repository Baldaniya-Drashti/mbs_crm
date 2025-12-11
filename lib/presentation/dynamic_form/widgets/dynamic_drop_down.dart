import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';

class DynamicDropdown extends StatelessWidget {
  final String label;
  final bool required;
  final List<String> options;
  final String? initialValue;

  const DynamicDropdown({
    super.key,
    required this.label,
    required this.options,
    this.required = false,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getSize(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseText(text: label, fontSize: 15, maxLines: 20),
          Gap(getSize(5)),
          FormBuilderDropdown(
            name: label,
            initialValue: initialValue,
            borderRadius: BorderRadius.circular(5),
            isDense: true,
            decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.start,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
            ),
            dropdownColor: AppColors.white,
            items: options
                .map(
                  (e) => DropdownMenuItem(
                    alignment: Alignment.centerLeft,
                    value: e,
                    child: Padding(
                      padding: EdgeInsets.only(left: getSize(20)),
                      child: BaseText(text: e, fontSize: 14),
                    ),
                  ),
                )
                .toList(),
            validator: required ? FormBuilderValidators.required() : null,
          ),
        ],
      ),
    );
  }
}
