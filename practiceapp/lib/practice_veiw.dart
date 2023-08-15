import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("asdasfdasdfA")),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.lightGreenAccent,
                child: Center(
                  child: Text("Section 1"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.redAccent,
                      child: Center(
                        child: Text("part 1"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text("part 1"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text("part 1"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Text("part 1"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text("Section 2"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.cyanAccent,
                      child: Center(
                        child: Text("part 2"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                      child: Center(
                        child: Text("part 2"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text("part 2"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text("part 2"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.greenAccent,
                child: Center(
                  child: Text("Section 3"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.lightGreenAccent,
                      child: Center(
                        child: Text("part 3"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Color.fromARGB(255, 12, 187, 210),
                      child: Center(
                        child: Text("part 3"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Color.fromARGB(255, 17, 181, 190),
                      child: Center(
                        child: Text("part 3"),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Color.fromARGB(255, 5, 155, 196),
                      child: Center(
                        child: Text("part 3"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.cyan,
                child: Center(
                  child: Text("End"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
