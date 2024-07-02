import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/policy.dart';
import 'package:kandrako/widgets/annonce/create/step/step_init.dart';
import 'package:kandrako/widgets/button/button_primary.dart';
import 'package:kandrako/widgets/button/primary_button.dart';

class Step1 extends StepInit {

  Step1({super.key, required super.onNextStep, });

  List<String> specialities = [];


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
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Etape 1 sur 4",
                        style: formTitleStyle,
                      ),
                      SizedBox(height: 40),
                      FractionallySizedBox(
                        alignment: AlignmentDirectional.center,
                        widthFactor: 0.8,
                        child: Column(
                          children: [
                            Text(
                                "Choisissez la(les) spécialité(s) exigée(s) (max 2)",
                                style: textLabelTextFielStyle,),
                            TextField(
                              onChanged: (value) {
                                print(value);
                              }),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20), // Adjust spacing as needed
                  PrimaryButton(label: "Suivant", onPressed: handleButtonClick,)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
