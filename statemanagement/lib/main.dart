import 'package:flutter/material.dart';
import 'package:statemanagement/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomeView(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'dart:async';

// void main() {
//   runApp(DigitalClockApp());
// }

// class DigitalClockApp extends StatefulWidget {
//   @override
//   _DigitalClockAppState createState() => _DigitalClockAppState();
// }

// class _DigitalClockAppState extends State<DigitalClockApp> {
//   String _time = '';

//   @override
//   void initState() {
//     super.initState();
//     _updateTime();
//     Timer.periodic(Duration(seconds: 1), (timer) {
//       _updateTime();
//     });
//   }

//   void _updateTime() {
//     final now = DateTime.now();
//     setState(() {
//       _time = "${now.hour}:${now.minute}:${now.second}";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Center(
//           child: Text(
//             _time,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 48.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
