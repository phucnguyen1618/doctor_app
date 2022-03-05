import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/order/patient/controller/patient_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'patient_page_children.dart';

class PatientPage extends GetView<PatientController> {
  const PatientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _buildMenu(),
              const SizedBox(
                height: 30.0,
              ),
              _buildPatient(),
            ],
          ),
        ),
      ),
    );
  }
}
