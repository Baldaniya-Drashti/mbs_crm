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
  final String keyName;
  final String label;
  final bool required;
  final List<String> options;

  const DynamicDropdown({
    super.key,
    required this.keyName,
    required this.label,
    required this.options,
    this.required = false,
  });

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
          BaseText(text: label, fontSize: 15, maxLines: 20),
          Gap(getSize(5)),
          FormBuilderDropdown(
            name: keyName,
            validator: required ? FormBuilderValidators.required() : null,
            onChanged: (value) {
              // Trigger rebuild when dropdown changes
              context.read<DynamicFormBloc>().add(
                DynamicFormEvent.onDropDownChanged(
                  fieldKey: keyName,
                  value: value,
                ),
              );
            },
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
              final dropdownValue = formState?.fields[keyName]?.value;
              final reasonValue = formState?.fields['${keyName}_reason']?.value;

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
                        key: '${keyName}_reason',
                        label: StringConstant.reason,
                        maxLines: 3,
                      ),
                    ),
                    Gap(getSize(10)),
                    DynamicAttachmentField(
                      field: FormFieldSchema(
                        key: '${keyName}_attachments',
                        multipleImages: true,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          /* BlocBuilder<DynamicFormBloc, DynamicFormState>(
            buildWhen: (p, c) => p.rebuildTick != c.rebuildTick,
            builder: (context, state) {
              final formState = context
                  .read<DynamicFormBloc>()
                  .formKey
                  .currentState;
              final dropdownValue = formState?.fields[keyName]?.value;
              final reasonValue = formState?.fields['${keyName}_reason']?.value;

              // Show extra fields if dropdown is "No" OR reason field already has value (edit mode)
              final showExtra =
                  dropdownValue == "No" ||
                  (reasonValue != null && reasonValue.toString().isNotEmpty);

              if (!showExtra) return const SizedBox.shrink();

              return Column(
                children: [
                  Gap(getSize(10)),

                  // REASON FIELD
                  DynamicTextField(
                    field: FormFieldSchema(
                      key: '${keyName}_reason',
                      label: StringConstant.reason,
                      maxLines: 3,
                    ),
                  ),
                  Gap(getSize(10)),

                  // ATTACHMENTS
                  DynamicAttachmentField(
                    field: FormFieldSchema(
                      key: '${keyName}_attachments',
                      multipleImages: true,
                    ),
                  ),
                ],
              );
            },
          ), */
        ],
      ),
    );
  }
}
