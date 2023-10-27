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
  late bool isLogginIn = false;

  @override
  void initState() {
    super.initState();
    isLogginIn = false;
  }

  loginProccess() async {
    try {
      setState(() {
        isLogginIn = true;
      });
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login Successful!"),
        ),
      );
      setState(() {
        isLogginIn = false;
      });
      // ignore: use_build_context_synchronously
      await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(updateScreen: updateScreen),
          ));
      setState(() {});
    } catch (e) {
      isLogginIn = false;

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Wrong password or Email provided for that user."),
        ),
      );
      setState(() {});
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
