import 'package:another_flushbar/flushbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/common/widgets/paginated_list_view.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:mbs_crm/presentation/core/widgets/dialogs/new_form_list_dialog.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:mbs_crm/presentation/home/widgets/form_list.dart';

@RoutePage(name: 'HomeView')
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(HomeEvent.getFormsList(true)),
      child: Scaffold(
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
                    onTap: (form) {
                      context.router
                          .push(
                            PageRouteInfo(
                              DynamicForm.name,
                              args: DynamicFormArgs(formType: form.slug ?? ""),
                            ),
                          )
                          .then((value) {
                            if (value == true) {
                              context.read<HomeBloc>().add(
                                HomeEvent.getFormsList(true),
                              );
                            }
                          });
                    },
                  );
                },
                width: (isLandscape()) ? 200 : 90,
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
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return (state.isLoading)
                ? CenterLoadingIndicator()
                : PaginatedListView(
                    onLoading: () {
                      context.read<HomeBloc>().add(
                        HomeEvent.getFormsList(false),
                      );
                    },
                    onRefresh: () {
                      context.read<HomeBloc>().add(
                        HomeEvent.getFormsList(true),
                      );
                    },
                    refreshController: getIt<HomeBloc>().refreshController,
                    isNoDataFound: state.formsList.isEmpty,
                    child: ListView.builder(
                      itemCount: state.formsList.length,
                      padding: EdgeInsets.symmetric(
                        horizontal: getSize(15),
                        vertical: getSize(20),
                      ),
                      itemBuilder: (_, index) {
                        final form = state.formsList[index];
                        return GestureDetector(
                          onTap: () {
                            context.router
                                .push(
                                  PageRouteInfo(
                                    DynamicForm.name,
                                    args: DynamicFormArgs(
                                      id: form.id ?? -1,
                                      formType: form.slug ?? "",
                                    ),
                                  ),
                                )
                                .then((value) {
                                  if (value == true) {
                                    context.read<HomeBloc>().add(
                                      HomeEvent.getFormsList(true),
                                    );
                                  }
                                });
                          },
                          child: FormTile(form: form),
                        );
                      },
                    ),
                  );
          },
        ),
      ),
    );
  }
}
