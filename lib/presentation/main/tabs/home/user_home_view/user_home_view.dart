// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/core/helper/form_identifier.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/common/widgets/paginated_list_view.dart';
import 'package:mbs_crm/presentation/main/tabs/form_tab_view/widgets/form_delete_dialog.dart';
import 'package:mbs_crm/presentation/main/tabs/home/user_home_view/widgets/form_tile.dart';

@RoutePage(name: 'UserHomeView')
class UserHomeView extends StatelessWidget {
  const UserHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return (state.isLoading)
            ? CenterLoadingIndicator()
            : PaginatedListView(
                onLoading: () {
                  context.read<HomeBloc>().add(HomeEvent.getFormsList(false));
                },
                onRefresh: () {
                  context.read<HomeBloc>().add(HomeEvent.getFormsList(true));
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
                      onTap: () async {
                        context.router
                            .push(
                              PageRouteInfo(
                                DynamicForm.name,
                                args: DynamicFormArgs(
                                  formId: FormIdentifier(
                                    serverId: form.server_id,
                                    localId: form.localId,
                                  ),
                                  formSlug: form.slug ?? "",
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
                      child: FormTile(
                        form: form,
                        index: (index + 1),

                        onDeleteForm: () {
                          FormDeleteDialog().deleteDialog(
                            context,
                            onPressedDelete: () {
                              final currentContext = getIt<AppRouter>()
                                  .navigatorKey
                                  .currentContext!;

                              currentContext.router.maybePop();
                              context.read<HomeBloc>().add(
                                HomeEvent.deleteForm(
                                  FormIdentifier(
                                    serverId: form.server_id,
                                    localId: form.localId,
                                  ),
                                ),
                              );
                            },
                            onPressedCancel: () {
                              context.router.maybePop();
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              );
      },
    );
  }
}
