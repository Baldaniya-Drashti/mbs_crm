// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/common/widgets/paginated_list_view.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:mbs_crm/presentation/main/tabs/home/widgets/admin_home_view/widgets/user_delete_dialog.dart';
import 'package:mbs_crm/presentation/main/tabs/home/widgets/admin_home_view/widgets/user_detail_tile.dart';

@RoutePage(name: 'AdminHomeView')
class AdminHomeView extends StatelessWidget {
  const AdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return (state.isLoading)
            ? CenterLoadingIndicator()
            : Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getSize(10),
                      ).copyWith(top: getSize(10)),
                      child: CommonButton(
                        onPressed: () {
                          context.router.push(PageRouteInfo(AddUser.name)).then(
                            (value) {
                              if (value == true) {
                                context.read<HomeBloc>().add(
                                  HomeEvent.getUsersList(true),
                                );
                              }
                            },
                          );
                        },
                        width: 120,
                        height: 40,
                        borderRadius: 10,
                        buttonFontSize: 12,
                        buttonText: StringConstant.addNewuser,
                      ),
                    ),
                  ),
                  Expanded(
                    child: PaginatedListView(
                      onLoading: () {
                        context.read<HomeBloc>().add(
                          HomeEvent.getUsersList(false),
                        );
                      },
                      onRefresh: () {
                        context.read<HomeBloc>().add(
                          HomeEvent.getUsersList(true),
                        );
                      },
                      refreshController: getIt<HomeBloc>().refreshController,
                      isNoDataFound: state.usersList.isEmpty,
                      child: ListView.builder(
                        itemCount: state.usersList.length,
                        padding: EdgeInsets.symmetric(
                          horizontal: getSize(15),
                          vertical: getSize(10),
                        ).copyWith(bottom: getSize(10)),
                        itemBuilder: (_, index) {
                          final user = state.usersList[index];
                          return UserDetailTile(
                            user: user,
                            index: index,
                            onEditUser: () {
                              context.router
                                  .push(
                                    PageRouteInfo(
                                      AddUser.name,
                                      args: AddUserArgs(id: user.id),
                                    ),
                                  )
                                  .then((value) {
                                    if (value == true) {
                                      context.read<HomeBloc>().add(
                                        HomeEvent.getUsersList(true),
                                      );
                                    }
                                  });
                            },
                            onDeleteUser: () {
                              UserDeleteDialog().deleteDialog(
                                context,
                                onPressedDelete: () {
                                  currentContext.router.maybePop();
                                  context.read<HomeBloc>().add(
                                    HomeEvent.deleteUser(user.id ?? -1),
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
                    ),
                  ),
                ],
              );
      },
    );
  }
}
