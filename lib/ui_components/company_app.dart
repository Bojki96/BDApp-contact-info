import 'package:flutter/material.dart';
import 'package:flutter_template/gen/assets.gen.dart';
import 'package:flutter_template/theme.dart';
import 'package:flutter_template/typography.dart';

class CompanyApp extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  const CompanyApp({
    Key? key,
    required this.child1,
    required this.child2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(flex: 4, child: child1),
        const Spacer(),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 200,
            maxWidth: 200,
          ),
          child: child2,
        ),
      ],
    );
  }
}

class AppInfo extends StatelessWidget {
  final String title;
  final String content;
  final Widget image;
  final Color? titleColor;
  const AppInfo(
      {Key? key,
      required this.title,
      required this.content,
      required this.image,
      this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextType.h2(
          title,
          color: titleColor ?? ThemeColors.darkGray,
          padding: const EdgeInsets.only(bottom: 16),
        ),
        Row(
          children: [
            Flexible(
              flex: 4,
              child: TextType.p1(content),
            ),
            const Spacer(),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 200,
                maxWidth: 200,
              ),
              child: image,
            ),
          ],
        ),
      ],
    );
  }
}

class AppImage extends StatelessWidget {
  final AssetGenImage imagePath;
  const AppImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.gray,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: imagePath.image(
        fit: BoxFit.cover,
      ),
    );
  }
}
