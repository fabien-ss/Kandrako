import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kandrako/appTheme/colors.dart';
import 'package:kandrako/widgets/button/custom_elevated_button.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "Postuler",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            wordSpacing: 20
          ),  
        ),
        backgroundColor: blueColor,
        isExtended: true,
      ),
    );
  }
}
