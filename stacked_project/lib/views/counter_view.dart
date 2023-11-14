import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_project/viewmodels/counter_view_model.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewModel, child) {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(viewModel.counterService.counterValue.toString()),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.addValue();
                    },
                    child: const Text("Add value"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToHome();
                      },
                      child: const Text("Navigate to home"))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
