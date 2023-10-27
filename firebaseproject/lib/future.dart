import 'package:flutter/material.dart';

class FutureAndStreams extends StatefulWidget {
  const FutureAndStreams({super.key});

  @override
  State<FutureAndStreams> createState() => _FutureAndStreamsState();
}

class _FutureAndStreamsState extends State<FutureAndStreams> {
  Future<int> futureCounter(number) async {
    await Future.delayed(const Duration(seconds: 3));
    return number + number;
  }

  Stream<int> streamCounter(int counter) async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield counter++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: futureCounter(10),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text(
                    "Future: ${snapshot.data.toString()}",
                    style: const TextStyle(fontSize: 30),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
            const SizedBox(
              height: 5,
            ),
            StreamBuilder(
              stream: streamCounter(0),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    "Stream: ${snapshot.data.toString()}",
                    style: const TextStyle(fontSize: 30),
                  );
                }
                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}
