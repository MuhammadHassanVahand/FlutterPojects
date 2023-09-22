import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseproject/home.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  void updateScreen() {
    setState(() {});
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSignUp = false;

  registerUser() async {
    try {
      isSignUp = true;
      setState(() {});
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // ignore: use_build_context_synchronously
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(
              updateScreen: updateScreen,
            ),
          ));
    } catch (e) {
      isSignUp = false;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("I don't know what to do?")));
      setState(() {});
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: emailController),
          TextField(controller: passwordController),
          ElevatedButton(
              onPressed: () async {
                await registerUser();
                const CircularProgressIndicator();
              },
              child: Text("Register")),
          Visibility(
              visible: isSignUp, child: const CircularProgressIndicator())
        ],
      ),
    ));
  }
}
