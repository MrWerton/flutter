import 'package:course/screens/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: const MyHomePage(title: 'Study')),
    );
  }
}