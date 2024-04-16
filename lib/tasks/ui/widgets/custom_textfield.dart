import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:value_8_project/tasks/common/utils/theme.dart';

import '../../common/utils/extensions.dart';

class CustomField extends StatelessWidget {
  final StringFunction? onTextChange;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final String? errorText;
  final bool multiline;
  final TextStyle? textStyle;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController? controller;

  const CustomField(
      {Key? key,
      this.onTextChange,
      this.hintText,
      this.labelText,
      this.keyboardType,
      this.errorText,
      this.multiline = false,
      this.inputFormatter,
      this.textStyle,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = context.textTheme();

    return TextField(
      inputFormatters: inputFormatter ?? [],
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        labelText: labelText,
        labelStyle: textStyle ?? textTheme.labelLarge,
        errorText: errorText,
      ),
      style: textStyle ?? textTheme.labelLarge,
      onChanged: (value) {
        onTextChange!(value);
      },
      maxLines: multiline ? 3 : 1,
    );
  }
}
