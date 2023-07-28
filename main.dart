import 'package:flutter/material.dart';

import 'Responsive_Onboarding/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(primaryColor: Colors.purple),
      debugShowCheckedModeBanner: false,

      home: const Responsive(),
    );
  }
}
