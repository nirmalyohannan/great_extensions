import 'package:flutter/material.dart';

class ScaleOnHover extends StatefulWidget {
  const ScaleOnHover(
      {super.key, this.duration, this.onHoverScale = 1.1, required this.child});
  final Duration? duration;
  final double onHoverScale;
  final Widget child;

  @override
  State<ScaleOnHover> createState() => _ScaleOnHoverState();
}

class _ScaleOnHoverState extends State<ScaleOnHover> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          scale = widget.onHoverScale;
        });
      },
      onExit: (event) {
        setState(() {
          scale = 1;
        });
      },
      child: AnimatedScale(
        scale: scale,
        duration: widget.duration ?? const Duration(milliseconds: 200),
        child: widget.child,
      ),
    );
  }
}
