import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:truenote/features/authentication/presentation/screens/signin.dart';
import 'package:truenote/features/authentication/presentation/screens/signup.dart';
import 'package:truenote/features/authentication/presentation/screens/password_update.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => YourChangeNotifier())],
      child: const MainApp(),
    ),
  );
}

class YourChangeNotifier extends ChangeNotifier {
  // Your state management logic here
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: PasswordUpdateScreen())),
    );
  }
}
