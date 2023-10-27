import 'dart:convert';
import 'package:apipractice/models/user_model.dart';
import 'package:apipractice/screens/userDetails.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPractice extends StatefulWidget {
  const ApiPractice({super.key});

  @override
  State<ApiPractice> createState() => _ApiPracticeState();
}

class _ApiPracticeState extends State<ApiPractice> {
  List<UserModel> allUsers = [];
  Future<List<UserModel>> getPost() async {
    var url = Uri.https("jsonplaceholder.typicode.com", "/users");
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body);
    for (var i in responseBody) {
      allUsers.add(UserModel.fromJson(i));
    }
    return allUsers;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Fetching Data"))),
        body: Center(
          child: FutureBuilder(
            future: getPost(),
            builder: (BuildContext context,
                AsyncSnapshot<List<UserModel>> snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Useretails(
                                address: snapshot.data?[index].address,
                                company: snapshot.data?[index].company,
                                phone: snapshot.data?[index].phone,
                                website: snapshot.data?[index].website,
                              ),
                            ),
                          );
                        },
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        title: Text("Id: ${snapshot.data?[index].id}"),
                        subtitle: Text("Name: ${snapshot.data?[index].name}"),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "User Name: ${snapshot.data?[index].username}"),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(snapshot.data?[index].email ?? "No Data"),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
