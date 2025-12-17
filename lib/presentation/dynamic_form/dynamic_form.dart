import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/application/dynamic_form_bloc/dynamic_form_bloc.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
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
  final String formType;
  final int? id;
  DynamicForm({this.id, super.key, required this.formType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: id != null ? StringConstant.editForm : StringConstant.newForm,
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<DynamicFormBloc>()
              ..add(DynamicFormEvent.loadForm(formType, id: id)),
        child: BlocBuilder<DynamicFormBloc, DynamicFormState>(
          builder: (context, state) {
            final schema = state.schema ?? DynamicFormDTO();
            return FormBuilder(
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
                              text: state.schema?.title ?? '',
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
                                final _formKey = context
                                    .read<DynamicFormBloc>()
                                    .formKey;
                                if (_formKey.currentState?.saveAndValidate() ??
                                    false) {
                                  final Map<String, dynamic> data =
                                      Map<String, dynamic>.from(
                                        _formKey.currentState!.value,
                                      );

                                  context.read<DynamicFormBloc>().add(
                                    DynamicFormEvent.submitForm(
                                      _formKey.currentState?.value ?? {},
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
                              buttonText: (id != null)
                                  ? StringConstant.update
                                  : StringConstant.submit,
                            ),
                          ],
                        ),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, {required FormSection section}) {
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
          if (section.fields != null)
            for (var field in section.fields!)
              BuildFields.buildField(context, field),
          /* DynamicTextField(
              label: field.label,
              validator: field.required == true
                  ? FormBuilderValidators.required()
                  : null,
            ), */
        ],
      ),
    );
  }
}
