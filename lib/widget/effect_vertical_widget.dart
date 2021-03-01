import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';

class EffectVerticalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: BeforeAfter(
          thumbColor: Colors.red,
          overlayColor: Colors.white24,
          thumbRadius: 0,
          imageWidth: double.infinity,
          imageHeight: double.infinity,
          isVertical: true,
          beforeImage: Image.asset('assets/before_1.jpg', fit: BoxFit.cover),
          afterImage: Image.asset('assets/after_1.jpg', fit: BoxFit.cover),
        ),
      );
}
