import 'package:apipractice/models/user_model.dart';
import 'package:flutter/material.dart';

class Useretails extends StatelessWidget {
  final Address? address;
  final Company? company;
  final String? phone;
  final String? website;
  const Useretails({
    super.key,
    this.address,
    this.company,
    this.phone,
    this.website,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("User Details"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Address"),
                ListTile(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  title: Text("Street: ${address?.street}"),
                  subtitle: Text("suite: ${address?.suite}"),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("City: ${address?.city}"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Zip Code: ${address?.zipcode}"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Geo"),
                ListTile(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  title: Text("Lat: ${address!.geo?.lat}"),
                  subtitle: Text("Lng: ${address?.geo?.lng}"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Phone Number"),
                ListTile(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  title: const Text("Phone Number: "),
                  subtitle: Text(phone ?? "No Phone Number Available"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Company"),
                ListTile(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  title: Text("Name: ${company?.name}"),
                  subtitle: Text("Catch Phrase: ${company?.catchPhrase}"),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Bs:"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(" ${company?.bs}"),
                    ],
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
