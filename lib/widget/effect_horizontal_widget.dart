import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';

class EffectHorizontalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: BeforeAfter(
          thumbColor: Colors.red,
          overlayColor: Colors.white24,
          imageCornerRadius: 40,
          thumbRadius: 24,
          imageWidth: double.infinity,
          imageHeight: double.infinity,
          beforeImage: Image.asset('assets/before_2.jpg', fit: BoxFit.cover),
          afterImage: Image.asset('assets/after_2.jpg', fit: BoxFit.cover),
        ),
      );
}
