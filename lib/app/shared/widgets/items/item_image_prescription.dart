import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemImagePrescription extends StatelessWidget {
  final String image;
  final bool isLastItem;
  final String remaining;
  final VoidCallback onRemove;

  const ItemImagePrescription({
    Key? key,
    required this.image,
    required this.isLastItem,
    required this.remaining,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: SizedBox(
            width: (Get.width - 20 * 2 - 12 * 2) / 3,
            height: 132.0,
            child: Image.asset(image),
          ),
        ),
        isLastItem
            ? const SizedBox()
            : Positioned(
                top: 6.0,
                right: 6.0,
                child: InkWell(
                  onTap: onRemove,
                  child: Container(
                    width: 18.0,
                    height: 18.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF888888).withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
        isLastItem
            ? Positioned.fill(
                child: Center(
                child: Text(
                  remaining,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Mulish',
                  ),
                ),
              ))
            : const SizedBox(),
      ],
    );
  }
}
