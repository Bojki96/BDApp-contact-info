import 'package:flutter/material.dart';

import '../typography.dart';
import 'dialog.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextType.h1('THIS IS TITLE'),
        TextType.p1('THIS IS CONTENT'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                closeUIDialog(context);
              },
              child: TextType.p1('OK'),
            ),
            ElevatedButton(
              onPressed: () {
                closeUIDialog(context);
              },
              child: TextType.p1('Cancel'),
            ),
          ],
        )
      ],
    );
  }
}
