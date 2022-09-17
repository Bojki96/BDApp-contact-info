import 'package:flutter/material.dart';
import '../theme.dart';

class Skeleton extends StatefulWidget {
  final EdgeInsets? margin;
  final Size size;
  final Color? color;
  final BorderRadius? borderRadius;
  final BoxShape shape;

  const Skeleton.line({
    Key? key,
    this.margin,
    this.size = const Size.fromHeight(24),
    this.color = ThemeColors.lightGray,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  })  : shape = BoxShape.rectangle,
        super(key: key);

  const Skeleton.circle({
    Key? key,
    this.margin,
    this.size = const Size.fromRadius(20),
    this.color = ThemeColors.lightGray,
    this.borderRadius,
  })  : shape = BoxShape.circle,
        super(key: key);

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = Tween<double>(begin: 0.9, end: 0.4)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(animationController);

    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: ((context, child) {
        return Opacity(
          opacity: animation.value,
          child: Container(
            margin: widget.margin,
            width: widget.size.width,
            height: widget.size.height,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: widget.borderRadius,
              shape: widget.shape,
            ),
          ),
        );
      }),
    );
  }
}
