import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/colors.dart';
import 'package:kandrako/widgets/annonce/card/annonce_card.dart';
import 'package:kandrako/widgets/annonce/my_annonce/annonce_utilisateur_card.dart';
import 'package:kandrako/widgets/appBar/top_app_bar.dart';


import '../../menu/menu_bottom.dart';

class AnnonceUtilisateur extends StatelessWidget {
  const AnnonceUtilisateur({super.key});

  void next(){} 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: TopAppBar(onNextStep: next, titre: "Mes annonces", fontColor: Colors.black, iconColor: Colors.black).get(context),
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        drawerScrimColor: blueColor,
        body: StepperExample(),
        bottomNavigationBar: const BottomMenu(),
      )
    );
  }
}

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {

    return ListView( 
      padding: EdgeInsets.only(left: 10, right: 10),
      
      children: [
        SizedBox(height: 10,),
        SizedBox(height: 20,),
        AnnonceUtilisateurCard(),
        SizedBox(height: 2,),
        AnnonceUtilisateurCard(),
        SizedBox(height: 2,),
        AnnonceUtilisateurCard(),
        SizedBox(height: 2,),
      ],
     );
    return Stepper(
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index <= 0) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: <Step>[
            Step( 
              title:  Text("Annonce 1"),
              content:  AnnonceUtilisateurCard(),
               subtitle:  Text("12-06-22"),
               isActive: true,
               stepStyle:  StepStyle(color: blueColor),
               label: const Text("data"),
               state: StepState.disabled
             ),
              Step( 
              title:  Text("Annonce 1"),
              content: AnnonceUtilisateurCard(),
               subtitle: const Text("Annonce 1 data"),
               isActive: true,
               stepStyle: const StepStyle(color: blueColor)
             ),
             Step( 
              title: const Text("Annonce 1"),
              content: const AnnonceUtilisateurCard(),
               subtitle: const Text("Annonce 1 data"),
               isActive: true,
               stepStyle: const StepStyle(color: blueColor),
              
             ),
             Step( 
              title:  Text("Annonce 1"),
              content:  AnnonceUtilisateurCard(),
               subtitle:  Text("12-06-22"),
               isActive: true,
               stepStyle:  StepStyle(color: blueColor),
               label: const Text("data")
             ),
              Step( 
              title:  Text("Annonce 1"),
              content: AnnonceUtilisateurCard(),
               subtitle: const Text("Annonce 1 data"),
               isActive: true,
               stepStyle: const StepStyle(color: blueColor)
             ),
             Step( 
              title: const Text("Annonce 1"),
              content: const AnnonceUtilisateurCard(),
               subtitle: const Text("Annonce 1 data"),
               isActive: true,
               stepStyle: const StepStyle(color: blueColor),
              
             )
          ],
    );
  }
}
