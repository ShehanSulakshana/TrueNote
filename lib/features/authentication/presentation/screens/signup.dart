import 'package:flutter/material.dart';
import 'package:truenote/core/theme/font_themes.dart';
import 'package:truenote/features/authentication/presentation/widgets/auth_actiontext_widget.dart';
import 'package:truenote/features/authentication/presentation/widgets/elevated_submitbutton.dart';
import 'package:truenote/features/authentication/presentation/widgets/textfield_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 100),
        child: Column(
          children: [
            Text('Sign Up', style: FontThemes.heading1),
            SizedBox(height: 50),
            TextFieldWidget(
              hintText: 'Enter your email',
              labelText: 'Email',
              controller: emailController,
            ),
            SizedBox(height: 20),
            TextFieldWidget(
              hintText: 'Enter your password',
              labelText: 'Password',
              controller: passwordController,
            ),
            SizedBox(height: 20),
            TextFieldWidget(
              hintText: 'Confirm your password',
              labelText: 'Confirm Password',
              controller: confirmPasswordController,
            ),
            SizedBox(height: 30),
            ElevatedSubmitbutton(
              onPressed: () {
                //TODO: Implement sign up
              },
              text: 'Sign Up',
            ),
            ConditionalActionText(
              text: "Already have an account?",
              actionText: "Sign In",
              actionTextOnly: false,
              onPressed: () {
                //TODO: Implement navigation to login screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
