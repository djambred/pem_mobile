import 'package:flutter/material.dart';

class Rumah extends StatefulWidget {
  @override
  _RumahState createState() => _RumahState();
}

class _RumahState extends State<Rumah> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Daftar Alat"),
        ),
        drawer: new Drawer(
            child: new ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Text("Silahkan Pilih Rumus Dibawah ini :",
                  style: new TextStyle(fontSize: 20.0)),
            ),
            /*ListTile(
              title: new Text("Kalkulator BMI"),
              onTap: () {
                Navigator.pushNamed(context, "/bmi");
              },
            ),*/
            ListTile(
              title: new Text("About"),
              onTap: () {
                Navigator.pushNamed(context, "/about");
              },
            ),
            ListTile(
              title: new Text("Bangun Datar"),
              onTap: () {
                Navigator.pushNamed(context, "/bangunDatar");
              },
            ),
            ListTile(
              title: new Text("Bangun Ruang"),
              onTap: () {
                Navigator.pushNamed(context, "/bangunRuang");
              },
            )
          ],
        )),
        body: new ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(30.0),
              child: new Image.asset(
                "assets/images/gambar1.png",
                width: 200.0,
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 5.0, bottom: 15.0),
              child: new Text("Rumusku",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.bold)),
            ),
            new Text(
                "Silahkan Pilih Icon Daftar Alat untuk memilih Rumus Rumus yang tersedia",
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 20.0)),
          ],
        ));
  }
}
