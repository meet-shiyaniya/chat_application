import 'package:chat_application/Screen/Provider/signup_Screen_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/Authentication/signin_Screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => signupScreenProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signinScreen(),
    );
  }
}