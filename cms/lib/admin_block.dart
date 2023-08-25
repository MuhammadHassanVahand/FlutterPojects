import 'package:flutter/material.dart';

class AdminBlock extends StatelessWidget {
  const AdminBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.admin_panel_settings,
          ),
          title: Text("Admin Block"),
        ),
      ),
    );
  }
}
