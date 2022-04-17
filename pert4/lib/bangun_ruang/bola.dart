import 'package:flutter/material.dart';
import 'dart:math';

class Bola extends StatefulWidget {
  @override
  _BolaState createState() => _BolaState();
}

class _BolaState extends State<Bola> {
  double h, hasil = 0, r = 0;

  final TextEditingController j = new TextEditingController();

  void luas() {
    setState(() {
      r = double.parse(j.text);
      h = 4 * pi * r * r;
      hasil = double.parse(h.toStringAsFixed(2));
    });
  }

  void volume() {
    setState(() {
      r = double.parse(j.text);
      h = 4 / 3 * pi * r * r * r;
      hasil = double.parse(h.toStringAsFixed(2));
    });
  }

  void hapus() {
    setState(() {
      j.text = "";
      hasil = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Bola"),
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new Text("Lingkaran",
                      style: new TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new Image.asset("assets/images/bangun_ruang/bola.jpg"),
                  new Padding(padding: new EdgeInsets.only(top: 20.0)),
                  new Padding(
                    padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: new Text("1. Pengertian Bola",
                        style: new TextStyle(fontSize: 23.0)),
                  ),
                  new Text(
                      "Bola adalah bangun ruang sisi lengkung yang dibatasi oleh satu bidang lengkung. Bola didapatkan dari bangun setengah lingkaran yang diputar satu putaran penuh atau 360 derajat pada garis tengahnya.",
                      textAlign: TextAlign.justify,
                      style: new TextStyle(fontSize: 18.0)),
                  new Padding(
                    padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: new Text("2. Rumus Bola",
                        style: new TextStyle(fontSize: 23.0)),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: new Text(
                      "1. Volume : 4/3 x π x r³ \n2. Luas Permukaan : 4 x π x r²",
                      textAlign: TextAlign.left,
                      style: new TextStyle(fontSize: 20.0),
                    ),
                  ),
                  new TextFormField(
                    controller: j,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        hintText: "Masukan Jari-jari",
                        labelText: "Jari-jari",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new Row(
                    children: <Widget>[
                      new MaterialButton(
                        onPressed: volume,
                        color: Colors.blue,
                        child: new Text("Volume"),
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(right: 5.0),
                      ),
                      new MaterialButton(
                        onPressed: luas,
                        color: Colors.blue,
                        child: new Text("Luas Permukaan"),
                      ),
                    ],
                  ),
                  new MaterialButton(
                      child: new Text("Hapus"),
                      onPressed: hapus,
                      color: Colors.red),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new Text("hasil : $hasil",
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ));
  }
}
