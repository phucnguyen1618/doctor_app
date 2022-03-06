class AppNotification {
  String title;
  String content;
  bool isRead;
  int typeNotification;
  bool isSelected;

  AppNotification(this.title, this.content, this.isRead, this.typeNotification,
      this.isSelected);
}

// 0 là cuộc gọi tư vấn, 1 là đặt lịch hẹn bác sĩ

final notifications = [
  AppNotification(
    'Bác sĩ tư vấn 24/7',
    'Bạn có một cuộc hẹn gọi lại vào lúc 14:00 - Hôm nay',
    false,
    0,
    false,
  ),
  AppNotification(
      'Đặt lịch bác sĩ gọi lại',
      'Bạn có một lịch hẹn gọi lại vào lúc 20:00 - 24/03/2022',
      false,
      1,
      false),
  AppNotification(
    'Bác sĩ tư vấn 24/7',
    'Bạn có một cuộc hẹn gọi lại vào lúc 14:00 - Hôm nay',
    true,
    0,
    false,
  ),
  AppNotification(
    'Đặt lịch bác sĩ gọi lại',
    'Bạn có một lịch hẹn gọi lại vào lúc 20:00 - 24/03/2022',
    true,
    1,
    false,
  ),
  AppNotification(
    'Đặt lịch bác sĩ gọi lại',
    'Bạn có một lịch hẹn gọi lại vào lúc 20:00 - 24/03/2022',
    true,
    1,
    false,
  ),
  AppNotification(
    'Đặt lịch bác sĩ gọi lại',
    'Bạn có một lịch hẹn gọi lại trong 30 phút nữa',
    true,
    1,
    false,
  ),
  AppNotification(
    'Đặt lịch bác sĩ gọi lại',
    'Bạn có một lịch hẹn gọi lại vào ngày mai nữa',
    true,
    1,
    false,
  ),
  AppNotification(
    'Bác sĩ tư vấn 24/7',
    'Bạn có một cuộc hẹn gọi lại vào lúc 14:00 - Hôm nay',
    true,
    0,
    false,
  ),
  AppNotification(
    'Bác sĩ tư vấn 24/7',
    'Bạn có một cuộc hẹn gọi lại vào lúc 14:00 - Hôm nay',
    true,
    0,
    false,
  ),
  AppNotification(
    'Bác sĩ tư vấn 24/7',
    'Bạn có một cuộc hẹn gọi lại vào lúc 14:00 - Hôm nay',
    true,
    0,
    false,
  ),
];
