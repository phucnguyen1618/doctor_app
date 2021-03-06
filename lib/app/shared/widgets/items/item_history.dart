import 'package:doctor_app/app/modules/history/controller/history_controller.dart';
import 'package:doctor_app/app/shared/widgets/items/item_content_history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemHistory extends StatelessWidget {
  const ItemHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HistoryController>();
    return InkWell(
      onTap: () {
        controller.onItemHistoryClicked();
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tháng 1',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: 'Inter',
                height: 1.3,
              ),
            ),
            const SizedBox(
              height: 18.5,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const ItemContentHistory();
              },
            ),
          ],
        ),
      ),
    );
  }
}
