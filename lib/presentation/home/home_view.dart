import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:mbs_crm/presentation/core/widgets/dialogs/new_form_list_dialog.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_app_bar.dart';

@RoutePage(name: 'HomeView')
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: StringConstant.forms,
        showBackBtn: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: getSize(10)),
            child: CommonButton(
              onPressed: () {
                NewFormDialog.dialog(
                  context,
                  onTap: (value) {
                    context.router.push(
                      PageRouteInfo(
                        DynamicForm.name,
                        args: DynamicFormArgs(form: value),
                      ),
                    );
                  },
                );
              },
              width: 90,
              height: 30,
              borderRadius: 10,
              buttonFontSize: 12,
              backgroundColor: AppColors.white,
              buttonTextColor: AppColors.primary,
              buttonText: StringConstant.newForm,
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<HomeBloc>(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getSize(15),
            vertical: getSize(20),
          ),
          // child: FormsList(),
        ),
      ),
    );
  }
}
