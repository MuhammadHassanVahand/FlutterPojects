import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_project/app/app.locator.dart';
import 'package:stacked_project/app/app.router.dart';
import 'package:stacked_project/views/counter_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
