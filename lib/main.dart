import 'package:flutter/material.dart';
import 'package:kandrako/components/annonce/annonce_liste.dart';

/// Flutter code sample for [Card].

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KANDRAKO",
      initialRoute: "/",
      routes: {
        "/": (context) => AnnonceListe(),
      },
    );
  }
}
