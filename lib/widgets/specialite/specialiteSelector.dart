import 'package:flutter/material.dart';

class Specialiteselector extends StatelessWidget {
  const Specialiteselector({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      content: FractionallySizedBox(
        widthFactor: 0.9,
        alignment: Alignment.center,
        heightFactor: 0.5,
        child: Column(
          children: [
            Text("Choisissez les spécialités"),
            SizedBox(height: 20,),
            TextField(),
             SizedBox(height: 10,),
             Checkbox(value: true, onChanged: null, ),

             SizedBox(height: 10,),
             Checkbox(value: true, onChanged: null),

             SizedBox(height: 10,),
             Checkbox(value: true, onChanged: null)
          ],
        ),
      ),
    );
  }

}