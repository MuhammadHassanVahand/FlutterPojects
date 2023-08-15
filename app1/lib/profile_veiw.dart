import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.abc_rounded),
        actions: [],
        title: Text(
          "Kiya haal he",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 150,
                width: 300,
                //color: Colors.amber,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.amber),
              ),
              SizedBox(width: 10),
              Container(
                height: 150,
                width: 300,
                //color: Colors.amber,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.amber),
              ),
              SizedBox(width: 10),
              Container(
                height: 150,
                width: 300,
                //color: Colors.amber,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.amber),
              ),
              SizedBox(width: 10),
              Card(
                child: Container(
                  height: 150,
                  width: 300,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: Colors.amber),
                ),
                //   shape: CircleBorder(),
                elevation: 12,
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
