import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/form_tab_bloc/form_tab_bloc.dart';
import 'package:mbs_crm/infrastructure/user_dto/user_dto.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/admin_form_list_view/widgets/form_list_view.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_app_bar.dart';

@RoutePage(name: 'AdminFormList')
class AdminFormList extends StatelessWidget {
  final UserDTO? user;
  const AdminFormList({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "${user?.first_name ?? ""} ${user?.last_name ?? ""}",
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<FormTabBloc>()
              ..add(FormTabEvent.getFormsList(true, userId: user?.id)),
        child: FormListView(userId: user?.id),
      ),
    );
  }
}
