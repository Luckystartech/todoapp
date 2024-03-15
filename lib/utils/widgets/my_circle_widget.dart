import 'package:flutter/material.dart';

class MyCircleWidget extends StatelessWidget {
  const MyCircleWidget({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.child,
    this.padding,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: ShapeDecoration(
        // color: Color(0xFFAFE0C6).withOpacity(0.15),
        shadows: [
          BoxShadow(
            color: Color(0xFFAFE0C6).withOpacity(0.25),
            blurRadius: 50,
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
      ),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(radius!),
      //   color: Color(0xFFAFE0C6).withOpacity(0.15),
      // ),
      child: child,
    );
  }
}
