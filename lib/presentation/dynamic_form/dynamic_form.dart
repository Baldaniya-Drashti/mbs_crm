import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/application/dynamic_form_bloc/dynamic_form_bloc.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/helper/form_identifier.dart';
import 'package:mbs_crm/core/pdf_format/generate_pdf.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:mbs_crm/presentation/core/widgets/layout/layout.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/build_fields.dart';

@RoutePage(name: 'DynamicForm')
class DynamicForm extends StatelessWidget {
  final String formSlug;
  final FormIdentifier? formId;
  const DynamicForm({this.formId, super.key, required this.formSlug});

  @override
  Widget build(BuildContext context) {
    final isEdit = formId?.isEdit == true;

    return BlocProvider(
      create: (context) =>
          getIt<DynamicFormBloc>()
            ..add(DynamicFormEvent.loadForm(formSlug, formId: formId)),
      child: BlocBuilder<DynamicFormBloc, DynamicFormState>(
        builder: (context, state) {
          final schema = state.schema ?? DynamicFormDTO();
          return Scaffold(
            appBar: CustomAppBar(
              title: isEdit ? StringConstant.editForm : StringConstant.newForm,
              actions: [
                if (isEdit && !(state.isLoading))
                  InkWell(
                    onTap: () {
                      final form = state.existingForm;
                      if (form?.data != null) {
                        generateAndOpenPdf(
                          json: form?.data ?? {},
                          schema: state.schema!,
                        );
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getSize(10)),
                      child: Icon(Icons.download, color: AppColors.white),
                    ),
                  ),
              ],
            ),
            body: FormBuilder(
              key: context.read<DynamicFormBloc>().formKey,
              child: (state.isLoading)
                  ? Center(child: CenterLoadingIndicator())
                  : SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: getSize(20),
                          horizontal: getSize((isLandscape()) ? 30 : 15),
                        ),
                        child: Column(
                          children: [
                            BaseText(
                              text: state.schema?.title ?? "",
                              fontSize: 18,
                              fontFamily: FontConstant.jost,
                              fontWeight: FontWeight.w500,
                            ),
                            Gap(getSize(20)),
                            if (schema.sections != null)
                              for (var section in schema.sections!)
                                _buildSection(context, section: section),
                            Gap(getSize(10)),
                            CommonButton(
                              isSubmitting: state.isSubmitting,
                              onPressed: () async {
                                final formKey = context
                                    .read<DynamicFormBloc>()
                                    .formKey;
                                if (formKey.currentState?.saveAndValidate() ??
                                    false) {
                                  context.read<DynamicFormBloc>().add(
                                    (isEdit)
                                        ? DynamicFormEvent.updateForm(
                                            formId: formId!,
                                            values:
                                                formKey.currentState?.value ??
                                                {},
                                          )
                                        : DynamicFormEvent.createForm(
                                            formKey.currentState?.value ?? {},
                                          ),
                                  );
                                } else {
                                  showError(
                                    message: StringConstant
                                        .someDetailsAreMissingOrInvalidPleaseCheck,
                                  ).show(context);
                                }
                              },
                              width: (isLandscape()) ? double.maxFinite : null,
                              height: (isLandscape()) ? 80 : 40,
                              borderRadius: 10,
                              buttonText: (isEdit)
                                  ? StringConstant.update
                                  : StringConstant.submit,
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSection(BuildContext context, {required FormSection section}) {
    final bloc = context.watch<DynamicFormBloc>();
    final selectedGrade = bloc.state.selectedInspectionGrade;

    final filteredFields = section.fields?.where((field) {
      if (field.grade == null || field.grade!.isEmpty) {
        return true;
      }

      if (selectedGrade == null) return true;

      return field.grade!
          .split(',')
          .map((e) => e.trim())
          .contains(selectedGrade);
    }).toList();

    if (filteredFields == null || filteredFields.isEmpty) {
      return const SizedBox.shrink();
    }
    return Card(
      elevation: 3,
      color: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.symmetric(vertical: getSize(6)),
      child: ExpansionTile(
        maintainState: true,
        initiallyExpanded: false,
        iconColor: AppColors.black,
        title: Text(
          section.title ?? '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        backgroundColor: AppColors.white,
        childrenPadding: EdgeInsets.all(getSize(10)),
        children: [
          for (int i = 0; i < filteredFields.length; i++)
            BuildFields.buildField(context, filteredFields[i], i),
        ],
      ),
    );
  }
}
