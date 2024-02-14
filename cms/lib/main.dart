// import 'package:cms/admin_block.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: AdminBlock(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Date Grid View'),
//         ),
//         body: DateGridView(),
//       ),
//     );
//   }
// }


// class DateGridView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 4,
//       ),
//       itemCount: 30, // Change this to the number of days you want to show
//       itemBuilder: (BuildContext context, int index) {
//         // Calculate the date for the current grid item
//         DateTime currentDate = DateTime.now().add(Duration(days: index));

//         return GestureDetector(
//           onTap: () {
//             // Handle the date selection here
//             print(
//                 'Selected Date: ${DateFormat('yyyy-MM-dd').format(currentDate)}');
//           },
//           child: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     DateFormat('dd').format(currentDate),
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     DateFormat('EEE').format(currentDate),
//                     style: TextStyle(fontSize: 14),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Temperature Meter'),
        ),
        body: FutureBuilder<double>(
          future: fetchTemperatureForCity('YOUR_CITY_NAME', 'YOUR_API_KEY'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: TemperatureMeter(value: snapshot.data!),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error fetching temperature'),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

class TemperatureMeter extends StatelessWidget {
  final double value;

  TemperatureMeter({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: TemperatureMeterPainter(value: value),
      ),
    );
  }
}

class TemperatureMeterPainter extends CustomPainter {
  final double value;

  TemperatureMeterPainter({required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    // ... (the rest of the code remains the same)
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

Future<double> fetchTemperatureForCity(String city, String apiKey) async {
  final response = await http.get(Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final double temperature = data['main']['temp'];
    return temperature - 273.15; // Convert from Kelvin to Celsius
  } else {
    throw Exception('Failed to load temperature');
  }
}
