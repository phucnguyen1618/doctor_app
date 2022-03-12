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
      onTap: (){
        controller.onItemGroupDoctorClicked();
      },
      child: Container(
        width: 46.0,
        height: 46.0,
        margin: const EdgeInsets.only(right: 15.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          color: const Color(0xFFC7DCFF),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2.0),
        ),
        child: Image.asset(
          avatar,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
