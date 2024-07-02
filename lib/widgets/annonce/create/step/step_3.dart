import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/policy.dart';
import 'package:kandrako/widgets/annonce/create/step/step_init.dart';
import 'package:kandrako/widgets/button/button_primary.dart';
import 'package:kandrako/widgets/button/primary_button.dart';

class Step3 extends StepInit{

  Step3({super.key, required super.onNextStep});

  String sexe = "";
  String salaire = "";
  String nombre = "";

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
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Etape 3 sur 4",
                    style: formTitleStyle),
                SizedBox(height: 40),
                FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sexe", style: textLabelTextFielStyle,),
                      TextField(
                        onChanged: (value){
                          print(value);
                        },
                      ),
                      SizedBox(height: 20),
                      Text("Salaire", style: textLabelTextFielStyle,),
                      TextField(
                        onChanged: (value){
                          print(value);
                        },
                      ),
                      SizedBox(height: 20),
                      Text("Nombre", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      TextField(
                        onChanged: (value){
                          print(value);
                        },
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PrimaryButton(label: "Suivant", onPressed:  handleButtonClick,),
              ],
            ),
          ),
        ))
      ],
    );
  }
  
}