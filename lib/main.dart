import 'package:flutter/material.dart';
import 'package:to_do_flutter/modules/home/home_page.dart';


main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness:  Brightness.light
      ),
      home: const HomePage()
    );
  }
}