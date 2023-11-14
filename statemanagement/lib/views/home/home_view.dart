import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:statemanagement/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewModel.counter.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModel.addViewModel();
                  },
                  child: const Text("Add"),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
