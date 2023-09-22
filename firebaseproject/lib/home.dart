import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final Function() updateScreen;
  const Home({super.key, required this.updateScreen});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSignOut = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Home"),
          ),
          InkWell(
              onTap: () {
                isSignOut = true;
                setState(() {});
                FirebaseAuth.instance.signOut();
                Navigator.pop(context);
                widget.updateScreen.call();
              },
              child: const Text("Sign Out")),
          Visibility(
              visible: isSignOut, child: const CircularProgressIndicator()),
        ],
      ),
    ));
  }
}
