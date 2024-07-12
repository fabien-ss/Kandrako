import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/policy.dart';
import 'package:kandrako/widgets/annonce/liste/annonce_liste.dart';
import 'package:kandrako/widgets/annonce/my_annonce/annonce_utilisateur_card.dart';
import 'package:kandrako/widgets/appBar/top_app_bar.dart';
import 'package:kandrako/widgets/button/danger_button.dart';

class AnnonceSignalement extends StatelessWidget {
  const AnnonceSignalement({super.key});

  void returnToAnnone() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        onNextStep: () => {
          Navigator.push(context, MaterialPageRoute(builder: (builder) => AnnonceListe()))
        },
        titre: "Signalement",
        fontColor: Colors.black,
        icon: Icon(Icons.arrow_back),
        iconColor: Colors.black,
      ).get(context),
      floatingActionButton: DangerButton(
        onPressed: returnToAnnone,
        label: "Signaler",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: content(),
      ),
    );
  }

  Widget content() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(
              Icons.warning_amber_rounded,
              color: Colors.red,
              size: 70,
            ),
            title: Text(
              "Voulez-vous vraiment signaler Rakoto?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          AnnonceUtilisateurCard(),
          SizedBox(height: 20),
          Text(
            "Raisons de signalement",
            style: textLabelTextFielStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CheckboxListTile(
                            title: Text("Raison 1"),
                            value: false,
                            onChanged: (newValue) {},
                          ),
                          CheckboxListTile(
                            title: Text("Raison 2"),
                            value: false,
                            onChanged: (newValue) {},
                          ),
                          CheckboxListTile(
                            title: Text("Raison 3"),
                            value: false,
                            onChanged: (newValue) {},
                          ),
                          CheckboxListTile(
                            title: Text("Raison 4"),
                            value: false,
                            onChanged: (newValue) {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CheckboxListTile(
                            title: Text("Raison 5"),
                            value: false,
                            onChanged: (newValue) {},
                          ),
                          CheckboxListTile(
                            title: Text("Raison 6"),
                            value: false,
                            onChanged: (newValue) {},
                          ),
                          CheckboxListTile(
                            title: Text("Raison 7"),
                            value: false,
                            onChanged: (newValue) {},
                          ),
                          CheckboxListTile(
                            title: Text("Raison 8"),
                            value: false,
                            onChanged: (newValue) {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Description (facultatif)",
            style: textLabelTextFielStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Décrivez la raison de votre signalement...',
            ),
            maxLines: 3,
          ),
          SizedBox(height: 70,)
        ],
      ),
    );
  }
}
