import 'package:Weather/routes/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      theme: ThemeData(
        fontFamily: "Pretendard",
        scaffoldBackgroundColor: Colors.black,
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeRoute(),
      },
    );
  }
}
