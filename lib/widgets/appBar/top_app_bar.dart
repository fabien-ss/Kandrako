import 'package:flutter/material.dart';

class TopAppBar {

  TopAppBar({
    required this.titre, 
    required this.onNextStep, 
    this.icon = const Icon(Icons.arrow_back),
    this.iconColor = Colors.white,
    this.fontColor = Colors.white
  });

  final String titre;
  final VoidCallback onNextStep;
  Icon icon;
  Color iconColor;
  Color fontColor;

  @override
  AppBar get(BuildContext context) {
    return AppBar(
     title: Text(
          titre,
          style: TextStyle(fontWeight: FontWeight.w100, color: fontColor),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          color: iconColor,
          onPressed: onNextStep,
          icon: icon,
        ),
        primary: true,
    );
  }

}