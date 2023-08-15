import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String? name;
  final String msg;
  final String? time;
  final String? assetImagePath;
  final String icon;

  const ProfileTile({
    super.key,
    this.name,
    required this.msg,
    this.time,
    this.assetImagePath,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue), // Add a border
        borderRadius: BorderRadius.circular(10), // Add rounded corners
      ),
      child: ListTile(
        tileColor: Colors.greenAccent,
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          radius: 25,
          backgroundImage: assetImagePath != null
              ? AssetImage(assetImagePath!)
              : AssetImage(
                  "lib/widget/images/blank-profile-picture-hd-images-photo-3.JPG"),
        ),
        title: Text(
          name ?? "Anonymous",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
              decoration: TextDecoration.underline),
        ),
        subtitle: Text(
          msg,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 15,
            color: Colors.grey,
            decoration: TextDecoration.none,
          ),
        ),
        trailing: Column(
          children: [
            Text(time ?? "             "),
            Icon(
              IconData(int.parse(icon), fontFamily: "MaterialIcons"),
            )
          ],
        ),
      ),
    );
  }
}
