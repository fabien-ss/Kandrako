import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget{
  const TextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextButton(
      onPressed: null, 
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.date_range, applyTextScaling: true, size: 15, color: Colors.blue,), 
            Text("11-11-24", style: TextStyle(color: Colors.black, fontSize: 9),)
          ]
        )
    );
  }

}