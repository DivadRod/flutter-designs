import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Colors.white,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.data_thresholding_outlined),
          label: 'Grafica',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_contact_calendar),
          label: 'Contacto',
        )
      ],
    );
  }
}
