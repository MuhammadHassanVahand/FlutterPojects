import 'package:flutter/material.dart';
import 'package:wallpaperapp/wallpapers_review.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WallpaperReview(),
    );
  }
}
