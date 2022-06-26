import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/group/controller/group_controller.dart';
import 'package:doctor_app/app/shared/widgets/items/item_group_doctor.dart';
import 'package:doctor_app/app/shared/widgets/items/item_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/items/item_add_doctor.dart';

part 'group_page_children.dart';

class GroupPage extends GetView<GroupController> {
  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: ColorConstants.backgroundColor,
          padding: const EdgeInsets.only(top: 30.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGroupDoctor(),
              _buildGeneral(),
              const SizedBox(height: 20.0,),
              _buildListMessages(),
            ],
          ),
        ),
      ),
    );
  }
}
