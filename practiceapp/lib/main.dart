import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QRScannerScreen(),
    );
  }
}

class QRScannerScreen extends StatelessWidget {
  Future<String> _scanQRCode() async {
    return FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Cancel', true, ScanMode.QR);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner Example'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: _scanQRCode(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Scan Result:',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    snapshot.data ?? 'No data yet',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, // No need to define an onPressed handler here
        icon: Icon(Icons.camera_alt),
        label: Text('Scan QR Code'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:practiceapp/pagevViewBuilder.dart';

// class Data {
//   final String title;
//   final String details;

//   Data(this.title, this.details);
// }

// class SwipeDataView extends StatefulWidget {
//   @override
//   _SwipeDataViewState createState() => _SwipeDataViewState();
// }

// class _SwipeDataViewState extends State<SwipeDataView> {
//   List<Data> dataList = [
//     Data("Data 1", "Details for Data 1"),
//     Data("Data 2", "Details for Data 2"),
//     Data("Data 3", "Details for Data 3"),
//     // Add more data as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Swipe Data View"),
//       ),
//       body: PageView.builder(
//         itemCount: dataList.length,
//         itemBuilder: (context, index) {
//           return Container(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Upper Container - Title
//                 Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.amber,
//                   child: Text(
//                     dataList[index].title,
//                     style:
//                         TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(height: 20.0),
//                 // Bottom Container - Details
//                 Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.greenAccent,
//                   child: Text(
//                     dataList[index].details,
//                     style: TextStyle(fontSize: 18.0),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

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
//   @override
//   void initState() {
//     super.initState();

//     // Add a delay of 5 seconds before showing the dialog
//     Future.delayed(Duration(seconds: 5), () {
//       // Show your dialog here
//       _showAdDialog();
//     });
//   }

//   void _showAdDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text("Ad Dialog"),
//           content: Text("This is your ad content."),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text("Close"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Ad Dialog"),
//       ),
//       body: Center(
//         child: Text("Your App Content"),
//       ),
//     );
//   }
// }
