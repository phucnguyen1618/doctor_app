import 'package:doctor_app/app/modules/group/controller/group_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemGroupDoctor extends StatelessWidget {
  const ItemGroupDoctor({Key? key, required this.avatar}) : super(key: key);

  final String avatar;

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<GroupController>();
    return InkWell(
        onTap: () {
          controller.onItemGroupDoctorClicked();
        },
        child: Container(
          padding: const EdgeInsets.all(1.5),
          margin: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFC7DCFF),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3.0),
            ),
            child: Image.asset(
              avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),);
  }
}
