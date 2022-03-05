import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets/constants/color_constants.dart';
import '../../resource/assets_constant/icon_constants.dart';

class ItemLiteracy extends StatelessWidget {
  const ItemLiteracy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(228, 228, 228, 0.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: 23.0, vertical: 18.0),
          child: const Text(
            "Tốt nghiệp Thạc sĩ tại Đại học Y Hà Nội",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorConstants.titleColor,
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        _buildRowValue(),
      ],
    );
  }

  Widget _buildRowValue() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color.fromRGBO(228, 228, 228, 0.5),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Center(
                  child: Text(
                    '2018',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.titleColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: SvgPicture.asset(
                    IconConstants.dateRangeFill,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 19.0,
        ),
        Expanded(
          child: Container(
            height: 56.0,
            padding:
            const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color.fromRGBO(228, 228, 228, 0.5),
            ),
            child: const Text(
              'Loại giỏi',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: ColorConstants.titleColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}