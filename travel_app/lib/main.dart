import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              systemOverlayStyle: SystemUiOverlayStyle.light)),
      home: SplashScreen(),
    );
  }
}
