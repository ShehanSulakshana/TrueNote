import 'package:flutter/material.dart';
import 'package:truenote/core/theme/font_themes.dart';

class ConditionalActionText extends StatelessWidget {
  final String text;
  final String actionText;
  final bool actionTextOnly;
  final VoidCallback onPressed;

  ConditionalActionText({
    super.key,
    this.text = '',
    required this.actionText,
    required this.onPressed,
    required this.actionTextOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: actionTextOnly
          ? const EdgeInsets.only(top: 20, right: 5)
          : const EdgeInsets.only(top: 20, left: 5),
      child: Row(
        mainAxisAlignment: actionTextOnly
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          actionTextOnly
              ? SizedBox.shrink()
              : Text(
                  text,
                  style: TextStyle(
                    fontSize: 12,
                    color: FontThemes.textColorBlack,
                  ),
                ),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              " $actionText",
              style: TextStyle(
                fontSize: 12,
                color: FontThemes.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
