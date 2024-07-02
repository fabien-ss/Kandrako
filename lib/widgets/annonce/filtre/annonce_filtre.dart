import 'package:flutter/material.dart';
import 'package:kandrako/widgets/button/button_primary.dart';

class AnnonceFiltre extends StatelessWidget {
  const AnnonceFiltre({super.key});

  @override
  Widget build(BuildContext context) {
    
    RangeValues values = const RangeValues(0.1, 0.5);
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());


    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Rechercher une annonce",
            style: TextStyle(fontWeight: FontWeight.w100, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          primary: true,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
                child: FractionallySizedBox(
              alignment: Alignment.center,
              widthFactor: 0.9,
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: 0.8,
                      child: Column(
                        children: [
                          Text(
                            "Choisissez les spécialités",
                            textAlign: TextAlign.left,
                          ),
                          DropdownButtonFormField.new(
                            items: [],
                            onChanged: null,
                            autofocus: true,
                          ),
                          SizedBox(height: 20),
                          Text("Sexe", textAlign: TextAlign.left),
                          DropdownButtonFormField.new(
                            items: [],
                            onChanged: null,
                          ),
                          SizedBox(height: 20),
                          Text("Salaire", textAlign: TextAlign.left),
                          TextField(),
                          SizedBox(height: 20),
                          Text("Age", textAlign: TextAlign.left),
                          RangeSlider(values: values, onChanged: null, labels: labels,),
                          SizedBox(height: 20),
                          Text(
                            "Choisir un lieu de référence",
                            textAlign: TextAlign.left,
                          ),
                          DropdownButtonFormField.new(
                            items: [],
                            onChanged: null,
                          ),
                          SizedBox(height: 20),
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
        ));
  }
}
