import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/colors.dart'; // Assuming this imports your color definitions
import '../options/annonce_option.dart'; // Import for AnnonceOption widget

class AnnonceCard extends StatelessWidget {
  AnnonceCard({Key? key}) : super(key: key);

  String userName = "";
  String dateHeure = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: cardColor, // Container background color
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
      
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const FlutterLogo(size: 56.0),
            title: const Text(
              'RAKOTOMANANA Tolotra',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                overflow: TextOverflow.fade,
                color: textColor
              ),
            ),
            subtitle: const Text('2 min ago', style: TextStyle(fontSize: 10)),
            trailing: IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AnnonceOption();
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Je cherche une personne pour un projet de mécanique.',
                    style: TextStyle(fontSize: 14, color: textColor),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow(Icons.location_on, "Tanjombato"),
                      _buildInfoRow(Icons.calendar_today, "11/11/11"),
                      _buildInfoRow(Icons.access_time, "2/4"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: _buildMetierText("Metier 1"),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: _buildMetierText("Metier 2"),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 0.5,
            color: Color.fromARGB(255, 105, 105, 105),
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("A discuter"),
                TextButton(
                  onPressed: () {
                    // Handle details button press
                  },
                  child: Text("Détails"),
                )
              ],
            ),
          ),
        ],
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

  Widget _buildMetierText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: textColor),
      ),
    );
  }
}
