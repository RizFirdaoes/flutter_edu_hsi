import 'package:edu_hsi/beranda.dart';
import 'package:edu_hsi/profile.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

int _selectedIndex = 0;

class MyApp extends StatefulWidget {
  static const List<Widget> _pages = <Widget>[
    Beranda(),
    Icon(
      Icons.school,
      size: 150,
    ),
    Icon(
      Icons.description,
      size: 150,
    ),
    Profile()
  ];

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PlusJakartaSans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyApp._pages.elementAt(_selectedIndex), //New
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: Color(0xFF273A71)),
          selectedItemColor: Color(0xFF273A71),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, color: Colors.grey),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.grey),
              label: 'Akademi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined, color: Colors.grey),
              label: 'Reguler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_4_outlined, color: Colors.grey),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        ),
      ),
    );

    // return MaterialApp(
    //   theme: ThemeData(fontFamily: 'PlusJakartaSans'),
    //   debugShowCheckedModeBanner: false,
    //   home: Beranda(),
    //   initialRoute: Beranda.nameRoute,
    //   routes: {
    //     Beranda.nameRoute: (context) => Beranda(),
    //     Profile.nameRoute: (context) => Profile(),
    //   },
    // );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
