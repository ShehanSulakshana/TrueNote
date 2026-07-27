import 'package:flutter/material.dart';
import 'package:truenote/core/theme/font_themes.dart';
import 'package:truenote/features/authentication/presentation/widgets/auth_actiontext_widget.dart';
import 'package:truenote/features/authentication/presentation/widgets/elevated_submitbutton.dart';
import 'package:truenote/features/authentication/presentation/widgets/textfield_widget.dart';

class PasswordUpdateScreen extends StatelessWidget {
  PasswordUpdateScreen({super.key});
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password Reset',
              style: FontThemes.heading2,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 15),
            Text(
              'Please enter your new password below to reset your account password.',
              style: FontThemes.bodyText.copyWith(fontSize: 14),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 35),
            TextFieldWidget(
              hintText: 'Enter your new password',
              labelText: 'New Password',
              controller: passwordController,
            ),
            SizedBox(height: 20),
            TextFieldWidget(
              hintText: 'Confirm your new password',
              labelText: 'Confirm New Password',
              controller: confirmPasswordController,
            ),
            SizedBox(height: 50),
            ElevatedSubmitbutton(
              onPressed: () {
                //TODO: Implement password update
              },
              text: 'Update Password',
            ),
          ],
        ),
      ),
    );
  }
}
