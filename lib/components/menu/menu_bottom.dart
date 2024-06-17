import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 21, 130, 219),
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: const ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.add, color: Colors.white,),),
              IconButton(onPressed: null, icon: Icon(Icons.notifications, color: Colors.white,),),
              IconButton(onPressed: null, icon: Icon(Icons.home, color: Colors.white,),),
              IconButton(onPressed: null, icon: Icon(Icons.menu, color: Colors.white,),),
              IconButton(onPressed: null, icon: Icon(Icons.person_2, color: Colors.white,),)
            ],
          ),
        ),
      ),
    );
  }
}
