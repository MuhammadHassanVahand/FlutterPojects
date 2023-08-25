import 'package:flutter/material.dart';

class MessageSide extends StatefulWidget {
  const MessageSide({super.key});

  @override
  State<MessageSide> createState() => _MessageSideState();
}

class _MessageSideState extends State<MessageSide> {
  List messages = [];
  TextEditingController typingMessage = TextEditingController();

  addMessage() {
    setState(() {
      messages.add(typingMessage.text);
      typingMessage.clear();
    });
  }

  deleteMessage(index) {
    setState(() {
      messages.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.message_outlined),
        title: const Text("Message"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(top: 2, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 300,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent,
                          ),
                          child: GestureDetector(
                            onLongPress: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("Delete Options"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            deleteMessage(index);
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Delete message"),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text("Cancel"))
                                      ],
                                    );
                                  });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  messages[index],
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            width: 700,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.blueAccent,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: typingMessage,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide:
                              const BorderSide(color: Colors.transparent)),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      if (typingMessage.text.isNotEmpty) {
                        addMessage();
                      }
                    },
                    icon: const Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
