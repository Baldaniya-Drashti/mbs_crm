import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/application/dynamic_form_bloc/dynamic_form_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/attachment_file_dto/attachment_file_dto.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';

class DynamicAttachmentField extends StatelessWidget {
  final FormFieldSchema field;

  const DynamicAttachmentField({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DynamicFormBloc, DynamicFormState>(
      builder: (context, state) {
        final fieldKey = field.key;
        final files = fieldKey == null
            ? const <AttachmentFileDTO>[]
            : state.attachmentCache[fieldKey] ?? const <AttachmentFileDTO>[];

        return Container(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonButton(
                width: 120,
                height: 40,
                borderColor: AppColors.primary,
                backgroundColor: AppColors.white,
                onPressed: () {
                  context.read<DynamicFormBloc>().add(
                    DynamicFormEvent.attachFileEvent(field),
                  );
                },
                customWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.attach_file_rounded, color: AppColors.primary),
                    BaseText(
                      text: StringConstant.addFiles,
                      textColor: AppColors.primary,
                    ),
                  ],
                ),
                buttonText: StringConstant.addFiles,
              ),
              Gap(getSize(8)),
              if (files.isNotEmpty)
                ...files.map(
                  (file) => ListTile(
                    leading: Icon(Icons.insert_drive_file),
                    title: BaseText(text: file.name ?? ""),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
