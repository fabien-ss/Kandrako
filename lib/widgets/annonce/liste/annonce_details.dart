import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kandrako/appTheme/colors.dart';
import 'package:kandrako/widgets/annonce/liste/annonce_liste.dart';
import 'package:kandrako/widgets/appBar/top_app_bar.dart';
import 'package:kandrako/widgets/button/button_customized.dart';
import 'package:kandrako/widgets/button/button_primary.dart';

class AnnonceDetails extends StatefulWidget {
  const AnnonceDetails({super.key});

  @override
  _AnnonceDetailsState createState() => _AnnonceDetailsState();
}

class _AnnonceDetailsState extends State<AnnonceDetails> {

  void next(){
    Navigator.push(context, MaterialPageRoute(builder: (builder) => AnnonceListe()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: TopAppBar(titre: "Détails de l'annonce", onNextStep: next, fontColor: Colors.black, iconColor: Colors.black).get(context),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            color: blancAttenuer,
            child: Column(
              children: [
                Center(
                  child: Icon(
                    Icons.work,
                    size: 70,
                    color: Colors.black,
                ))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  "Chauffeur",
                  style: TextStyle(
                      fontSize: 30,
                      color: blueColor,
                      fontWeight: FontWeight.bold),
                )),
                const Center(
                  child: Text("auth: Rasoa"),
                ),
                IconButton(onPressed: () => {  }, icon: Icon(
                  Icons.more_horiz,)),
                const SizedBox(
                  height: 5,
                ),
                Center(
                    child: FractionallySizedBox(
                  widthFactor:
                      0.8, // This sets the width to 60% of the parent's width
                  child: Container(
                    padding: EdgeInsets.only(top: 30, bottom: 20),
                    decoration: BoxDecoration(
                        color: blancAttenuer,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(
                              0,
                              1,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("chauffeur"),
                          Text("chauffeur"),
                          Text("chauffeur"),
                        ]),
                  ),
                )),
                SizedBox(
                  height: 5,
                ),
                Center(
                    child: FractionallySizedBox(
                  widthFactor:
                      0.8, // This sets the width to 60% of the parent's width
                  child: Container(
                    padding: EdgeInsets.only(top: 30, bottom: 20),
                    decoration: BoxDecoration(
                      color: blancAttenuer,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("chauffeur"),
                          Text("chauffeur"),
                          Text("chauffeur"),
                        ]),
                  ),
                )),
                SizedBox(
                  height: 15,
                )
                ,
                SizedBox(
                  height: 15,
                ),
                const Center(
                  child: FractionallySizedBox(
                      widthFactor: 0.8,
                      child: Text(
                          "Je recherche deux personnes pour une interview. Je recherche deux personnes pour une interview, Je recherche deux personnes pour une interview")),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: ButtonPrimary(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //        bottomNavigationBar: const ButtonPrimary(),
    ));
  }
}

class HorizontalButtonList extends StatelessWidget {
  final List<String> buttonLabels;

  const HorizontalButtonList({
    Key? key,
    required this.buttonLabels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: buttonLabels.map((label) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ElevatedButton(
              onPressed: () => null,
              child: Text(
                label,
                style: TextStyle(fontSize: 12, color: Colors.black), 
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(50, 30), 
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
               
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
