import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kandrako/components/text/textIcon.dart';

class AnnonceCard extends StatelessWidget {
  const AnnonceCard({super.key});

  @override
  Widget build(BuildContext context) {
      List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    return const Card(
      elevation: 0,
      color: Color.fromARGB(255, 245, 245, 245),
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            leading: FlutterLogo(size: 56.0),
            title: Text(
              'RAKOTOMANANA Tolotra', 
              style: TextStyle(
                fontWeight: FontWeight.w900,
                overflow: TextOverflow.fade
              ),
            ),
            subtitle: Text(
              '2 min ago',
              style: TextStyle(fontSize: 10)  
            ),
            trailing: Icon(Icons.more_horiz,),  
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(""),
                flex: 1,
              ),
              Expanded(
                flex: 10,
                child: Text(
                  "Hello how are you all  i'm very exiciting Hello how are you all  i'm very exiciting Hello how are you all  i'm very exiciting Hello how are you all  i'm very exiciting",
                  style: TextStyle(),
                ),
              ),
              Expanded(
                flex: 4,
                child: ListBody( 
                  children: [
                    TextIcon(),
                    SizedBox(height:  0),
                    TextIcon(),
                    SizedBox(height:  0),
                    TextIcon(),
                  ],
                ),
              ),
              
            ],
          ),
          Divider(
            height: 1,
            color: Color.fromARGB(255, 105, 105, 105),
            indent: 20,
            endIndent: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("A discuter"),
              TextButton(
                onPressed: null, 
                child: Text("Détails"),
                 style: ButtonStyle(
                ),
              )
            ],
          )
        ]

      )
    );
  }

}
