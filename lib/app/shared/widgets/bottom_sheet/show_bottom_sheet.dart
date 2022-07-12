import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ShowBottomSheet {
  static Future<void> showBottomSheetChooseBirthday({
    required Widget child,
    required BuildContext context,
    Color? backgroundColor,
  }) {
    return showMaterialModalBottomSheet(
      context: context,
      backgroundColor: backgroundColor ?? Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
      ),
      builder: (context) => SingleChildScrollView(
        controller: ModalScrollController.of(context),
        child: child,
      ),
    );
  }
}
