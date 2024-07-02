import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kandrako/appTheme/colors.dart';
import 'package:kandrako/widgets/annonce/liste/liste_candidature.dart';

class AnnonceUtilisateurDetails extends StatelessWidget {
  const AnnonceUtilisateurDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Mon annonce",
              ),
              backgroundColor: Colors.white,
              leading: const Icon(Icons.arrow_back),
            ),
            backgroundColor: const Color.fromARGB(255, 245, 245, 245),
            drawerScrimColor: blueColor,
            body: Center(
                child: Container(
                    child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  AnnonceUtilisateurDetailsAnnonce(),
                  SizedBox(
                    height: 20,
                  ),
                  CandidatureRecus(),
                  SizedBox(
                    height: 20,
                  ),
                  CandidatureRecus()
                ],
              ),
            )))));
  }
}

class CandidatureRecus extends StatelessWidget {
  const CandidatureRecus({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Title(
                  color: Colors.black,
                  child: const Text(
                    "Candidatures reçues",
                    style: TextStyle(fontSize: 24),
                  )),
              const Text(
                "Chercher",
                style: TextStyle(color: blueColor),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          const ListeCandidature()
        ],
      ),
    );
  }
}


class AnnonceUtilisateurDetailsAnnonce extends StatelessWidget {
  const AnnonceUtilisateurDetailsAnnonce({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: FractionallySizedBox(
            widthFactor: 0.9,
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: blueColor.withOpacity(0.9),
                  spreadRadius: 5,
                  blurRadius: 1,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(10)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: const Text(
                        "Mpandrafitra",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      trailing: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10, bottom: 0),
                          // Wrap the Text widget in a TextButton for button styling
                          child: TextButton(
                            onPressed: () {
                              // Add your action here
                              print('Modifier Button Pressed');
                            },
                            child: const Text("Modifier",
                                style: TextStyle(color: blueColor)),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              //: Colors.white, // Sets the text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5), // Set the border radius
                              ),
                              padding: EdgeInsets.all(
                                  8), // Optional: Add some padding inside the button
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Align children to the left
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    size: 14), // Icon for "Tanjombato"
                                SizedBox(
                                    width:
                                        5), // Adjust spacing between icon and text
                                Text(
                                  "Tanjombato",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white), // Smaller font size
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.calendar_today,
                                    size: 14), // Icon for "11/11/11"
                                SizedBox(
                                    width:
                                        5), // Adjust spacing between icon and text
                                Text(
                                  "11/11/11",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white), // Smaller font size
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.access_time,
                                    size: 14), // Icon for "2/4"
                                SizedBox(
                                    width:
                                        5), // Adjust spacing between icon and text
                                Text(
                                  "2/4",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white), // Smaller font size
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
            )));
  }
}
