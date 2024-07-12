import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/policy.dart';
import 'package:kandrako/widgets/annonce/liste/annonce_liste.dart';
import 'package:kandrako/widgets/appBar/top_app_bar.dart';
import 'package:kandrako/widgets/button/button_primary.dart';
import 'package:kandrako/widgets/specialite/specialiteSelector.dart';

class AnnonceFiltre extends StatelessWidget {
  const AnnonceFiltre({super.key});

  @override
  Widget build(BuildContext context) {
    
    RangeValues values = const RangeValues(0.1, 0.5);
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: TopAppBar(
          titre: "Rechercher une annonce",
          onNextStep: () => { Navigator.push(context, MaterialPageRoute(builder: (builder) => AnnonceListe())) },
          iconColor: Colors.black,
          fontColor: Colors.black
        ).get(context),
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
                          TextButton(
                            child: Text(  "Choisissez les spécialités",
                            textAlign: TextAlign.left,
                            style: textLabelTextFielStyle,),
                            onPressed: () => showDialog( 
                              context: context,
                              builder: (BuildContext context) {
                                return Specialiteselector();
                              }
                            ),
                          
                          ),
                          DropdownButtonFormField.new(
                            items: [],
                            onChanged: null,
                            autofocus: true,
                            style: textLabelTextFielStyle,
                            
                          ),  
                          SizedBox(height: 20),
                          Text("Sexe", textAlign: TextAlign.left, 
                            style: textLabelTextFielStyle,),
                          DropdownButtonFormField.new(
                            items: [],
                            onChanged: null,
                            style: textLabelTextFielStyle,
                            
                          ),
                          SizedBox(height: 20),
                          Text("Salaire", textAlign: TextAlign.left,
                            style: textLabelTextFielStyle,),
                          TextField(),
                          SizedBox(height: 20),
                          Text("Age", textAlign: TextAlign.left, 
                            style: textLabelTextFielStyle,),
                          RangeSlider(values: values, onChanged: null, labels: labels, ),
                          SizedBox(height: 20),
                          Text(
                            "Choisir un lieu de référence",
                            textAlign: TextAlign.left,

                            style: textLabelTextFielStyle,
                          ),
                          DropdownButtonFormField.new(
                            items: [],
                            onChanged: null,

                            style: textLabelTextFielStyle,
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
          floatingActionButton: ButtonPrimary(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }
}
