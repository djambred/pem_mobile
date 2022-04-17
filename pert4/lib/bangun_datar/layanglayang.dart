import 'package:flutter/material.dart';

class LayangLayang extends StatefulWidget {
  @override
  _LayangLayangState createState() => _LayangLayangState();
}

class _LayangLayangState extends State<LayangLayang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Layang Layang"),
      ),
      body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new ListView(
            children: <Widget>[
              new Pengenalan(),
              new Keliling(),
              new Luas(),
            ],
          )),
    );
  }
}

class Pengenalan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text(
          "Layang-Layang",
          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Image.asset(
            "assets/images/bangun_datar/layanglayang.png",
            width: 200.0,
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("1. Pengertian Layang-Layang",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "Layang-layang adalah bangun geometri berbentuk segiempat yang terbentuk dari dua segitiga sama kaki yang alasnya berhimpitan.",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("2. Rumus Layang-Layang",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text("a. Keliling : (2 x a) + (2 x b) \nb. Luas : ½ x d1 x d2",
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
          child: new Text("Keterangan :  \nd = Diameter",
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
  var nilaiA = 0, nilaiB = 0, hasil = 0;

  final TextEditingController a = new TextEditingController();
  final TextEditingController b = new TextEditingController();

  void keliling() {
    setState(() {
      nilaiA = int.parse(a.text);
      nilaiB = int.parse(b.text);
      hasil = 2 * (nilaiA + nilaiB);
    });
  }

  void hapus() {
    setState(() {
      a.text = "";
      b.text = "";
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
            controller: a,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Nilai a",
                labelText: "Nilai a",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new TextField(
          controller: b,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Nilai b",
              labelText: "Nilai b",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: keliling,
                color: Colors.blue,
                child: new Text("Hitung Keliling!"),
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
