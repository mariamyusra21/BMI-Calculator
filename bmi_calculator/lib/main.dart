import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColorLight: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
            bodyText1: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}
