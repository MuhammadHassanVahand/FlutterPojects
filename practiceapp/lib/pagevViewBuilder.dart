import 'package:flutter/material.dart';

class PageViewBuilder extends StatelessWidget {
  const PageViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {"color": Colors.blue, "Text": "Accent"},
      {"color": Colors.red, "Text": "Red"},
    ];
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: list[index]["color"],
                    child: Center(
                      child: Text(
                        list[index]["Text"],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: list[index]["color"],
                    child: Center(
                      child: Text(
                        list[index]["Text"],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
