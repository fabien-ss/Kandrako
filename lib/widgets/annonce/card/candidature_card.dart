import 'package:flutter/material.dart';

class CandidatureCarte extends StatelessWidget {
  const CandidatureCarte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 16), // Space between left icons/text and ListTile
            Expanded(
              child: ListTile(
                leading: Icon(
                    Icons.person_outline), // Using a different icon for variety
                title: Text("Francine") ,
                subtitle: Row(children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),],),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(children: [
                      IconButton(
                        icon: Icon(Icons.check_box),
                        onPressed: () {
                          // Handle phone button press
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.dangerous_sharp),
                        onPressed: () {
                          // Handle mail button press
                        },
                      ),
                    ])
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
