import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_project/viewmodels/counter_view_model.dart';
import 'package:stacked_project/views/counter_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(viewModel.counterService.counterValue.toString())
                ]),
          ),
        );
      },
    );
  }
}
