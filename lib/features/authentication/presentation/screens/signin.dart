import 'package:flutter/material.dart';
import 'package:truenote/core/theme/font_themes.dart';
import 'package:truenote/features/authentication/presentation/widgets/auth_actiontext_widget.dart';
import 'package:truenote/features/authentication/presentation/widgets/elevated_submitbutton.dart';
import 'package:truenote/features/authentication/presentation/widgets/textfield_widget.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 100),
        child: Column(
          children: [
            Text('Sign In', style: FontThemes.heading1),
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
            ConditionalActionText(
              actionText: "Forgot Password?",
              actionTextOnly: true,
              onPressed: () {
                //TODO: Implement forgot password functionality
              },
            ),
            SizedBox(height: 30),
            ElevatedSubmitbutton(
              onPressed: () {
                //TODO: Implement sign in
              },
              text: 'Sign In',
            ),
            ConditionalActionText(
              text: "Don't have an account?",
              actionText: "Sign Up",
              actionTextOnly: false,
              onPressed: () {
                //TODO: Implement navigation to sign up screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
