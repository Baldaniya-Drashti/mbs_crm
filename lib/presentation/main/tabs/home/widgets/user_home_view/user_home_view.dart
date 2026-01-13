import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/form_dto/form_dto.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/common/widgets/paginated_list_view.dart';
import 'package:mbs_crm/presentation/main/tabs/home/widgets/user_home_view/form_tile.dart';

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
                      onTap: () {
                        context.router
                            .push(
                              PageRouteInfo(
                                DynamicForm.name,
                                args: DynamicFormArgs(
                                  id: form.id ?? -1,
                                  form: FormDTO(slug: form.formName ?? ""),
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
    );
  }
}
