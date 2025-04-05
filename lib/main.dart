import 'package:flutter/material.dart';
import 'screens/hiragana_screen.dart';

void main() {
  runApp(LearnJapaneseApp());
}

class LearnJapaneseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Japanese',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: HiraganaScreen(),
    );
  }
}
