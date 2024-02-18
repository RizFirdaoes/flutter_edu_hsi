import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static const nameRoute = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            // color: Colors.amber,
            child: Text(
              "v.2401-2001",
              style: TextStyle(
                  color: Color(0Xff707070), fontFamily: "PlusJakartaSans"),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          //nama profile
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logo-hsi.png",
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rizky Firdaus",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("ARN192-18162",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0Xff707070))),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/revision.png",
                              width: 15,
                              color: Color(0xFF273A71),
                            ),
                            Text(
                              "Ubah",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ],
                ),
                //garis
                const Divider(
                  color: Colors.grey,
                  height: 25,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 5,
                ),
                //whatsapp

                Row(
                  children: [
                    Image.asset(
                      "assets/images/whatsapp.png",
                      width: 22,
                      color: Color(0xFF273A71),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nomor Whatsapp",
                          style: TextStyle(
                              color: Color(0Xff707070),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "62-895324206455",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                //alamat
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/home.png",
                      width: 22,
                      color: Color(0xFF273A71),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alamat",
                          style: TextStyle(
                              color: Color(0Xff707070),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "Cikarang, Bekasi, Kelurahan Serang,\n Kecamatan Cikarang Selatan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                //kabupaten/kota
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/location.png",
                      width: 22,
                      color: Color(0xFF273A71),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kabupaten/Kota, Provinsi, Kode Pos",
                          style: TextStyle(
                              color: Color(0Xff707070),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "KAB. BEKASI, JAWA BARAT, 17532",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                //status pernikahan
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/ring.png",
                      width: 22,
                      color: Color(0xFF273A71),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Status pernikahan / Jumlah Anak",
                          style: TextStyle(
                              color: Color(0Xff707070),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "Belum Menikah / 0 ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/headphone.png",
                      width: 22,
                      color: Color(0xFF273A71),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("List Admin",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "Wahyu Suryono"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff707070)),
                        "(ARN182-36227)")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "Silsilah Ilmiyyah Pembahasab Kitab Fadhlul Islam Bagian Ketiga"),
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "Grup:ARN192-07"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "Program Reguler"),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff77C897),
                            fixedSize: Size(120, 25),
                            padding: EdgeInsets.symmetric(horizontal: 10)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Hubungi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              "assets/images/whatsapp.png",
                              width: 20,
                              color: Colors.white,
                            )
                          ],
                        ))
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  height: 25,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 5,
                ),
                Row(
                  children: [
                    Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "Anasry Zakaria"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff707070)),
                        "(ARN172-20029)")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "Silsilah Ilmiyyah Pembahasab Kitab Fadhlul Islam Bagian Ketiga"),
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "Grup:ARN192-07"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "Program Reguler"),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff77C897),
                            fixedSize: Size(120, 25),
                            padding: EdgeInsets.symmetric(horizontal: 10)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Hubungi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              "assets/images/whatsapp.png",
                              width: 20,
                              color: Colors.white,
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/information.png",
                      width: 20,
                      color: Color(0xFF273A71),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Info Lainya",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/unlock.png",
                      width: 20,
                      color: Color(0xFF273A71),
                    ),
                    Text(
                      "Ganti Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  height: 25,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/bantuan.png",
                      width: 20,
                      color: Color(0xFF273A71),
                    ),
                    Text(
                      "Bantuan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  height: 25,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/insurance.png",
                      width: 20,
                      color: Color(0xFF273A71),
                    ),
                    Text(
                      "Kebijakan Privasi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  height: 25,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 5,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.red),
                        fixedSize: Size(MediaQuery.of(context).size.width, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      "Keluar",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
