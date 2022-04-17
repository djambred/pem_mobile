import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Persegi Panjang"),
        ),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new ListView(
              children: <Widget>[
                new Pengenalan(),
                new LuasKeliling(),
                new PanjangLebar()
              ],
            )));
  }
}

class Pengenalan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text("Persegi Panjang",
            style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Image.asset('assets/images/bangun_datar/persegi_panjang.png',
              width: 200.0),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("1. Pengertian Persegi Panjang",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "Persegi panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang rusuk yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut siku-siku.",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("2. Rumus Persegi Panjang",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text("a. Keliling : 2 X (P X L) \nb. Luas : p x l",
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
          child: new Text("Keterangan :  \np = Panjang \nl = Lebar",
              style:
                  new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}

class LuasKeliling extends StatefulWidget {
  @override
  _LuasKelilingState createState() => _LuasKelilingState();
}

class _LuasKelilingState extends State<LuasKeliling> {
  var panjang = 0, lebar = 0, hasil = 0;

  final TextEditingController p = new TextEditingController();
  final TextEditingController l = new TextEditingController();

  void luas() {
    setState(() {
      panjang = int.parse(p.text);
      lebar = int.parse(l.text);
      hasil = panjang * lebar;
    });
  }

  void keliling() {
    setState(() {
      panjang = int.parse(p.text);
      lebar = int.parse(l.text);
      hasil = (2 * panjang) + (2 * lebar);
    });
  }

  void hapus() {
    setState(() {
      p.text = "";
      l.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Padding(
            padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Masukan Panjang",
                  labelText: "Panjang",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
              controller: p,
            )),
        new TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              hintText: "Masukan Lebar",
              labelText: "Lebar",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
          controller: l,
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Row(
            children: <Widget>[
              new MaterialButton(
                child: new Text("Luas"),
                color: Colors.blue,
                onPressed: luas,
              ),
              new Padding(padding: new EdgeInsets.only(right: 10.0)),
              new MaterialButton(
                child: new Text("Keliling"),
                color: Colors.blue,
                onPressed: keliling,
              ),
              new Padding(padding: new EdgeInsets.only(right: 10.0)),
              new MaterialButton(
                child: new Text("Hapus"),
                color: Colors.red,
                onPressed: hapus,
              ),
            ],
          ),
        ),
        new Text(
          "Hasil : $hasil",
          style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class PanjangLebar extends StatefulWidget {
  @override
  _PanjangLebarState createState() => _PanjangLebarState();
}

class _PanjangLebarState extends State<PanjangLebar> {
  var panLeb = 0, luas = 0;
  double hasil = 0;

  final TextEditingController pl = new TextEditingController();
  final TextEditingController ls = new TextEditingController();

  void hitung() {
    setState(() {
      panLeb = int.parse(pl.text);
      luas = int.parse(ls.text);
      hasil = luas / panLeb;
    });
  }

  void hapus() {
    setState(() {
      pl.text = "";
      ls.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new Padding(
        padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: new Text(
          "1. Mencari Panjang atau Lebar",
          textAlign: TextAlign.left,
          style: new TextStyle(fontSize: 20.0),
        ),
      ),
      new TextField(
        controller: pl,
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
            hintText: "Masukan Panjang atau Lebar",
            labelText: "Panjang atau lebar",
            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0))),
      ),
      new Padding(
        padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: new TextField(
          keyboardType: TextInputType.number,
          controller: ls,
          decoration: new InputDecoration(
              hintText: "Masukan Luas",
              labelText: "Luas",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
      ),
      new Row(
        children: <Widget>[
          new RaisedButton(
            child: new Text("Hitung"),
            onPressed: hitung,
            color: Colors.blue,
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
      new Padding(
          padding: new EdgeInsets.only(top: 20.0),
          child:
              new Text("Hasil : $hasil", style: new TextStyle(fontSize: 20.0))),
    ]);
  }
}
