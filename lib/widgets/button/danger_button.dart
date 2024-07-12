import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/colors.dart';

class DangerButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const DangerButton({
    Key? key,
    this.label = "Valider",
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: FloatingActionButton.extended(
        onPressed: onPressed,
        label: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            wordSpacing: 20,
          ),
        ),
        backgroundColor: Colors.red,
        isExtended: true,
      ),
    );
  }
}
