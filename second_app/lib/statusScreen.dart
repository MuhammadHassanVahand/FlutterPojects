import 'package:flutter/material.dart';
import 'package:second_app/widget/profiletile.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined),
        title: Text("Status"),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            ProfileTile(
              assetImagePath:
                  "lib/widget/images/242853925_3354850844655922_5688251419522409922_n.jpg",
              name: "Hassan",
              msg: "Saved",
              time: "3:50 pm",
              icon: "0xe0b0",
            ),
            ProfileTile(
              name: "Hamza",
              msg: "Azadi Party?",
              time: "4:30 pm",
              icon: '0xe156',
            ),
            ProfileTile(
              assetImagePath:
                  "lib/widget/images/Screenshot 2023-08-14 120742.png",
              name: "Khubaib",
              msg: "Kiya ho gaya",
              icon: '0xe877',
            ),
            ProfileTile(
              assetImagePath:
                  "lib/widget/images/Screenshot 2023-08-14 120836.png",
              name: "Bilal",
              msg: "Kaha ho",
              time: "6:30 pm",
              icon: '0xe876',
            ),
            ProfileTile(
              assetImagePath:
                  "lib/widget/images/Screenshot 2023-08-14 120911.png",
              name: "Shoaib",
              msg: "Cricket scene?",
              time: "10:30 am",
              icon: '0xe156',
            ),
            ProfileTile(
              name: "Hassan Jameel",
              msg: "kidhar ho",
              time: "9:30 am",
              icon: '0xe156',
            ),
            ProfileTile(
              msg: "Kaha ho",
              time: "6:30 pm",
              icon: '0xe5ca',
            ),
            ProfileTile(
              msg: "Kaha ho",
              time: "6:30 pm",
              icon: '0xe5ca',
            ),
            ProfileTile(
              msg: "HAHHAHAHA",
              time: "2:40 am",
              icon: '0xe5ca',
            ),
            ProfileTile(
              msg: "KIya hua",
              time: "4:30 am",
              icon: '0xe5ca',
            ),
            ProfileTile(
              msg: "KIya hua",
              time: "4:30 am",
              icon: '0xe5ca',
            ),
            ProfileTile(
              msg: "KIya hua",
              time: "4:30 am",
              icon: '0xe5ca',
            ),
          ]),
        ),
      ),
    );
  }
}
