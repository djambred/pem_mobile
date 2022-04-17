import 'package:flutter/material.dart';
import 'dart:math';

class Kerucut extends StatefulWidget {
  @override
  _KerucutState createState() => _KerucutState();
}

class _KerucutState extends State<Kerucut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Kerucut")),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new ListView(
          children: <Widget>[new Pengenalan(), new Rumus()],
        ),
      ),
    );
  }
}

class Pengenalan extends StatefulWidget {
  @override
  _PengenalanState createState() => _PengenalanState();
}

class _PengenalanState extends State<Pengenalan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text("Kerucut",
            style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0),
          child: new Image.asset("assets/images/bangun_ruang/kerucut.jpg", width: 200.0),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("1. Pengertian Kerucut",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "Kerucut adalah sebuah bangun ruang yang mempunyai alas berbentuk lingkaran dan dengan selimut yang berbentuk irisan dari lingkaran.",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("2. Rumus Kerucut",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "a. Volume Kerucut = 1/3 x π r² x t \nb. Luas permukaan = π x r ( s + r )",
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
          child: new Text(
              "Keterangan :  \nr = Jari-jari \nt = Tinggi kerucut tersebut \ns = Garis pelukis",
              style:
                  new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}

class Rumus extends StatefulWidget {
  @override
  _RumusState createState() => _RumusState();
}

class _RumusState extends State<Rumus> {
  var r = 0, t = 0, s = 0;
  double h, hasil = 0;

  final TextEditingController jari = new TextEditingController();
  final TextEditingController tinggi = new TextEditingController();
  final TextEditingController ss = new TextEditingController();

  void volume() {
    setState(() {
      r = int.parse(jari.text);
      t = int.parse(tinggi.text);
      h = 1 / 3 * pi * r * r;
      hasil = double.parse(h.toStringAsFixed(1));
    });
  }

  void luas() {
    setState(() {
      r = int.parse(jari.text);
      t = int.parse(tinggi.text);
      s = int.parse(ss.text);
      h = pi * r * (s + r);
      hasil = double.parse(h.toStringAsFixed(1));
    });
  }

  void hapus() {
    setState(() {
      jari.text = '';
      tinggi.text = '';
      ss.text = '';
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new TextField(
          controller: jari,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Jari-Jari",
              labelText: "jari-jari",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new TextField(
            controller: tinggi,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Tinggi",
                labelText: "Tinggi",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(bottom: 15.0),
          child: new TextField(
            controller: ss,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Nilai s untuk Luas Permukaan",
                labelText: "Nilai s",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: volume,
              child: new Text("Volume"),
              color: Colors.blue,
            ),
            new Padding(
              padding: new EdgeInsets.only(left: 10.0),
              child: new RaisedButton(
                onPressed: luas,
                child: new Text("Luas"),
                color: Colors.blue,
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(left: 10.0),
              child: new RaisedButton(
                onPressed: hapus,
                child: new Text("Hapus"),
                color: Colors.red,
              ),
            )
          ],
        ),
        new Text(
          "Hasil : $hasil",
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
