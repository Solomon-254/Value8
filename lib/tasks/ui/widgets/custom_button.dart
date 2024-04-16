import 'package:flutter/material.dart';
import 'package:value_8_project/tasks/common/utils/theme.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onClick;
  final String label;
  final bool showLoading;

  const CustomButton({
    Key? key,
    required this.label,
    this.onClick,
    this.showLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const buttonBg = Color(0xFFA6A6A6);
    var textTheme = context.textTheme();

    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.green,
        disabledBackgroundColor: Colors.green,
        disabledForegroundColor: buttonBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        side: const BorderSide(
          width: 2.0,
          color: Colors.green,
        ),
        minimumSize: const Size.fromHeight(50),
        textStyle: textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      child: !showLoading
          ? Text(label, style: const TextStyle(color: Colors.white),)
          : const SizedBox(
              height: 24.0,
              width: 24.0,
              child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 2.0,
              ),
            ),
    );
  }
}
