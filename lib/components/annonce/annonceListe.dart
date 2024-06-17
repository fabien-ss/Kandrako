import 'package:flutter/material.dart';
import 'package:kandrako/components/annonce/annonceCard.dart';
import 'package:kandrako/components/menu/bottomMenu.dart';

class AnnonceListe extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Annonces",), backgroundColor: Colors.white),
          backgroundColor: Colors.white,
        
        body:
         ListView(
          padding: EdgeInsets.all(15),
          children: const <AnnonceCard> [ 
            AnnonceCard(),
            AnnonceCard(),
            AnnonceCard(),
            AnnonceCard(),
            AnnonceCard(),
            AnnonceCard(),
            AnnonceCard(),
          ],
        ),
        bottomNavigationBar: const BottomMenu(),
      )
    );
  }
}