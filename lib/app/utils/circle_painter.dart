import 'package:flutter/material.dart';

class CirclePainter extends CustomPaint {

  const CirclePainter(this.color, this._animation, {Key? key}) : super(key: key);

  final Color color;
  final Animation<double> _animation;

  void drawCircle(Canvas canvas, Rect rect, double value) {
    final double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);

  }
}