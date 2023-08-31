import 'package:cms/employee/employee_textfield.dart';
import 'package:flutter/material.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({super.key});

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  String? selectedGender;

  List<Map<String, dynamic>> genderDropdown = [
    {"label": "Male", "value": "Male"},
    {"label": "Female", "value": "Female"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          //color: Colors.blueAccent,
          child: Column(
            children: [
              EmployeeTextField(text: "First Names"),
              EmployeeTextField(text: "Last Name"),
              EmployeeTextField(text: "Email Address"),
              EmployeeTextField(text: "Number"),
              EmployeeTextField(text: "Password"),
              DropdownButton(
                value: selectedGender,
                onChanged: (newValue) {
                  setState(() {
                    selectedGender = newValue!;
                  });
                },
                items: genderDropdown.map<DropdownMenuItem<String>>((option) {
                  return DropdownMenuItem<String>(
                    value: option['value'],
                    child: Text(option['label']),
                  );
                }).toList(),
                isExpanded: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
