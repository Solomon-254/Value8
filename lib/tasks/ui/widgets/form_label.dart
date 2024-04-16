import 'package:flutter/material.dart';
import 'package:value_8_project/tasks/common/utils/theme.dart';

class FormLabel extends StatelessWidget {
  final String text;

  const FormLabel({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                text,
                style: context.textTheme().bodyMedium,
              ),
            ),
            const SizedBox(height: 4.0),
          ],
        ),
      ],
    );
  }
}
