import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  List<String> friendList = ["Bilal", "Taber", "Ali", "Hassam", "Owais"];

  TextEditingController friendListController = TextEditingController();

  addItem() {
    setState(() {
      friendList.add(friendListController.text);
      friendListController.clear();
    });
  }

  removeItem({meraIndexJoValuePassKarega}) {
    setState(() {
      friendList.removeAt(meraIndexJoValuePassKarega);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextField(
            controller: friendListController,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                addItem();
              },
              child: Text("Add Item"),
            ),
          ]),
      body: SafeArea(
        child: ListView.builder(
          itemCount: friendList.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    friendList[index],
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  IconButton(
                    onPressed: () {
                      removeItem(meraIndexJoValuePassKarega: index);
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 50,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
