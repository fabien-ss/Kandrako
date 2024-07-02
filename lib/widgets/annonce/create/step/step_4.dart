import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/policy.dart';
import 'package:kandrako/widgets/annonce/create/step/step_init.dart';
import 'package:kandrako/widgets/button/button_primary.dart';

class Step4 extends StepInit {

  Step4({super.key, required super.onNextStep});

  List<String> lieus = [];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
            child: FractionallySizedBox(
          alignment: Alignment.center,
          widthFactor: 0.9,
          child: Container(
            height: screenHeight * 0.8,
            padding: EdgeInsets.only(top: 10, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Etape 4 sur 4",
                    style: formTitleStyle),
                SizedBox(height: 40),
                FractionallySizedBox(
                  alignment: AlignmentDirectional.center,
                  widthFactor: 0.8,
                  child: Column(
                    children: [
                      Text("Choisissez le lieu"),
                      TextField(
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonPrimary()
              ],
            ),
          ),
        ))
      ],
    );
  }
}
