import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mbs_crm/application/dynamic_form_bloc/dynamic_form_bloc.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class DynamicRadio extends StatelessWidget {
  final String keyName;
  final String label;
  final bool required;
  final List<String> options;

  const DynamicRadio({
    super.key,
    required this.keyName,
    required this.label,
    required this.options,
    this.required = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label.isNotEmpty) BaseText(text: label, fontSize: 15, maxLines: 20),
        FormBuilderRadioGroup(
          name: keyName,
          decoration: InputDecoration(contentPadding: EdgeInsets.zero),
          activeColor: AppColors.primary,
          orientation: OptionsOrientation.vertical,
          options: options
              .map((e) => FormBuilderFieldOption(value: e))
              .toList(),
          onChanged: (value) {
            if (keyName == 'inspection_grade') {
              if (value != null && value.isNotEmpty) {
                context.read<DynamicFormBloc>().add(
                  DynamicFormEvent.inspectionGradeChanged(value),
                );
              }
            }
          },
          validator: required ? FormBuilderValidators.required() : null,
        ),
      ],
    );
  }
}
