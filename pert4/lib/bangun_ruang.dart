import 'package:flutter/material.dart';

class BangunRuang extends StatefulWidget {
  @override
  _BangunRuangState createState() => _BangunRuangState();
}

class _BangunRuangState extends State<BangunRuang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Bangun Ruang"),
          backgroundColor: Colors.green,
        ),
        body: new ListView(
          children: <Widget>[
            new ListBr(
              gambar: "assets/images/bangun_ruang/kubus.jpg",
              judul: "Kubus",
              alamat: '/kubus',
            ),
            new ListBr(
                gambar: "assets/images/bangun_ruang/balok.jpg",
                judul: "Balok",
                alamat: '/balok'),
            new ListBr(
              gambar: "assets/images/bangun_ruang/limas.jpg",
              judul: "Limas",
              alamat: '/limas',
            ),
            new ListBr(
              gambar: "assets/images/bangun_ruang/prisma.png",
              judul: "Prisma",
              alamat: '/prisma',
            ),
            new ListBr(
              gambar: "assets/images/bangun_ruang/tabung.jpg",
              judul: "Tabung",
              alamat: '/tabung',
            ),
            new ListBr(
              gambar: "assets/images/bangun_ruang/kerucut.jpg",
              judul: "Kerucut",
              alamat: '/kerucut',
            ),
            new ListBr(
              gambar: "assets/images/bangun_ruang/bola.jpg",
              judul: "Bola",
              alamat: '/bola',
            )
          ],
        ));
  }
}

class ListBr extends StatelessWidget {
  ListBr({this.gambar, this.judul, this.alamat});

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
