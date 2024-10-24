import 'package:flutter/material.dart';
import 'package:mvvm_advanced/ui/screens/home/homeview_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (viewModel) {}, // similar to init satate
      onDispose: (viewModel) {},

      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text(
            data,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
