import 'package:cms/admin_block.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdminBlock(),
    );
  }
}




// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// enum Gender { male, female }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Gender? selectedGender;

//   final List<Map<String, dynamic>> genderOptions = [
//     {'label': 'Male', 'value': Gender.male},
//     {'label': 'Female', 'value': Gender.female},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Male or Female Selection'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             DropdownButton<Gender>(
//               value: selectedGender,
//               onChanged: (Gender? newValue) {
//                 setState(() {
//                   selectedGender = newValue;
//                 });
//               },
//               items: genderOptions
//                   .map<DropdownMenuItem<Gender>>((Map<String, dynamic> option) {
//                 return DropdownMenuItem<Gender>(
//                   value: option['value'],
//                   child: Text(option['label']),
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 20),
//             Text(
//               selectedGender == null
//                   ? 'Please select your gender'
//                   : 'You selected: ${selectedGender.toString()}',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
