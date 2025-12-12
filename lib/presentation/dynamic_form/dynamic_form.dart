import 'dart:convert';
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
import 'package:mbs_crm/infrastructure/form_dto/form_dto.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:mbs_crm/presentation/core/widgets/layout/layout.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/build_fields.dart';

@RoutePage(name: 'DynamicForm')
class DynamicForm extends StatelessWidget {
  final FormDTO form;
  DynamicForm({required this.form, super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: StringConstant.newForm),
      body: BlocProvider(
        create: (context) =>
            getIt<DynamicFormBloc>()
              ..add(DynamicFormEvent.loadForm(form.slug ?? '')),
        child: FormBuilder(
          key: _formKey,
          child: BlocBuilder<DynamicFormBloc, DynamicFormState>(
            builder: (context, state) {
              final schema = state.schema ?? DynamicFormDTO();
              return (state.isLoading)
                  ? Center(child: CenterLoadingIndicator())
                  : Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getSize(20),
                        horizontal: getSize((isLandscape()) ? 30 : 15),
                      ),
                      child: Column(
                        children: [
                          BaseText(
                            text: form.title ?? '',
                            fontSize: 18,
                            fontFamily: FontConstant.jost,
                            fontWeight: FontWeight.w500,
                          ),
                          Gap(getSize(20)),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  if (schema.sections != null)
                                    for (var section in schema.sections!)
                                      _buildSection(section: section),
                                ],
                              ),
                            ),
                          ),
                          Gap(getSize(10)),
                          CommonButton(
                            onPressed: () async {
                              if (_formKey.currentState!.saveAndValidate()) {
                                final Map<String, dynamic> data =
                                    Map<String, dynamic>.from(
                                      _formKey.currentState!.value,
                                    );

                                context.read<DynamicFormBloc>().add(
                                  DynamicFormEvent.submitForm(data),
                                );
                              }
                            },
                            width: (isLandscape()) ? double.maxFinite : null,
                            height: (isLandscape()) ? 80 : 40,
                            borderRadius: 10,
                            buttonText: StringConstant.submit,
                          ),
                        ],
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required FormSection section}) {
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
            for (var field in section.fields!) BuildFields.buildField(field),
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
