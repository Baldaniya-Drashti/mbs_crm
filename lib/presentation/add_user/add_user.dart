import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_app_bar.dart';

@RoutePage(name: 'AddUser')
class AddUser extends StatelessWidget {
  const AddUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: StringConstant.addUser),
      body: Form(
        child: Column(
          children: [
            BaseText(
              text: StringConstant.addUser,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: FontConstant.jost,
            ),
          ],
        ),
      ),
    );
  }
}
