import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  final bool isDarkTheme;
  final VoidCallback chnageTheme;
  const Homepage(
      {super.key, required this.isDarkTheme, required this.chnageTheme});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isDarkTheme ? "Dark theme" : "Light Theme"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.isDarkTheme ? "Using Dark Theme" : "Using Light Theme",
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: widget.chnageTheme,
              child: Text(
                widget.isDarkTheme ? "Using Dark Theme" : "Using Light Theme",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Switch(
              value: widget.isDarkTheme,
              onChanged: (value) {
                widget.chnageTheme();
              },
            )
          ],
        ),
      ),
    );
  }
}
