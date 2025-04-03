import 'package:flutter/material.dart';

void main() {
  runApp(const CurrencyConverterApp());
}

class CurrencyConverterApp extends StatefulWidget {
  const CurrencyConverterApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CurrencyConverterApp> {
  bool isDarkTheme = false;

  void toggleTheme() {
    print('Toggling theme');
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: Colors.grey[900],
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.grey[700],
    textTheme: ButtonTextTheme.primary,
  ),
);








