import 'package:flutter/material.dart';
import 'package:uber_ui_design/constant/appColors.dart';
import 'package:uber_ui_design/constant/appIcons.dart';
import 'package:uber_ui_design/constant/appText.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.black10,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      AppIcons.search,
                      SizedBox(
                        width: 10,
                      ),
                      AppTextW500(
                        text: "Where to?",
                        color: AppColors.black,
                        fontSize: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
