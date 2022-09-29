import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0),),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange[50],
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              label: 'HOME',
              icon: Image.asset(
                  'images/mostviewed/home.png', height: 20, width: 20),
            ),
            BottomNavigationBarItem(
              label: 'PACKAGE',
              icon: Image.asset(
                  'images/mostviewed/packages.png', height: 20, width: 20),
            ),
            BottomNavigationBarItem(

              icon: Image.asset(
                  'images/mostviewed/properties.png', height: 20, width: 20),
              label: 'PROPERTIES',
            ),

            BottomNavigationBarItem(
              label: 'ENQUIRES',
              icon: Image.asset(
                  'images/mostviewed/enquires.png', height: 20, width: 20),
            ),

            BottomNavigationBarItem(
              label: 'AGENT',
              icon: Image.asset(
                  'images/mostviewed/agents.png', height: 20, width: 20),
            ),

          ],
        ),);
}
