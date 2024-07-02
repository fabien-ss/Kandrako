import 'package:flutter/material.dart';
import 'package:kandrako/widgets/annonce/card/candidature_card.dart';
import 'package:kandrako/widgets/annonce/my_annonce/annonce_utilisateur_details.dart';

class ListeCandidature extends StatelessWidget {
  const ListeCandidature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      color: Colors.transparent,
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CandidatureCarte(),
            CandidatureCarte(),
            CandidatureCarte(),
            CandidatureCarte(),
            CandidatureCarte(),
            CandidatureCarte(),
            CandidatureCarte(),
            CandidatureCarte(),
            CandidatureCarte(),
            CandidatureCarte(),
          ],
        ),
      ),
    );
  }
}
