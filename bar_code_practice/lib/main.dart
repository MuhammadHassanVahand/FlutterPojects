import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

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
      home: QRScannerWidget(),
    );
  }
}

class QRScannerWidget extends StatefulWidget {
  @override
  _QRScannerWidgetState createState() => _QRScannerWidgetState();
}

class _QRScannerWidgetState extends State<QRScannerWidget>
    with SingleTickerProviderStateMixin {
  late QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool isScanned = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 2 * pi).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.8,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
          ),
          if (!isScanned)
            Center(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _animation.value,
                    child: child,
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  child: const CircularProgressIndicator(
                    strokeWidth: 5,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      if (!isScanned) {
        // Handle scanned data here
        print(scanData.code);

        // Update the UI with the scanned data
        setState(() {
          isScanned = true;
        });

        // Launch the URL after scanning
        _launchURL(scanData.code.toString());
      }
    });
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
      // Turn off the scanner after launching the URL
      controller.dispose(); // Dispose the controller here
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    // Dispose the controller when the widget is disposed
    controller.dispose();
    super.dispose();
  }
}

class SecondScreen extends StatelessWidget {
  final String? scanResult;

  const SecondScreen({Key? key, this.scanResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanned Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Scanned Result:',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Text(
              scanResult!,
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                // Close the second screen and return back to the QR scanner screen
                Navigator.pop(context, true);
              },
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}


// void _onQRViewCreated(QRViewController controller) {
//   this.controller = controller;
//   controller.scannedDataStream.listen((scanData) {
//     if (!isScanned) {
//       // Handle scanned data here
//       String scannedData = scanData.code;

//       // Update the UI with the scanned data
//       setState(() {
//         isScanned = true;
//       });

//       // Analyze the scanned data
//       if (_isURL(scannedData)) {
//         _launchURL(scannedData);
//       } else if (_isPhoneNumber(scannedData)) {
//         // Handle phone number
//         _handlePhoneNumber(scannedData);
//       } else if (_isIP(scannedData)) {
//         // Handle IP address
//         _handleIPAddress(scannedData);
//       } else {
//         // Handle other types of data
//         _handleOtherData(scannedData);
//       }
//     }
//   });
// }

// bool _isURL(String data) {
//   // Check if the data is a valid URL
//   return Uri.tryParse(data)?.isAbsolute ?? false;
// }

// bool _isPhoneNumber(String data) {
//   // Add your logic to check if the data is a phone number
//   // For example, you might use regex or other validation methods
//   return data.startsWith('tel:');
// }

// bool _isIP(String data) {
//   // Add your logic to check if the data is an IP address
//   // For example, you might use regex or other validation methods
//   return RegExp(r'^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$').hasMatch(data);
// }

// void _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// void _handlePhoneNumber(String phoneNumber) {
//   // Add your logic to handle phone numbers
//   // For example, you might initiate a phone call
// }

// void _handleIPAddress(String ipAddress) {
//   // Add your logic to handle IP addresses
// }

// void _handleOtherData(String data) {
//   // Add your logic to handle other types of data
// }

