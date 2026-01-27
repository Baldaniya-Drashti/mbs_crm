import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/application/add_user_bloc/add_user_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_text_field.dart';

@RoutePage(name: 'AddUser')
class AddUser extends StatelessWidget {
  final int? id;
  const AddUser({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: (id != null)
            ? StringConstant.updateUser
            : StringConstant.addUser,
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<AddUserBloc>()..add(AddUserEvent.getUser(id)),
        child: BlocBuilder<AddUserBloc, AddUserState>(
          builder: (context, state) {
            return (state.isLoading)
                ? CenterLoadingIndicator()
                : Form(
                    autovalidateMode: (state.showError)
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getSize(20),
                          vertical: getSize(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomTextField(
                              initialValue: state.firstName.getValue(),
                              labelText: StringConstant.firstName,
                              onChanged: (value) => context
                                  .read<AddUserBloc>()
                                  .add(AddUserEvent.firstNameChanged(value)),
                              validator: (p0, p1) => context
                                  .read<AddUserBloc>()
                                  .state
                                  .firstName
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterFirstName,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            Gap(getSize(20)),
                            CustomTextField(
                              initialValue: state.lastName.getValue(),
                              labelText: StringConstant.lastName,
                              onChanged: (value) => context
                                  .read<AddUserBloc>()
                                  .add(AddUserEvent.lastNameChanged(value)),
                              validator: (p0, p1) => context
                                  .read<AddUserBloc>()
                                  .state
                                  .lastName
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterLastName,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            Gap(getSize(20)),
                            CustomTextField(
                              initialValue: state.email.getValue(),
                              labelText: StringConstant.email,
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) => context
                                  .read<AddUserBloc>()
                                  .add(AddUserEvent.emailChanged(value)),
                              validator: (p0, p1) => context
                                  .read<AddUserBloc>()
                                  .state
                                  .email
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterEmail,
                                      invalidEmail: (_) =>
                                          StringConstant.pleaseEnterValidEmail,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),

                            Gap(getSize(20)),
                            CustomTextField(
                              labelText: StringConstant.password,
                              obscureText: state.isObscure,
                              suffixIcon: InkWell(
                                onTap: () {
                                  context.read<AddUserBloc>().add(
                                    const AddUserEvent.obscureChanged(),
                                  );
                                },
                                child: Container(
                                  color: AppColors.transparent,
                                  padding: EdgeInsets.all(getSize(9)),
                                  child: Icon(
                                    (state.isObscure)
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                ),
                              ),
                              onChanged: (value) => context
                                  .read<AddUserBloc>()
                                  .add(AddUserEvent.passwordChanged(value)),
                              validator: (p0, p1) => context
                                  .read<AddUserBloc>()
                                  .state
                                  .password
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterPassword,
                                      shortPassword: (_) => StringConstant
                                          .passwordShouldBeMinimum3Digit,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            Gap(getSize(20)),
                            CustomTextField(
                              labelText: StringConstant.confirmPassword,
                              obscureText: state.isObscure,
                              suffixIcon: InkWell(
                                onTap: () {
                                  context.read<AddUserBloc>().add(
                                    const AddUserEvent.obscureChanged(),
                                  );
                                },
                                child: Container(
                                  color: AppColors.transparent,
                                  padding: EdgeInsets.all(getSize(9)),
                                  child: Icon(
                                    (state.isObscure)
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                ),
                              ),
                              onChanged: (value) =>
                                  context.read<AddUserBloc>().add(
                                    AddUserEvent.confirmPasswordChanged(
                                      value,
                                      state.password.getValue(),
                                    ),
                                  ),
                              validator: (_, context) => context
                                  .read<AddUserBloc>()
                                  .state
                                  .confirmPassword
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      passwordsDontMatch: (_) => StringConstant
                                          .bothPasswordsAreDoesNotMatch,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),

                            Gap(getSize(40)),
                            CommonButton(
                              isSubmitting: state.isSubmitting,
                              onPressed: () {
                                context.read<AddUserBloc>().add(
                                  (id != null)
                                      ? AddUserEvent.updateUser(id ?? -1)
                                      : AddUserEvent.addUser(),
                                );
                              },
                              buttonText: (id != null)
                                  ? StringConstant.update
                                  : StringConstant.add,
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
}
