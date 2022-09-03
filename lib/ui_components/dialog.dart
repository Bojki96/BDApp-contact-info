import 'package:flutter/material.dart';

showUIDialog(BuildContext context, {required Widget child}) {
  Navigator.of(context).push(UIDialog(child: child));
}

closeUIDialog(BuildContext context) => Navigator.of(context).pop();

class UIDialog extends ModalRoute {
  final Widget child;

  UIDialog({required this.child});

  @override
  Color? get barrierColor => Colors.black87;

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: child,
          ),
        ),
      ),
    );
  }

  @override
  bool get maintainState => true;

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 400);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.easeIn)).animate(animation),
      child: child,
    );
  }
}
