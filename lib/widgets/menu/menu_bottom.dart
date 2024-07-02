import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 21, 130, 219),
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () => Navigator.pushNamed(context, "/details"), child: const Icon(Icons.add, color: Colors.white,),),
              TextButton(onPressed: () => Navigator.pushNamed(context, "/notifications") , child: const Icon(Icons.notifications, color: Colors.white,),),
              TextButton(onPressed: () => Navigator.pushNamed(context, "/"), child: const Icon(Icons.home, color: Colors.white,),),
              TextButton(onPressed: () => Navigator.pushNamed(context, "/notifications"), child: const Icon(Icons.menu, color: Colors.white,),),
              TextButton(onPressed: () => Navigator.pushNamed(context, "/notifications"), child: const Icon(Icons.person_2, color: Colors.white,),)
            ],
          ),
        ),
      ),
    );
  }
}
