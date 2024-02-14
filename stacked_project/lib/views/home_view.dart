import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_project/viewmodels/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(viewModel.counterService.counterValue.toString())
              ],
            ),
          ),
        );
      },
    );
  }
}
