import 'package:flutter/material.dart';
import 'package:great_extensions/widgets/scale_on_hover.dart';

extension GreatWidget on Widget {
  Widget scale(double scale, [AlignmentGeometry? alignment]) {
    return Transform.scale(
      alignment: alignment,
      scale: scale,
      child: this,
    );
  }

  Widget rotate(double angle, [AlignmentGeometry? alignment]) {
    return Transform.rotate(
      angle: angle,
      alignment: alignment,
      child: this,
    );
  }

  Widget scaleOnHover({double scale = 1.1, Duration? duration}) {
    return ScaleOnHover(
      onHoverScale: scale,
      duration: duration,
      child: this,
    );
  }
}
