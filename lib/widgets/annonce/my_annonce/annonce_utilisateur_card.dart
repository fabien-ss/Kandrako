import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/colors.dart';
import 'package:kandrako/widgets/annonce/liste/annonce_details.dart';
import 'package:kandrako/widgets/annonce/my_annonce/annonce_utilisateur_details.dart';
import 'package:kandrako/widgets/text/text_icon.dart';

class AnnonceUtilisateurCard extends StatelessWidget {
  const AnnonceUtilisateurCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
        ), // Rounds the corners of the card
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(6.0), // Adds internal padding
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start, // Aligns items to the start
          children: [
            ListTile(
              dense: true,
              title: Text("Chauffeur", style: TextStyle(color: textColor, fontSize: 24)),
              trailing: Icon(Icons.circle, color: Colors.green[400], size: 10,), // Arrow icon indicating more details
            ),
            SizedBox(height: 20.0), // Adds some space between the list tile and the row
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => AnnonceUtilisateurDetails())), child: const Text("Détails")),
                _buildInfoRow(Icons.calendar_month, "11-06-23 12-06-23")  
              ],
             )
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: blueColor,
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
