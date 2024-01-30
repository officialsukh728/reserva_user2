import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WidgetPaddingExtension on Widget {
  Widget allPadding(num padding) {
    return Padding(
      padding: EdgeInsets.all(padding.toDouble()),
      child: this,
    );
  }

  Widget symmetric({
    num horizontal = 0,
    num vertical = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal.toDouble(),
        vertical: vertical.toDouble(),
      ),
      child: this,
    );
  }

  Widget only({
    num left = 0,
    num top = 0,
    num right = 0,
    num bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left.toDouble(),
        top: top.toDouble(),
        right: right.toDouble(),
        bottom: bottom.toDouble(),
      ),
      child: this,
    );
  }
}

extension BoxExtension on num {
  Widget get width => SizedBox(width: this.w);
  Widget get height => SizedBox(height: this.h);
}
