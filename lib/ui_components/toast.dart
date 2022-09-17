import 'package:flutter/material.dart';

OverlayEntry? _overlayEntry;

// TODO: ADD SCREEN INSETS BOTTOM
void showToastMessage(
  BuildContext context, {
  required ToastMessage child,
  Alignment alignment = Alignment.center,
}) {
  final overlayState = Overlay.of(context);
  _overlayEntry = OverlayEntry(
    builder: (context) {
      return Align(
        alignment: alignment,
        child: child,
      );
    },
  );
  overlayState!.insert(_overlayEntry!);
}

void closeToastMessage(BuildContext context) {
  if (_overlayEntry != null) {
    _overlayEntry!.remove();
  }
}

class ToastMessage extends StatefulWidget {
  final Duration duration;
  final Duration timeOn;
  final Curve curve;
  final Widget child;

  const ToastMessage({
    Key? key,
    this.duration = const Duration(seconds: 1),
    this.timeOn = const Duration(seconds: 3),
    this.curve = Curves.easeInOut,
    required this.child,
  }) : super(key: key);

  @override
  State<ToastMessage> createState() => _ToastMessageState();
}

class _ToastMessageState extends State<ToastMessage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = CurveTween(curve: widget.curve).animate(_animationController);
    _animationController.forward();
    _animationController.addListener(() async {
      if (_animationController.status == AnimationStatus.completed) {
        await Future.delayed(widget.timeOn);
        await _animationController.reverse();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        _overlayEntry!.remove();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: widget.child,
    );
  }
}
