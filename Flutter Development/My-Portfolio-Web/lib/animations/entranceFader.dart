import 'package:flutter/material.dart';

class EntranceFader extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Duration duration;
  final Offset offset;

  const EntranceFader(
      {Key key, this.delay, this.duration, this.offset, this.child})
      : super(key: key);

  @override
  _EntranceFaderState createState() => _EntranceFaderState();
}

class _EntranceFaderState extends State<EntranceFader>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _dxAnimation;
  Animation _dyAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _dxAnimation =
        Tween(begin: widget.offset.dx, end: 0.0).animate(_controller);
    _dyAnimation =
        Tween(begin: widget.offset.dy, end: 0.0).animate(_controller);
    Future.delayed(widget.delay, () {
      if (this.mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Opacity(
              opacity: _controller.value,
              child: Transform.translate(
                offset: Offset(_dxAnimation.value, _dyAnimation.value),
                child: widget.child,
              ),
            ));
  }
}
