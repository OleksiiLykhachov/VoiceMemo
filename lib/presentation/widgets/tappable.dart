import 'package:flutter/material.dart';

class Tappable extends StatefulWidget {
  const Tappable({
    required this.child,
    this.onTap,
    this.behavior = HitTestBehavior.opaque,
    this.padding = EdgeInsets.zero,
    super.key,
  });
  final VoidCallback? onTap;
  final Widget child;
  final HitTestBehavior? behavior;
  final EdgeInsets padding;

  @override
  State<Tappable> createState() => _TappableState();
}

class _TappableState extends State<Tappable> {
  bool _pressed = false;

  void _setPressedValue(bool value) {
    setState(() {
      _pressed = value;
    });
  }

  void _handleTapDown(TapDownDetails details) {
    _setPressedValue(true);
  }

  void _handleTapUp(TapUpDetails details) {
    _setPressedValue(false);
  }

  void _handleTapCancel() {
    _setPressedValue(false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: widget.behavior,
      onTap: widget.onTap,
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: Padding(
        padding: widget.padding,
        child: AnimatedOpacity(
          opacity: _pressed ? 0.5 : 1,
          duration: Durations.short3,
          child: widget.child,
        ),
      ),
    );
  }
}
