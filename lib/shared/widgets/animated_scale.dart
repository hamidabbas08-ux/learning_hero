import 'package:flutter/material.dart';

class AnimatedScaleButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;

  const AnimatedScaleButton({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  State<AnimatedScaleButton> createState() =>
      _AnimatedScaleButtonState();
}

class _AnimatedScaleButtonState
    extends State<AnimatedScaleButton> {

  double scale = 1.0;

  void _down(TapDownDetails _) {
    setState(() => scale = 0.96);
  }

  void _up([dynamic _]) {
    setState(() => scale = 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _down,
      onTapUp: (_) {
        _up();
        widget.onTap();
      },
      onTapCancel: _up,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 120),
        scale: scale,
        child: widget.child,
      ),
    );
  }
}
