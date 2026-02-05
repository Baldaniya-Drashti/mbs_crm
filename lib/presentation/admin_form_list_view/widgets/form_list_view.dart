// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/form_tab_bloc/form_tab_bloc.dart';
import 'package:mbs_crm/core/helper/form_identifier.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/common/widgets/paginated_list_view.dart';
import 'package:mbs_crm/presentation/main/tabs/form_tab_view/widgets/form_delete_dialog.dart';
import 'package:mbs_crm/presentation/main/tabs/form_tab_view/widgets/form_tab_tile.dart';

class FormListView extends StatelessWidget {
  final int? userId;
  const FormListView({super.key, this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormTabBloc, FormTabState>(
      builder: (context, state) {
        return (state.isLoading)
            ? CenterLoadingIndicator()
            : PaginatedListView(
                onLoading: () {
                  context.read<FormTabBloc>().add(
                    FormTabEvent.getFormsList(false, userId: userId),
                  );
                },
                onRefresh: () {
                  context.read<FormTabBloc>().add(
                    FormTabEvent.getFormsList(true, userId: userId),
                  );
                },
                refreshController: getIt<FormTabBloc>().refreshController,
                isNoDataFound: state.formsList.isEmpty,
                child: ListView.builder(
                  itemCount: state.formsList.length,
                  padding: EdgeInsets.symmetric(
                    horizontal: getSize(15),
                    vertical: getSize(20),
                  ),
                  itemBuilder: (_, index) {
                    final form = state.formsList[index];
                    return FormTabTile(
                      index: index + 1,
                      form: form,
                      userId: userId,
                      onUpdateForm: () {
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
                                context.read<FormTabBloc>().add(
                                  FormTabEvent.getFormsList(
                                    true,
                                    userId: userId,
                                  ),
                                );
                              }
                            });
                      },
                      onDeleteForm: () {
                        FormDeleteDialog().deleteDialog(
                          context,
                          onPressedDelete: () {
                            final currentContext =
                                getIt<AppRouter>().navigatorKey.currentContext!;
                            currentContext.router.maybePop();
                            context.read<FormTabBloc>().add(
                              FormTabEvent.deleteFormEvent(
                                form.server_id ?? -1,
                                userId: userId,
                              ),
                            );
                          },
                          onPressedCancel: () {
                            context.router.maybePop();
                          },
                        );
                      },
                    );
                  },
                ),
              );
      },
    );
  }
}
