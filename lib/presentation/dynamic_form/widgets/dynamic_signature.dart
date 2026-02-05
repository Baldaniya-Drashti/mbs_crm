import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:signature/signature.dart';

class DynamicSignature extends StatefulWidget {
  final String keyName;
  final String label;
  final bool required;

  const DynamicSignature({
    super.key,
    required this.keyName,
    required this.label,

    this.required = false,
  });

  @override
  State<DynamicSignature> createState() => _DynamicSignatureState();
}

class _DynamicSignatureState extends State<DynamicSignature> {
  late SignatureController controller;
  String? savedSignature;

  @override
  void initState() {
    super.initState();
    controller = SignatureController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final bloc = context.read<DynamicFormBloc>();

    return FormBuilderField(
      name: widget.keyName,
      validator: (value) {
        if (widget.required && controller.isEmpty) {
          return "Signature required";
        }
        return null;
      },
      builder: (field) {
        // Set Initial Value if Exist
        if (savedSignature == null && field.value != null) {
          savedSignature = field.value as String;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseText(text: widget.label, fontSize: 15),
            Gap(getSize(5)),
            Container(
              height: getSize((isLandscape()) ? 300 : 200),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.black.withValues(alpha: getSize(0.3)),
                ),
              ),
              child: savedSignature != null
                  ? Image.memory(
                      base64Decode(savedSignature!),
                      fit: BoxFit.contain,
                    )
                  : Signature(
                      controller: controller,
                      backgroundColor: AppColors.black.withValues(alpha: 0.04),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: CommonButton(
                    onPressed: () {
                      controller.clear();
                      savedSignature = null;
                      field.didChange(null);
                    },
                    buttonText: StringConstant.clear,
                    buttonFontSize: 12,
                    backgroundColor: AppColors.white,
                    buttonTextColor: AppColors.primary,
                    width: 80,
                    height: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CommonButton(
                    onPressed: () async {
                      final bytes = await controller.toPngBytes();
                      if (bytes != null) {
                        final encoded = base64Encode(bytes);
                        savedSignature = encoded;
                        field.didChange(encoded);
                      }
                    },
                    buttonText: StringConstant.save,
                    buttonFontSize: 12,
                    backgroundColor: AppColors.white,
                    buttonTextColor: AppColors.primary,
                    width: 80,
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
