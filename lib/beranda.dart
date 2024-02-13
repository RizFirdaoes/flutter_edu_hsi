import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});
  static const nameRoute = "/beranda";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF273A71),
        leading: Image.asset("assets/images/logo-hsi.png"),
        title: Text(
          "EDU HSI",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "PlusJakartaSans",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            // color: Colors.amber,
            child: Text(
              "v.2401-2001",
              style:
                  TextStyle(color: Colors.white, fontFamily: "PlusJakartaSans"),
            ),
          )
        ],
      ),
    );
  }
}
