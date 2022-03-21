import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/order/order_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeCallWidget extends StatelessWidget {
  const TypeCallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<OrderDetailController>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 17.0),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            decoration: BoxDecoration(
              color: ColorConstants.backgroundColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    controller.selectTypeCall(0);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: const Text(
                      'Gọi cuộc thoại',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.43,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.titleColor,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: ColorConstants.dividerColor,
                ),
                InkWell(
                  onTap: () {
                    controller.selectTypeCall(1);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: const Text(
                      'Gọi video',
                      style: TextStyle(
                        height: 1.43,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.titleColor,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: ColorConstants.dividerColor,
                ),
                InkWell(
                  onTap: () {
                    controller.selectTypeCall(2);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: const Text(
                      'Gọi di động',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.43,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.titleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: ColorConstants.backgroundColor,
            ),
            child: MaterialButton(
              onPressed: () {
                controller.onCancel();
              },
              child: const Text(
                'Hủy',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.greyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
