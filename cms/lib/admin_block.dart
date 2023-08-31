import 'package:cms/employee/add_employee.dart';
import 'package:cms/employee/employee_button/buttons.dart';
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
          title: const Text("Admin Block"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            width: 200,
            height: 200,
            color: Colors.cyan,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Add Emlpoyee",
                  style: TextStyle(fontSize: 20),
                ),
                const Text("working space"),
                CustomButton(
                  text: "Add Employee",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddEmployee(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
