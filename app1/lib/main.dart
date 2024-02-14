// // import 'package:app1/profile_veiw.dart';
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       home: MessageSide(),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Open the drawer using the GlobalKey
//             _scaffoldKey.currentState?.openDrawer();
//           },
//           child: Text('Open Drawer'),
//         ),
//       ),
//       drawer: MyDrawer(),
//     );
//   }
// }

// class MyDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Text(
//               'Drawer Header',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//           ),
//           ListTile(
//             title: Text('Item 1'),
//             onTap: () {
//               // Handle the tap
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: Text('Item 2'),
//             onTap: () {
//               // Handle the tap
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String apiUrl = "https://jsonplaceholder.typicode.com/posts";
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future postData() async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {"Content-Type": "application/json"},
      body: json.encode({
        'title': 'New Post',
        'body': 'This is a new post.',
        'userId': 1,
      }),
    );

    if (response.statusCode == 201) {
      fetchData(); // Refresh data after successful POST
    } else {
      throw Exception('Failed to create post');
    }
  }

  Future putData(int postId) async {
    final response = await http.put(
      Uri.parse("$apiUrl/$postId"),
      headers: {"Content-Type": "application/json"},
      body: json.encode({
        'id': postId,
        'title': 'Updated Post',
        'body': 'This post has been updated.',
        'userId': 1,
      }),
    );

    if (response.statusCode == 200) {
      fetchData(); // Refresh data after successful PUT
    } else {
      throw Exception('Failed to update post');
    }
  }

  Future deleteData(int postId) async {
    final response = await http.delete(Uri.parse("$apiUrl/$postId"));

    if (response.statusCode == 200) {
      fetchData(); // Refresh data after successful DELETE
    } else {
      throw Exception('Failed to delete post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Operations'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: fetchData,
            child: Text('GET Data'),
          ),
          ElevatedButton(
            onPressed: postData,
            child: Text('POST Data'),
          ),
          if (data.isNotEmpty)
            ElevatedButton(
              onPressed: () => putData(data[0]['id']),
              child: Text('PUT Data'),
            ),
          if (data.isNotEmpty)
            ElevatedButton(
              onPressed: () => deleteData(data[0]['id']),
              child: Text('DELETE Data'),
            ),
          if (data.isNotEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]['title']),
                    subtitle: Text(data[index]['body']),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
