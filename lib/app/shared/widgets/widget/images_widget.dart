import 'package:flutter/material.dart';

import '../../../resource/assets_constant/image_constants.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          6,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                ImageConstants.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
