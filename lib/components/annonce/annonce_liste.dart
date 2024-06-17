import 'package:flutter/material.dart';
import 'package:kandrako/components/annonce/annonce_card.dart';
import 'package:kandrako/components/menu/menu_bottom.dart';

class AnnonceListe extends StatelessWidget {
  const AnnonceListe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Annonces"), backgroundColor: Colors.white),
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