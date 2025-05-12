import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Appgradientwidget extends StatelessWidget {
  final double? height;
  final double? width;
  double? borderRadius;
  EdgeInsetsGeometry? padding = const EdgeInsets.all(0);
  EdgeInsetsGeometry? margin = const EdgeInsets.all(0);
  final Widget child;
  Appgradientwidget( {
    super.key,
    this.height,
    this.width,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height ?? 100.h,
      width: width ?? 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.95),
            const Color.fromARGB(255, 11, 11, 11).withOpacity(0.9),
            Colors.black.withOpacity(0.9),
          ],
          //stops: const [0.0, 0.4, 0.8],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
