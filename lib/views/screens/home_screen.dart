import 'package:flutter/material.dart';
import 'package:padel_app/views/screens/comunity.dart';
import 'package:padel_app/views/screens/home_page.dart';
import 'package:padel_app/views/screens/profile.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _MainState();
}

class _MainState extends State<Screens> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomePage(),
      const ComunityPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 9, 28, 169),
        // fixedColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Comunidad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent_outlined),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
