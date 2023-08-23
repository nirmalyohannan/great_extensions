import 'package:flutter/material.dart';

extension GreatInt on int {
  SizedBox get heightBox {
    return SizedBox(height: toDouble());
  }

  SizedBox get widthBox {
    return SizedBox(width: toDouble());
  }

  BorderRadius get radiusCirc {
    return BorderRadius.circular(toDouble());
  }
}
