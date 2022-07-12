import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ChooseBirthdayWidget extends StatelessWidget {
  const ChooseBirthdayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Chọn ngày sinh',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          SfDateRangePicker(
            onSelectionChanged: (args) {},
            selectionMode: DateRangePickerSelectionMode.single,
          ),
        ],
      ),
    );
  }
}
