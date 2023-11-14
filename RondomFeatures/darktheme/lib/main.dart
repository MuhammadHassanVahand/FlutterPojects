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

// import 'package:darktheme/themeData/themeData.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// bool isDarkMode = false;

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // Initially, set to light mode

//   void toggleTheme() {
//     setState(() {
//       isDarkMode = !isDarkMode;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: Styles.customThemeData(false, context), // Light theme
//       darkTheme: Styles.customThemeData(true, context), // Dark theme
//       themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
//       home: MyHomePage(toggleTheme: toggleTheme),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final VoidCallback toggleTheme;

//   MyHomePage({required this.toggleTheme});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dark and Light Mode'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'This is a Flutter app with Dark and Light mode.',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: toggleTheme,
//               child: Text(isDarkMode ? 'Dark Theme' : "Light Theme"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
