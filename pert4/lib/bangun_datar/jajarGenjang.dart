import 'package:flutter/material.dart';

class JajarGenjang extends StatefulWidget {
  @override
  _JajarGenjangState createState() => _JajarGenjangState();
}

class _JajarGenjangState extends State<JajarGenjang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Jajar Genjang"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new ListView(
          children: <Widget>[new Pengenalan(), new Keliling(), new Luas()],
        ),
      ),
    );
  }
}

class Pengenalan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text("Jajar Genjang",
            style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Image.asset(
            "assets/images/bangun_datar/jajargenjang.jpg",
            width: 200.0,
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("1. Pengertian jajar Genjang",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "Jajaran Genjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang rusuk yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki dua pasang sudut bukan siku-siku yang masing-masing sama besar dengan sudut di hadapannya.",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("2. Rumus jajar Genjang",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text("a. Keliling : 2 X (P X L) \nb. Luas : alas X tinggi",
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

class Keliling extends StatefulWidget {
  @override
  _KelilingState createState() => _KelilingState();
}

class _KelilingState extends State<Keliling> {
  var panjang = 0, lebar = 0, hasil = 0;

  final TextEditingController p = new TextEditingController();
  final TextEditingController l = new TextEditingController();

  void keliling() {
    setState(() {
      panjang = int.parse(p.text);
      lebar = int.parse(l.text);
      hasil = 2 * (panjang + lebar);
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
    return Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.only(bottom: 20.0),
          child: new Text(
            "1. Mencari Keliling",
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 20.0),
          ),
        ),
        new TextField(
          keyboardType: TextInputType.number,
          controller: p,
          decoration: new InputDecoration(
              hintText: "Masukan Panjang",
              labelText: "Panjang",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new TextField(
            controller: l,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Tinggi",
                labelText: "Tinggi",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: keliling,
              child: new Text("Hitung Keliling"),
              color: Colors.blue,
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
        new Text("Hasil : $hasil", style: new TextStyle(fontSize: 20.0))
      ],
    );
  }
}

class Luas extends StatefulWidget {
  @override
  _LuasState createState() => _LuasState();
}

class _LuasState extends State<Luas> {
  var alas = 0, tinggi = 0, hasil = 0;

  final TextEditingController a = new TextEditingController();
  final TextEditingController t = new TextEditingController();

  void luas() {
    setState(() {
      alas = int.parse(a.text);
      tinggi = int.parse(t.text);
      hasil = alas * tinggi;
    });
  }

  void hapus() {
    setState(() {
      a.text = "";
      t.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.only(top: 20.0),
          child: new Text(
            "2. Mencari Luas",
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 20.0),
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new TextField(
            controller: a,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Alas",
                labelText: "Alas",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new TextField(
          controller: t,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Tinggi",
              labelText: "Tinggi",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: luas,
              child: new Text("Hitung Luas"),
              color: Colors.blue,
            ),
            new Padding(
                padding: new EdgeInsets.only(left: 10.0),
                child: new RaisedButton(
                  onPressed: hapus,
                  child: new Text("Hapus!"),
                  color: Colors.red,
                ))
          ],
        ),
        new Text("Hasil : $hasil", style: new TextStyle(fontSize: 20.0))
      ],
    );
  }
}
