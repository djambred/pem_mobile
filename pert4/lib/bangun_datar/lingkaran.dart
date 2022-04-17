import 'package:flutter/material.dart';
import 'dart:math';

class Lingkaran extends StatefulWidget {
  @override
  _LingkaranState createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  double h, hasil = 0, r = 0;

  final TextEditingController j = new TextEditingController();

  void luas() {
    setState(() {
      r = double.parse(j.text);
      h = pi * r * r;
      hasil = double.parse(h.toStringAsFixed(2));
    });
  }

  void keliling() {
    setState(() {
      r = double.parse(j.text);
      h = 2 * pi * r;
      hasil = double.parse(h.toStringAsFixed(2));
    });
  }

  void diameter() {
    setState(() {
      r = double.parse(j.text);
      hasil = 2 * r;
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
          title: new Text("Lingkaran"),
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(30.0),
              child: new Column(
                children: <Widget>[
                  new Text("Lingkaran",
                      style: new TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new Image.asset("assets/images/bangun_datar/lingkaran.png"),
                  new Padding(padding: new EdgeInsets.only(top: 20.0)),
                  new Padding(
                    padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: new Text("1. Pengertian Lingkaran",
                        style: new TextStyle(fontSize: 23.0)),
                  ),
                  new Text(
                      "Lingkaran yaitu bangun datar yang terbentuk dari himpunan semua titik persekitaran yang mengelilingi suatu titik asal dengan jarak yang sama. jarak tersebut biasanya dinamakan r, atau radius, atau jari-jari. Sifat lingkaran yaitu memiliki simetri lipat dan simetri putar yang tak terhingga jumlahnya.",
                      textAlign: TextAlign.justify,
                      style: new TextStyle(fontSize: 18.0)),
                  new Padding(
                    padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: new Text("2. Rumus Lingkaran",
                        style: new TextStyle(fontSize: 23.0)),
                  ),
                  new Text("a. 1. Keliling : 2 x π x r \nb. Luas : π x r²",
                      style: new TextStyle(fontSize: 18.0)),
                  new Padding(
                    padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
                    child: new Text("Keterangan :  \nr = jari jari",
                        style: new TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
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
                        onPressed: luas,
                        color: Colors.blue,
                        child: new Text("Luas"),
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(right: 5.0),
                      ),
                      new MaterialButton(
                        onPressed: keliling,
                        color: Colors.blue,
                        child: new Text("Keliling"),
                      ),
                      new Padding(padding: new EdgeInsets.only(right: 5.0)),
                      new MaterialButton(
                          onPressed: diameter,
                          color: Colors.blue,
                          child: new Text("Diameter")),
                      new Padding(padding: new EdgeInsets.only(right: 5.0)),
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
