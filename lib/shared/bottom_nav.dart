import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 20,
          ),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
            size: 20,
          ),
          label: "Create Proudect"
          ),
        
      ],
      onTap: (int index) {
        switch (index){
          case 0:
          Navigator.pushNamed(context, '/home');
          break;
          case 1:
          Navigator.pushNamed(context, '/create');
          break;
        }
      },
    );
  }
}