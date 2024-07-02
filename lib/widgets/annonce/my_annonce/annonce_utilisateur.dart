import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/colors.dart';
import 'package:kandrako/widgets/annonce/card/annonce_card.dart';
import 'package:kandrako/widgets/annonce/my_annonce/annonce_utilisateur_card.dart';
import 'package:kandrako/widgets/form/custom_search_bar.dart';

import '../../menu/menu_bottom.dart';

class AnnonceUtilisateur extends StatelessWidget {
  const AnnonceUtilisateur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Mes annonces"), backgroundColor: Colors.white),
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        drawerScrimColor: blueColor,
        body: StepperExample(),
        bottomNavigationBar: const BottomMenu(),
        /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 64,
          height: 64,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: null,
            elevation: 0,
            shape: RoundedRectangleBorder( 
              side: const BorderSide(
                width: 3, color: blueColor
              ),
              borderRadius: BorderRadius.circular(100), 
             ),
              child: const Icon(
                Icons.add,
                color: blueColor
              ),
            ), 
        ),*/
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
        CustomSearchBar(),
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
