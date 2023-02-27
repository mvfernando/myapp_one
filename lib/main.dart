import 'package:flutter/material.dart';
import 'package:myapp_one/pages/home_page.dart';

main() {
  runApp (MyApp());
    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}