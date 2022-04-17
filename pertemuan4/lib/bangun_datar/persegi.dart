import 'package:flutter/material.dart';

class Persegi extends StatefulWidget {
  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  var sisi = 0, hasil = 0;

  final TextEditingController s = new TextEditingController();

  void luas() {
    setState(() {
      sisi = int.parse(s.text);
      hasil = sisi * sisi;
    });
  }

  void keliling() {
    setState(() {
      sisi = int.parse(s.text);
      hasil = 4 * sisi;
    });
  }

  void hapus() {
    setState(() {
      s.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Persegi"),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(30.0),
            child: new Column(
              children: <Widget>[
                new Text("Persegi",
                    style: new TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold)),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Image.asset("assets/images/bangun_datar/persegi.png"),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: new Text("1. Pengertian Persegi",
                      style: new TextStyle(fontSize: 23.0)),
                ),
                new Text(
                    "Persegi adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut siku-siku",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 18.0)),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: new Text("2. Rumus Persegi",
                      style: new TextStyle(fontSize: 23.0)),
                ),
                new Text("a. Keliling : 4 X S \nb. Luas : S X S (s2)",
                    style: new TextStyle(fontSize: 18.0)),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
                  child: new Text("Keterangan :  \nS = Sisi",
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                new TextField(
                  controller: s,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      hintText: "Masukan sisi",
                      labelText: "Sisi",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("Keliling"),
                      color: Colors.blue,
                      onPressed: keliling,
                    ),
                    new Padding(padding: new EdgeInsets.only(right: 10.0)),
                    new MaterialButton(
                      child: new Text("Luas"),
                      color: Colors.blue,
                      onPressed: luas,
                    ),
                    new Padding(padding: new EdgeInsets.only(right: 10.0)),
                    new MaterialButton(
                      child: new Text("Hapus"),
                      color: Colors.red,
                      onPressed: hapus,
                    )
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Text(
                  "Hasil : $hasil",
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
