import 'package:darktheme/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:darktheme/themeData/themeData.dart';

void main() {
  runApp(const MyApp());
}

bool isDarkTheme = false;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Styles.customThemeData(false, context),
      darkTheme: Styles.customThemeData(true, context),
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      title: 'Flutter Demo',
      home: Homepage(
        isDarkTheme: isDarkTheme,
        chnageTheme: changeTheme,
      ),
    );
  }
}
