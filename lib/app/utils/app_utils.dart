import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class AppUtils {

  static final _notifications = FlutterLocalNotificationsPlugin();

  static Color setStatus(int value) {
    Color color = const Color(0xFFFFFFFF);
    switch(value) {
      case 0:
        color = const Color(0xFF7FBA7A);
        break;
      case 1:
        color = const Color(0xFFFF754C);
        break;
      case 2:
        color = const Color(0xFFFFCE73);
        break;
      case 3:
        color = const Color(0xFF808191);
        break;
    }
    return color;
  }

  static Future _notificationDetails() async {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        channelDescription: 'channel description',
        importance: Importance.max,
      ),
      iOS: IOSNotificationDetails(),
    );
  }

  static Future showNotification({int id = 0, String? title, String? content, String? time }) async {
    _notifications.show(id, title, content, await _notificationDetails());
  }


}