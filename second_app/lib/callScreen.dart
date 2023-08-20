import 'package:flutter/material.dart';
import 'package:second_app/widget/profiletile.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.call),
        title: Text("Calls"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileTile(
              assetImagePath:
                  "lib/widget/images/242853925_3354850844655922_5688251419522409922_n.jpg",
              name: "Hassan",
              msg: "Incoming",
              time: "3:50 pm",
              icon: '0xe0b8',
            ),
          ],
        ),
      ),
    );
  }
}
