import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ChooseBirthdayWidget extends StatelessWidget {
  const ChooseBirthdayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300.0,
      child: SfDateRangePicker(
        onSelectionChanged: (args) {},
        selectionMode: DateRangePickerSelectionMode.single,
      ),
    );
  }
}
