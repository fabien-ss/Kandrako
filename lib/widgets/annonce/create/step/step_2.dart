import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/policy.dart';
import 'package:kandrako/widgets/annonce/create/step/step_init.dart';
import 'package:kandrako/widgets/button/button_primary.dart';
import 'package:kandrako/widgets/button/primary_button.dart';

class Step2 extends StepInit {
  Step2({super.key, required super.onNextStep});

  String poste = "";
  String dateDebut = "";
  String dateFin = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(height: 20),
        Center(
          child: FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 0.9,
            child: Container(
              height: screenHeight * 0.8,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15,
                    spreadRadius: 2,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Étape 2 sur 4",
                    style: formTitleStyle
                  ),
                  const SizedBox(height: 30),
                  FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Titre du poste",
                          textAlign: TextAlign.left,
                          style: textLabelTextFielStyle,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          onChanged: (value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Date début",
                          textAlign: TextAlign.left,
                          style: textLabelTextFielStyle,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          onChanged: (value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Date fin",
                          textAlign: TextAlign.left,
                          style: textLabelTextFielStyle,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          onChanged: (value) {
                            this.dateFin = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Description du travail à effectuer",
                          textAlign: TextAlign.left,
                          style: textLabelTextFielStyle,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          onChanged: (value) {
                            this.description = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  PrimaryButton(label: "Suivant", onPressed:  handleButtonClick,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField() {
    return TextField(
      onChanged: (value) {
        print(value);
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),
    );
  }
}
