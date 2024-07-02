import 'package:flutter/material.dart';

class TopAppBar {

  const TopAppBar({required this.titre, required this.onNextStep});

  final String titre;
  final VoidCallback onNextStep;

  @override
  AppBar get(BuildContext context) {
    return AppBar(
     title: Text(
          titre,
          style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          color: Colors.white,
          onPressed: onNextStep,
          icon: const Icon(Icons.arrow_back),
        ),
        primary: true,
    );
  }

}