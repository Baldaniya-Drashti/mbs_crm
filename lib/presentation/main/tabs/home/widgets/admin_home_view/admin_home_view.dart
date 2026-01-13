import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/widgets/center_loading_indicator.dart';
import 'package:mbs_crm/presentation/common/widgets/paginated_list_view.dart';
import 'package:mbs_crm/presentation/main/tabs/home/widgets/admin_home_view/user_detail_tile.dart';

class AdminHomeView extends StatelessWidget {
  const AdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return (state.isLoading)
            ? CenterLoadingIndicator()
            : PaginatedListView(
                onLoading: () {
                  context.read<HomeBloc>().add(HomeEvent.getUsersList(false));
                },
                onRefresh: () {
                  context.read<HomeBloc>().add(HomeEvent.getUsersList(true));
                },
                refreshController: getIt<HomeBloc>().refreshController,
                isNoDataFound: state.usersList.isEmpty,
                child: ListView.builder(
                  itemCount: state.usersList.length,
                  padding: EdgeInsets.symmetric(
                    horizontal: getSize(15),
                    vertical: getSize(20),
                  ),
                  itemBuilder: (_, index) {
                    final user = state.usersList[index];
                    return GestureDetector(
                      onTap: () {},
                      child: UserDetailTile(user: user),
                    );
                  },
                ),
              );
      },
    );
  }
}
