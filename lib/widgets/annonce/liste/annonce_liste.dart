import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/colors.dart';
import 'package:kandrako/widgets/annonce/card/annonce_card.dart';
import 'package:kandrako/widgets/annonce/filtre/annonce_filtre.dart';
import 'package:kandrako/widgets/appBar/top_app_bar.dart';
import 'package:kandrako/widgets/menu/menu_bottom.dart';

class _AnnonceListeState extends State<AnnonceListe> {

  void filtreAnnonce(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (builder) => const AnnonceFiltre(), )
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: TopAppBar(
          titre: "Annonces", 
          onNextStep: filtreAnnonce,
          icon: Icon(Icons.search),
          iconColor: Colors.black,
          fontColor: Colors.black
        ).get(context),
         backgroundColor: Colors.white,
        body:
         ListView(
          padding: EdgeInsets.all(25),  
          children: [ 
            AnnonceCard(),
            SizedBox(height: 20,),
            AnnonceCard(),
            SizedBox(height: 20,),
            AnnonceCard(),
            SizedBox(height: 20,),
            AnnonceCard(),
            SizedBox(height: 20,),
            AnnonceCard(),
            SizedBox(height: 20,),
            AnnonceCard(),
            SizedBox(height: 20,),
            AnnonceCard(),
          ],
        ),
        bottomNavigationBar: const BottomMenu(),
        floatingActionButton: FloatingActionButton(onPressed: filtreAnnonce, child: Icon(Icons.filter_alt, color: blancAttenuer,), backgroundColor: blueColor, ),
      ),
    
    );
  }
}

class AnnonceListe extends StatefulWidget {
  const AnnonceListe({super.key});

  @override
  _AnnonceListeState createState() => _AnnonceListeState();
}