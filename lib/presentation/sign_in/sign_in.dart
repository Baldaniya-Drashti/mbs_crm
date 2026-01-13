import 'package:mbs_crm/application/sign_in_bloc/sign_in_bloc.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:mbs_crm/presentation/core/widgets/layout/unfocus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'SignIn')
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: CustomUnFocus(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getSize(20)),
                child: BaseText(
                  text: StringConstant.logIn,
                  textColor: AppColors.white,
                  maxLines: 3,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontConstant.jost,
                ),
              ),
              Gap(getSize(30)),
              Container(
                padding: EdgeInsets.symmetric(vertical: getSize(50)),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(getSize(50)),
                  ),
                ),
                alignment: Alignment.center,
                child: BlocBuilder<SignInBloc, SignInState>(
                  builder: (context, state) {
                    return Form(
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
                                initialValue: state.email.getValue(),
                                labelText: StringConstant.email,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) => context
                                    .read<SignInBloc>()
                                    .add(SignInEvent.emailChanged(value)),
                                validator: (p0, p1) => context
                                    .read<SignInBloc>()
                                    .state
                                    .email
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        empty: (value) =>
                                            StringConstant.pleaseEnterEmail,
                                        invalidEmail: (_) => StringConstant
                                            .pleaseEnterValidEmail,
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                              Gap(getSize(20)),
                              CustomTextField(
                                initialValue: state.password.getValue(),
                                labelText: StringConstant.password,
                                obscureText: state.isObscure,
                                suffixIcon: InkWell(
                                  onTap: () {
                                    context.read<SignInBloc>().add(
                                      const SignInEvent.obscureChanged(),
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
                                    .read<SignInBloc>()
                                    .add(SignInEvent.passwordChanged(value)),
                                validator: (p0, p1) => context
                                    .read<SignInBloc>()
                                    .state
                                    .password
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        empty: (value) =>
                                            StringConstant.pleaseEnterPassword,
                                        shortPassword: (_) => StringConstant
                                            .passwordShouldBeMinimum3Digit,
                                        /* invalidPassword: (value) => StringConstant
                                                      .invalidPasswordErrorText, */
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                              Gap(getSize(40)),
                              CommonButton(
                                isSubmitting: state.isSubmitting,
                                onPressed: () {
                                  context.read<SignInBloc>().add(
                                    SignInEvent.loginPressed(),
                                  );
                                },
                                buttonText: StringConstant.logIn,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
