import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
extension WidgetSpacing on int {
  SizedBox get hSpace {
    assert(
      this >= 0,
    );
    return SizedBox(width: w);
  }

  SizedBox get vSpace {
    assert(
      this >= 0,
    );
    return SizedBox(height: h);
  }
}
