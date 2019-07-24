import 'package:flutter/material.dart';
import 'package:movies_app/Components/Colors.dart';

class DarkPainter extends CustomPainter {
  /*  Par criação do background */
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = backgroundScreen;
    canvas.drawPath(mainBackground, paint);

    paint.shader =
        LinearGradient(colors: [Colors.orangeAccent, Colors.deepOrange])
            .createShader(new Rect.fromCircle(
      center: new Offset(165.0, 55.0),
      radius: 180.0,
    ));
    canvas.drawCircle(Offset(50, 0), 400, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
