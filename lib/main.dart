import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'bodypage.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('schedobox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BodyPage(),
    );
  }
}
