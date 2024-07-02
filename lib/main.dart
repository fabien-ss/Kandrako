import 'package:flutter/material.dart';
import 'package:kandrako/widgets/annonce/create/annonce_create.dart';
import 'package:kandrako/widgets/annonce/filtre/annonce_filtre.dart';
import 'package:kandrako/widgets/annonce/liste/annonce_details.dart';
import 'package:kandrako/widgets/annonce/liste/annonce_liste.dart';
import 'package:kandrako/widgets/annonce/my_annonce/annonce_utilisateur.dart';
import 'package:kandrako/widgets/annonce/my_annonce/annonce_utilisateur_details.dart';


void main() {
  runApp(MaterialApp(  
    title: "KANDRAKO",
    initialRoute: "/",
    routes: {
      "/": (context) => const AnnonceListe(),
      "/details": (context) => const AnnonceDetails()
    },
  ));
}