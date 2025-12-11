import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:signature/signature.dart';

class DynamicSignature extends StatelessWidget {
  final String label;
  final bool required;

  DynamicSignature({super.key, required this.label, this.required = false});
  final SignatureController controller = SignatureController();

  @override
  Widget build(BuildContext context) {
    // final bloc = context.read<DynamicFormBloc>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BaseText(text: label, fontSize: 14),
        Gap(getSize(5)),
        Container(
          height: getSize(200),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.black.withValues(alpha: getSize(0.3)),
            ),
          ),
          child: Signature(
            controller: controller,
            backgroundColor: AppColors.black.withValues(alpha: 0.04),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: CommonButton(
            onPressed: controller.clear,
            buttonText: StringConstant.clear,
            buttonFontSize: 12,
            backgroundColor: AppColors.white,
            buttonTextColor: AppColors.primary,
            width: 80,
            height: 30,
          ),
        ),
        /* FormBuilderField(
          name: label,
          validator: (v) =>
              required && controller.isEmpty ? "Signature required" : null,
          builder: (field) => SizedBox.shrink(),
          enabled: true,
          
          onSaved: (_) async {
            final bytes = await controller.toPngBytes();
            if (bytes != null) {
              bloc.add(
                DynamicFormEvent.updateValue(label, base64Encode(bytes)),
              );
            }
          },
        ), */
      ],
    );
  }
}
