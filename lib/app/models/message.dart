import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';

class Message {
  String nameSender;
  String avatarSender;
  String content;
  String time;
  int status;

  Message(
      this.nameSender, this.avatarSender, this.content, this.time, this.status);
}

final messages = [
  Message('Bác sĩ DHA', ImageConstants.image3,
      'Chào mọi người, mình tên là Nguyễn Hoàng Long. Mình hiện đang làm việc trong lĩnh vực công nghệ thông tin', '2:14', 0),
  Message(
    'Vương Trung Tín',
    ImageConstants.image1,
    'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...',
    '2:14',
    0,
  ),
  Message('Vương Trung Tín', ImageConstants.image1,
      'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...', '2:14', 0),
  Message('Hoàng Nguyễn Phúc Nguyên', ImageConstants.image5,
      'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...', '2:14', 3),
  Message('Hạ Trang', ImageConstants.image2,
      'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...', '2:14', 2),
  Message('Phương Anh', ImageConstants.image2,
      'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...', '2:14', 1),
  Message('Phương Anh', ImageConstants.image7,
      'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...', '2:14', 1),
];
