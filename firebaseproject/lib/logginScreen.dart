import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseproject/home.dart';
import 'package:firebaseproject/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void updateScreen() {
    setState(() {});
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLogginIn = false;

  loginProccess() async {
    try {
      isLogginIn = true;
      setState(() {});
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
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
      setState(() {
        isLogginIn = false;
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("I don't know what to do?")));
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
          ),
          TextField(
            controller: passwordController,
          ),
          ElevatedButton(
              onPressed: () {
                loginProccess();
              },
              child: const Text("Login")),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                );
              },
              child: const Text("Regiter")),
          Visibility(
              visible: isLogginIn, child: const CircularProgressIndicator()),
        ],
      ),
    ));
  }
}
