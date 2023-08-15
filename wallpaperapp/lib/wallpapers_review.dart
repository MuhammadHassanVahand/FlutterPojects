import 'package:flutter/material.dart';
import 'package:wallpaperapp/wallpapers.dart';

class WallpaperReview extends StatelessWidget {
  const WallpaperReview({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.wallpaper_sharp),
        title: Text("Wallpapers"),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wallpapers(),
            ],
          ),
        ),
      ),
    );
  }
}
