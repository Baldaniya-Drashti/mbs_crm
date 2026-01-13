import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/application/onboarding_bloc/onboarding_bloc.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:mbs_crm/presentation/onboarding/widgets/onboarding_radio_btn.dart';

@RoutePage(name: 'OnBoarding')
class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OnboardingBloc>(),
      child: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.primary,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getSize(20)),
                  child: BaseText(
                    text: StringConstant.whatIsYourRole,
                    textColor: AppColors.white,
                    maxLines: 3,
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontConstant.jost,
                  ),
                ),
                Gap(getSize(30)),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.70,
                    // margin: EdgeInsets.all(getSize(5)),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(getSize(50)),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OnBoardingRadio(
                                onTap: () {
                                  context.read<OnboardingBloc>().add(
                                    OnboardingEvent.setSelectedUser(1),
                                  );
                                },
                                isSelected: state.selectedUser == 1,
                                icon: Icons.admin_panel_settings_outlined,
                                title: StringConstant.admin,
                              ),
                              OnBoardingRadio(
                                onTap: () {
                                  context.read<OnboardingBloc>().add(
                                    OnboardingEvent.setSelectedUser(2),
                                  );
                                },
                                isSelected: state.selectedUser == 2,
                                icon: Icons.person_2_outlined,
                                title: StringConstant.user,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: getSize(20),
                            horizontal: getSize(20),
                          ),
                          child: CommonButton(
                            onPressed: () {
                              context.read<OnboardingBloc>().add(
                                OnboardingEvent.submitUser(),
                              );
                            },
                            buttonText: StringConstant.next,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
