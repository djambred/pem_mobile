import 'package:flutter/material.dart';

class BelahKetupat extends StatefulWidget {
  @override
  _BelahKetupatState createState() => _BelahKetupatState();
}

class _BelahKetupatState extends State<BelahKetupat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text("Belah Ketupat")),
        body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new ListView(
            children: <Widget>[new Pengenalan(), new Keliling(), new Luas()],
          ),
        ));
  }
}

class Pengenalan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text(
          "Belah Ketupat",
          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Image.asset(
            "assets/images/bangun_datar/belahketupat.png",
            width: 200.0,
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("1. Pengertian Belah Ketupat",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "Belah ketupat adalah bangun datar dua dimensi yang dibentuk oleh empat rusuk yang sama panjang dan dan memiliki dua pasang sudut bukan siku-siku yang masing-masing sama besar dengan sudut di hadapannya.",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("2. Rumus Belah Ketupat",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text("a. Keliling : 4 x s \nb. Luas : ½ x d1 x d2",
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
          child: new Text("Keterangan :  \ns = Sisi \nd = Diameter",
              style:
                  new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}

class Keliling extends StatefulWidget {
  @override
  _KelilingState createState() => _KelilingState();
}

class _KelilingState extends State<Keliling> {
  var sisi = 0, hasil = 0;

  final TextEditingController s = new TextEditingController();

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
    return Column(
      children: <Widget>[
        new Text(
          "1. Mencari Keliling",
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new TextField(
            controller: s,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Nilai a",
                labelText: "Nilai a",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(bottom: 20.0),
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: keliling,
                color: Colors.blue,
                child: new Text("Hitung Keliling!"),
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 10.0),
                child: new RaisedButton(
                  onPressed: hapus,
                  child: new Text("Hapus!"),
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        new Text("Hasil : $hasil", style: new TextStyle(fontSize: 25.0))
      ],
    );
  }
}

class Luas extends StatefulWidget {
  @override
  _LuasState createState() => _LuasState();
}

class _LuasState extends State<Luas> {
  var nilaiD1 = 0, nilaiD2 = 0;
  double hasil = 0;

  final TextEditingController d1 = new TextEditingController();
  final TextEditingController d2 = new TextEditingController();

  void luas() {
    setState(() {
      nilaiD1 = int.parse(d1.text);
      nilaiD2 = int.parse(d2.text);
      hasil = 0.5 * nilaiD1 * nilaiD2;
    });
  }

  void hapus() {
    setState(() {
      d1.text = "";
      d2.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Text(
            "2. Mencari Luas",
            style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
        new TextField(
          controller: d1,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan nilai d1",
              labelText: "Nilai d1",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new TextField(
            controller: d2,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan nilai d2",
                labelText: "Nilai d2",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: luas,
              color: Colors.blue,
              child: new Text("Hitung Luas"),
            ),
            new Padding(
              padding: new EdgeInsets.only(left: 20.0),
              child: new RaisedButton(
                onPressed: hapus,
                child: new Text("Hapus!"),
                color: Colors.red,
              ),
            )
          ],
        ),
        new Padding(
            padding: new EdgeInsets.only(top: 20.0),
            child: new Text("Hasil : $hasil"))
      ],
    );
  }
}
