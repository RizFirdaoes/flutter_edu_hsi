import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});
  static const nameRoute = "/beranda";

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        width: 400,
        child: Image(
            fit: BoxFit.cover, image: AssetImage("assets/images/image1.jpg"))),
    Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      width: 400,
      child: Image(
          fit: BoxFit.cover, image: AssetImage("assets/images/image2.jpg")),
    ),
    Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        width: 400,
        child: Image(
            fit: BoxFit.cover, image: AssetImage("assets/images/image3.jpg"))),
  ];

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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Assalamualaikum,",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0Xff707070)),
                ),
                Text(
                  "RIZKY FIRDAUS",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                Text(
                  "ARN192-18162",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0Xff707070)),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Column(children: [
            CarouselSlider(
              items: myData,
              carouselController: _controller,
              options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  viewportFraction: 0.7,
                  enlargeCenterPage: true,
                  aspectRatio: 4 / 3,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: myData.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Color(0xFF273A71))
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ]),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Info Pendaftaran",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 1.5,
                  offset: Offset(0, 0),
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Color(0xFFEAF0F7)),
                  child: Row(children: [
                    Icon(Icons.info),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pendaftaran Program Hifzhul Mutun\n Angkatan Ke-03',
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF4966E9)),
                    )
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Bismillah\n Pendaftaran Hifzhul Mutun HSI AbdullahRoy Angkatan Ke-03 telah dibuka",
                  maxLines: 3,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 50),
                        backgroundColor: Color(0xFF4966E9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Evaluasi",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 1.5,
                  offset: Offset(0, 0),
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Color(0xFFEAF0F7)),
                      child: Text(
                        'Majalah HSI',
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xFF273A71),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Aktif",
                      style: TextStyle(
                          color: Color(0xff2DBF78),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Kuis Majalah HSI Edisi 58",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "MAJALAH 1444H",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Color(0xFFEAF0F7)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/list.png",
                            color: Color(0xFF273A71),
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '10 Soal',
                            style: TextStyle(
                                color: Color(0xFF273A71),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Color(0xFFEAF0F7)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/stop-watch.png",
                            width: 25,
                            color: Color(0xFF273A71),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Rabu, 21 Feb 2024 - 12:00',
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xFF273A71),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 50),
                        backgroundColor: Color(0xff2DBF78),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      "Kerjakan",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
