import 'package:flutter/material.dart';
import 'package:truenote/core/theme/font_themes.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController controller;
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, //TODO: Need to enhance controller constraints
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: FontThemes.textFieldText,
        labelStyle: FontThemes.textFieldText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: FontThemes.primaryColor, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(13)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: FontThemes.primaryColor, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(13)),
        ),
      ),
    );
  }
}
