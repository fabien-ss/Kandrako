import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/icon.dart';
import 'package:kandrako/widgets/annonce/create/annonce_create.dart';
import 'package:kandrako/widgets/annonce/liste/annonce_liste.dart';
import 'package:kandrako/widgets/annonce/my_annonce/annonce_utilisateur.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    const iconSize = 30.0;
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 21, 130, 219),
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        child: BottomAppBar(
          elevation: 5,
          color: Colors.transparent,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AnnonceCreate()));
                }, 
                child: const Icon(Icons.add_to_photos, color: Colors.white,),),
              TextButton(onPressed: () => Navigator.pushNamed(context, "/notifications") , child: const Icon(Icons.notifications_active_outlined, color: Colors.white, size: iconSize,),),
              TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AnnonceListe())), child: const Icon(Icons.home_filled, color: Colors.white, size: 40,),),
              TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AnnonceUtilisateur())), child: const Icon(Icons.menu, color: Colors.white, size: iconSize),),
              TextButton(onPressed: () => Navigator.pushNamed(context, "/notifications"), child: const Icon(Icons.person_2, color: Colors.white, size: iconSize),)
            ],
          ),
        ),
      ),
    );
  }
}
