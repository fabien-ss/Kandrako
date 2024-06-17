import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    String texte = "Détails";
    return const TextButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
      ), 
      child: Text("Allow"),
    );
  }
  
}