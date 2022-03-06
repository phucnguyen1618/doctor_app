import 'package:doctor_app/app/shared/widgets/dot_widget.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
    required this.callback,
    required this.isNotification,
  }) : super(key: key);

  final bool isNotification;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(
          children: [
            const Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ),
            Positioned(
              child: isNotification
                  ? const DotWidget(
                      backgroundColor: Color(0xFFFF754C),
                    )
                  : const SizedBox(),
              top: 12.0,
              right: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}
