import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/application/dynamic_form_bloc/dynamic_form_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_attachment_field.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_text_field.dart';

class DynamicDropdown extends StatelessWidget {
  final FormFieldSchema field;
  final int index;

  const DynamicDropdown({super.key, required this.field, required this.index});

  @override
  Widget build(BuildContext context) {
    final formKey = context.read<DynamicFormBloc>().formKey;
    final formState = formKey.currentState;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: getSize(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseText(
            text: "${index + 1}. ${field.grade ?? ''} ${field.label ?? ''}",
            fontSize: 15,
            maxLines: 20,
          ),
          Gap(getSize(5)),
          FormBuilderDropdown(
            name: field.key ?? '',
            validator: field.required ? FormBuilderValidators.required() : null,
            onChanged: (value) {
              context.read<DynamicFormBloc>().add(
                DynamicFormEvent.onDropDownChanged(
                  fieldKey: field.key ?? '',
                  value: value,
                ),
              );
            },
            items: (field.options ?? [])
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
            borderRadius: BorderRadius.circular(5),
            isDense: true,
            decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.start,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
            ),
            dropdownColor: AppColors.white,
          ),
          // Always render reason + attachment fields
          BlocBuilder<DynamicFormBloc, DynamicFormState>(
            builder: (context, state) {
              final dropdownValue = formState?.fields[field.key ?? '']?.value;
              final reasonValue =
                  formState?.fields['${field.key ?? ''}_reason']?.value;
              // Show reason/attachment if dropdown = "No" OR reason already has value (edit mode)
              final showExtra =
                  dropdownValue == "No" ||
                  (reasonValue != null && reasonValue.toString().isNotEmpty);
              return Visibility(
                visible: showExtra,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: false,
                child: Column(
                  children: [
                    Gap(getSize(10)),
                    DynamicTextField(
                      field: FormFieldSchema(
                        key: '${field.key ?? ''}_reason',
                        label: StringConstant.reason,
                        maxLines: 3,
                      ),
                    ),
                    Gap(getSize(10)),
                    DynamicAttachmentField(
                      field: FormFieldSchema(
                        key: '${field.key ?? ''}_attachments',
                        multipleImages: true,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
