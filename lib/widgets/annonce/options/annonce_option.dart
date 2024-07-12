import 'package:flutter/material.dart';
import 'package:kandrako/widgets/annonce/signalement/annonce_signalement.dart';

class AnnonceOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            leading: const Icon(Icons.save),
            title: const Text('Enregistrer'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Partager'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.warning),
            title: const Text('Signaler'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => AnnonceSignalement()));
            },
            iconColor: Colors.red,
            textColor: Colors.red,
          ),
          Divider(),
        ],
      ),
    );
  }
}