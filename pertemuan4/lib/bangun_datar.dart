import 'package:flutter/material.dart';

class BangunDatar extends StatefulWidget {
  @override
  _BangunDatarState createState() => _BangunDatarState();
}

class _BangunDatarState extends State<BangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Bangun Datar"),
          backgroundColor: Colors.yellow[600],
        ),
        body: new ListView(
          children: <Widget>[
            new ListBd(
              gambar: "assets/images/bangun_datar/persegi.png",
              judul: "Persegi",
              alamat: "/persegi",
            ),
            new ListBd(
              gambar: "assets/images/bangun_datar/persegi_panjang.png",
              judul: "Pesegi Panjang",
              alamat: "/persegiPanjang",
            ),
            new ListBd(
              gambar: "assets/images/bangun_datar/segitiga.png",
              judul: "Segitiga",
              alamat: "/segitiga",
            ),
            new ListBd(
              gambar: "assets/images/bangun_datar/jajargenjang.jpg",
              judul: "Jajar Genjang",
              alamat: '/jajargenjang',
            ),
            new ListBd(
              gambar: "assets/images/bangun_datar/trapesium.png",
              judul: "Trapesium",
              alamat: "/trapesium",
            ),
            new ListBd(
              gambar: "assets/images/bangun_datar/layanglayang.png",
              judul: "Layang-Layang",
              alamat: "/layanglayang",
            ),
            new ListBd(
              gambar: "assets/images/bangun_datar/belahketupat.png",
              judul: "Belah Ketupat",
              alamat: "/belahketupat",
            ),
            new ListBd(
              gambar: "assets/images/bangun_datar/lingkaran.png",
              judul: "Lingkaran",
              alamat: "/lingkaran",
            ),
          ],
        ));
  }
}

class ListBd extends StatelessWidget {
  ListBd({this.gambar, this.judul, this.alamat});

  final String gambar;
  final String judul;
  final String alamat;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: new EdgeInsets.all(40.0),
        child: new Column(
          children: <Widget>[
            new ListTile(
              leading: new Image.asset(gambar, width: 100.0),
              title: new Text(
                judul,
                style:
                    new TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, alamat);
              },
            )
          ],
        ));
  }
}
