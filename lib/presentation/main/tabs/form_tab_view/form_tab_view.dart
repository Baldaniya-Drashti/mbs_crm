import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/presentation/admin_form_list_view/widgets/form_list_view.dart';

@RoutePage(name: 'FormDetailView')
class FormDetailView extends StatelessWidget {
  const FormDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return FormListView();
  }
}
