import 'package:flutter/material.dart';

class Counterview extends StatefulWidget {
  const Counterview({super.key});

  @override
  State<Counterview> createState() => _CounterviewState();
}

class _CounterviewState extends State<Counterview> {
  List<String> friendList = [];
  TextEditingController friendlistController = TextEditingController();
  TextEditingController itemUpdateContoler = TextEditingController();

  additem() {
    setState(() {
      friendList.insert(0, friendlistController.text);
      friendlistController.clear();
    });
  }

  removeItem(index) {
    setState(() {
      friendList.removeAt(index);
    });
  }

  updateItem(index) {
    setState(() {
      String change = itemUpdateContoler.text;
      friendList[index] = change;
      itemUpdateContoler.clear();
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            labelText: "Enter anything",
            labelStyle: TextStyle(color: Colors.white),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.greenAccent),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow),
            ),
          ),
          style: const TextStyle(color: Colors.white),
          controller: friendlistController,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              additem();
            },
            style: ElevatedButton.styleFrom(
              elevation: 8,
            ),
            child: const Text("Add item"),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.deepOrangeAccent,
            ),
            Expanded(
              child: ListView.builder(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                itemCount: friendList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          friendList[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 45),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                removeItem(index);
                              },
                              icon: const Icon(
                                Icons.delete_outline,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                itemUpdateContoler.text = friendList[index];
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Update item"),
                                        content: TextField(
                                          controller: itemUpdateContoler,
                                          decoration: const InputDecoration(
                                              labelText: "Edit item"),
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              updateItem(index);
                                            },
                                            child: const Text("Update item"),
                                          )
                                        ],
                                      );
                                    });
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
