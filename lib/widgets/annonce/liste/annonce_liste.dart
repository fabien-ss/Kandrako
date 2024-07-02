import 'package:flutter/material.dart';
import 'package:kandrako/widgets/annonce/card/annonce_card.dart';
import 'package:kandrako/widgets/menu/menu_bottom.dart';

class AnnonceListe extends StatelessWidget {
  const AnnonceListe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Annonces", style: TextStyle(fontFamily: "Inter"),), 
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: const Icon(Icons.search),
          primary: true,
          
          ),
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
      )
    );
  }
}