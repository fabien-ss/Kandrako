import 'dart:collection';

import 'package:flutter/material.dart';

class StepInit extends StatelessWidget {

  final VoidCallback onNextStep;
  
  const StepInit({super.key, required this.onNextStep});

  void handleButtonClick() {
    onNextStep();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}