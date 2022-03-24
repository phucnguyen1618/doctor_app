import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';

class Message {
  String nameSender;
  String avatarSender;
  String content;
  String time;
  int status;
  bool isShow;

  Message(this.nameSender, this.avatarSender, this.content, this.time,
      this.status, this.isShow);
}

final messages = [
  Message(
    'Bác sĩ DHA',
    ImageConstants.image3,
    'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...',
    '2:14',
    0,
    false,
  ),
  Message(
    'Vương Trung Tín',
    ImageConstants.image1,
    'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...',
    '2:14',
    0,
    false,
  ),
  Message(
    'Vương Trung Tín',
    ImageConstants.image1,
    'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...',
    '2:14',
    0,
    false,
  ),
  Message(
    'Hoàng Nguyễn Phúc Nguyên',
    ImageConstants.image5,
    'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...',
    '2:14',
    3,
    false,
  ),
  Message(
    'Hạ Trang',
    ImageConstants.image2,
    'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...',
    '2:14',
    2,
    false,
  ),
  Message(
    'Phương Anh',
    ImageConstants.image2,
    'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...',
    '2:14',
    1,
    false,
  ),
  Message(
    'Phương Anh',
    ImageConstants.image7,
    'Bác sĩ @Thư ơi, cho mình hỏi bệnh án...',
    '2:14',
    1,
    false,
  ),
];
