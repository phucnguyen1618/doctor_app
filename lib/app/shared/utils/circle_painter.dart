import 'package:flutter/material.dart';
import 'dart:math' as math;

class CirclePainter extends CustomPainter {
  const CirclePainter(this._animation, {required this.color})
      : super(repaint: _animation);

  final Color color;
  final Animation<double> _animation;

  void drawCircle(Canvas canvas, Rect rect, double value) {
    final double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    final Color backgroundColor = color.withOpacity(opacity);
    final double size = rect.width / 2;
    final double area = size * size;
    final radius = math.sqrt(area * value / 4);
    final Paint paint = Paint()..color = backgroundColor;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);
    for (int i = 3; i > 0; i--) {
      drawCircle(canvas, rect, i + _animation.value);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
