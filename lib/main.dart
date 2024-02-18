import 'package:edu_hsi/beranda.dart';
import 'package:edu_hsi/profile.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PlusJakartaSans'),
      debugShowCheckedModeBanner: false,
      home: Beranda(),
      initialRoute: Beranda.nameRoute,
      routes: {
        Beranda.nameRoute: (context) => Beranda(),
        Profile.nameRoute: (context) => Profile(),
      },
    );
  }
}
