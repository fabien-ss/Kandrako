import 'package:flutter/material.dart';
import 'package:kandrako/components/text/text_icon.dart';

import 'annonce_option.dart';

class AnnonceCard extends StatelessWidget {
  const AnnonceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color.fromARGB(255, 245, 245, 245),
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            leading: const FlutterLogo(size: 56.0),
            title:  const Text(
              'RAKOTOMANANA Tolotra', 
              style: TextStyle(
                fontWeight: FontWeight.w900,
                overflow: TextOverflow.fade
              ),
            ),
            subtitle: const Text(
              '2 min ago',
              style: TextStyle(fontSize: 10)  
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_horiz), 
              onPressed: () => showDialog(
                context: context, 
                builder: (BuildContext context){
                  return AnnonceOption();
                },
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Text(""),
              ),
              Expanded(
                flex: 10,
                child: Text(
                  "Hello how are you all  i'm very exiciting Hello how are you all  i'm very exiciting Hello how are you all  i'm very exiciting Hello how are you all  i'm very exiciting",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: ListBody( 
                  children: [
                    TextIcon(),
                  ],
                ),
              ),
              
            ],
          ),
          const Divider(
            height: 1,
            color: Color.fromARGB(255, 105, 105, 105),
            indent: 20,
            endIndent: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("A discuter"),
              TextButton(
                onPressed: null, 
                style: ButtonStyle(
                ),
                child: Text("Détails"),
              )
            ],
          )
        ]

      )
    );
  }
}
